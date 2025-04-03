<?php
ob_start(); // Start output buffering
require_once('../vendor/autoload.php'); // Ensure this line is included to autoload Composer dependencies
include '../settings/authenticate.php';
checkUserRole(['Employee']);
include '../settings/config.php';
require_once('processes/send-email-payment.php'); // Ensure this line is included to load the sendApprovalEmail function


function logActivity($conn, $user_email, $action, $file_name)
{
    $stmt = $conn->prepare("INSERT INTO activity_log (user_email, action, file_name) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $user_email, $action, $file_name);
    $stmt->execute();
    $stmt->close();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['amount'])) {
    // Process the form submission
    $amount = (float) $_POST['amount']; // Store amount directly in pesos
    $description = $_POST['description'];
    $remarks = $_POST['remarks'];
    $email = $_POST['email'];
    $clientname = $_POST['clientname'];
    $appointment_id = $_POST['appointment_id'];
    $status_type = $_POST['status_type'];
    $bank_partner = $_POST['bank_partner'];
    $term = $_POST['term'] ?? null;
    $amount_finance = $_POST['amount_finance'] ?? null;
    $maturity = $_POST['maturity'] ?? null;
    $check_release = $_POST['check_release'] ?? null;

    // Fetch transaction_id from the database
    $query = "SELECT transaction_id FROM appointments WHERE id='$appointment_id'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    $transaction_id = $row['transaction_id'];

    // Update the appointment status in the database
    if ($status_type === 'Approved') {
        $new_status = 'Approved';
        $sql = "UPDATE appointments SET status = ?, approve_at = NOW(), archived = 0, bank_partner = ?, remarks = ?, amount = ?, term = ?, amount_finance = ?, maturity = ?, check_release = ?, payment_description = ? WHERE id = ?";

        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sssisisssi", $new_status, $bank_partner, $remarks, $amount, $term, $amount_finance, $maturity, $check_release, $description, $appointment_id);

        if ($stmt->execute()) {
            // Insert the new status update into the status_updates table
            $sql = "INSERT INTO status_updates (appointment_id, status, status_type) VALUES (?, ?, ?)";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("iss", $appointment_id, $new_status, $status_type);
            $stmt->execute();

            // Log activity
            logActivity($conn, $_SESSION['user_email'], 'Approved Transaction ID: ' . $transaction_id, 'N/A');

            // Fetch client email and other details from the database
            $query = "SELECT email, transaction_id, form_type FROM appointments WHERE id='$appointment_id'";
            $result = $conn->query($query);
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $client_email = $row['email'];
                $transaction_id = $row['transaction_id'];
                $form_type = $row['form_type'];

                // Generate the payment link
                $client = new \GuzzleHttp\Client();

                try {
                    $response = $client->request('POST', 'https://api.paymongo.com/v1/links', [
                        'body' => json_encode([
                            'data' => [
                                'attributes' => [
                                    'amount' => $amount * 100, // Convert to centavos for payment gateway
                                    'description' => $description,
                                    'remarks' => $remarks
                                ]
                            ]
                        ]),
                        'headers' => [
                            'accept' => 'application/json',
                            'authorization' => 'Basic ' . base64_encode('sk_test_sMcer2MgvoctE3UBoCUrgFkx'),
                            'content-type' => 'application/json',
                        ],
                    ]);

                    $responseBody = json_decode($response->getBody(), true);
                    $checkoutUrl = $responseBody['data']['attributes']['checkout_url'];

                    // Send combined email using the updated sendApprovalEmail function
                    $approvalEmailResult = sendApprovalEmail($client_email, $clientname, $form_type, $transaction_id, $checkoutUrl, $amount_finance, $term, $maturity, $check_release, $description);
                    if ($approvalEmailResult === true) {
                        header("Location: accept-payment.php");
                        exit;
                    } else {
                        echo "<p>Approval email could not be sent. Please try again later.</p>";
                        echo "<p>Error: $approvalEmailResult</p>";
                        error_log("Failed to send approval email to $client_email with subject $subject and body $body");
                    }
                } catch (\GuzzleHttp\Exception\ClientException $e) {
                    echo "<p>Error: " . htmlspecialchars($e->getResponse()->getBody()->getContents()) . "</p>";
                } catch (\Exception $e) {
                    echo "<p>Unexpected error: " . htmlspecialchars($e->getMessage()) . "</p>";
                }
            } else {
                echo "No client email found for the given appointment ID.";
            }
        } else {
            echo "Error updating status: " . $conn->error;
        }

        $stmt->close();
        $conn->close();
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment</title>
    <link rel="stylesheet" href="../assets/css/navbar.css">
    <link rel="stylesheet" href="../assets/css/footer.css">
    <link rel="stylesheet" href="../assets/css/paymentui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- script js for search -->
    <link href='https://fonts.googleapis.com/css?family=Inter' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- Bootstrap for validation -->
    <link rel="stylesheet" href="../assets/css/navbar.css"> <!-- Navbar styles -->
    <script src="assets/js/search.js" defer></script>
    <script src="../assets/js/dropdown.js" defer></script>
    <script src="../assets/js/hamburger.js" defer></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <script src="assets/js/main.js" defer></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11" defer></script>
    <style>
        /* ...existing styles... */
        .loading-spinner {
            display: none;
            position: fixed;
            z-index: 9999;
            top: 45%;
            left: 47%;
            transform: translate(-50%, -50%);
            border: 8px solid #f3f3f3;
            border-radius: 50%;
            border-top: 8px solid #3498db;
            width: 60px;
            height: 60px;
            animation: spin 2s linear infinite;
        }

        #term {
            width: 80% !important;
        }

        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        .loading-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 9998;
        }



        /* Ensure the loader is centered on mobile devices */
        @media (max-width: 768px) {
            .loading-spinner {
                width: 40px;
                height: 40px;
                border-width: 6px;
                top: 45%;
                /* Move the spinner a bit up */
                left: 44%;
                /* Move the spinner a bit to the left */
                index: 9998;
            }
    </style>
</head>

<body>

    <?php
    include 'includes/navbar.php';
    require_once('../vendor/autoload.php');
    require_once('processes/send-email-payment.php');

    require_once('../settings/config.php');

    if ($_SERVER['REQUEST_METHOD'] == 'POST' && !isset($_POST['amount'])) {
        // Display the form for additional input
        $appointment_id = $_POST['appointment_id'];
        $status_type = $_POST['status_type'];
        $email = $_POST['email'];
        $clientname = $_POST['clientname'];
        ?>
        <section class="paymentui">
            <div class="container">
                <h2>Set <?php echo htmlspecialchars($clientname); ?>'s Payment Details</h2>

                <form id="payment-form" action="payment-ui.php" method="post" class="needs-validation" novalidate>
                    <input type="hidden" name="appointment_id" value="<?php echo htmlspecialchars($appointment_id); ?>">
                    <input type="hidden" name="status_type" value="<?php echo htmlspecialchars($status_type); ?>">
                    <input type="hidden" name="email" value="<?php echo htmlspecialchars($email); ?>">
                    <input type="hidden" name="clientname" value="<?php echo htmlspecialchars($clientname); ?>">

                    <div class="mb-3">
                        <label for="amount" class="form-label">Enter Amount (in pesos): <span
                                class="text-danger">*</span></label>
                        <input type="text" id="amount" name="amount" class="form-control" placeholder="e.g., 1000" required>
                        <div class="invalid-feedback"></div>
                    </div>

                    <div class="mb-3">
                        <label for="description" class="form-label">Enter Description: <span
                                class="text-danger">*</span></label>
                        <input type="text" id="description" name="description" class="form-control"
                            value="Chattel Mortgage Fees & Comprehensive Car Insurance" required>
                        <div class="invalid-feedback"></div>
                    </div>

                    <div class="mb-3">
                        <label for="remarks" class="form-label">Enter Remarks: <span class="text-danger">*</span></label>
                        <textarea id="remarks" name="remarks" class="form-control"
                            placeholder="Input specific amount of Chattel Mortgage Fees & Comprehensive Car Insurance"
                            required></textarea>
                        <div class="invalid-feedback"></div>
                    </div>

                    <div class="mb-3">
                        <label for="bank-partner" class="form-label">Select Bank Partner: <span
                                class="text-danger">*</span></label>
                        <select id="bank-partner" name="bank_partner" class="form-select" required>
                            <option value="">Select a bank partner</option>
                            <?php
                            $bankQuery = "SELECT bank_name FROM bank";
                            $bankResult = $conn->query($bankQuery);

                            if ($bankResult->num_rows > 0) {
                                while ($bankRow = $bankResult->fetch_assoc()) {
                                    echo '<option value="' . htmlspecialchars($bankRow['bank_name']) . '">' . htmlspecialchars($bankRow['bank_name']) . '</option>';
                                }
                            } else {
                                echo '<option value="">No banks available</option>';
                            }
                            ?>
                        </select>
                        <div class="invalid-feedback"></div>
                    </div>

                    <?php if (in_array($status_type, ['brand-new', 'second-hand', 'sangla-orcr'])): ?>
                        <div class="mb-3">
                            <label for="term" class="form-label">Select Term: <span class="text-danger">*</span></label>
                            <select id="term" name="term" class="form-select" required>
                            <option value="">Select a term</option>
                                    <?php
                                    $termQuery = "SELECT term_value FROM terms";
                                    $termQuery = $conn->query($termQuery);

                                    if ($termQuery->num_rows > 0) {
                                        while ($termRow = $termQuery->fetch_assoc()) {
                                            echo '<option value="' . htmlspecialchars($termRow['term_value']) . '">' . htmlspecialchars($termRow['term_value']) . ' Months' . '</option>';
                                        }
                                    } else {
                                        echo '<option value="">No terms value available</option>';
                                    } ?>
                            </select>
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="mb-3">
                            <label for="amount-finance" class="form-label">Enter Amount Finance: <span
                                    class="text-danger">*</span></label>
                            <input type="text" id="amount-finance" name="amount_finance" class="form-control"
                                placeholder="e.g., 500000" required>
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="mb-3">
                            <label for="maturity" class="form-label">Enter Maturity: <span class="text-danger">*</span></label>
                            <input type="date" id="maturity" name="maturity" class="form-control" required>
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="mb-3">
                            <label for="check-release" class="form-label">Enter Check Release: <span
                                    class="text-danger">*</span></label>
                            <input type="date" id="check-release" name="check_release" class="form-control" required>
                            <div class="invalid-feedback"></div>
                        </div>
                    <?php endif; ?>

                    <button type="submit" class="btn btn-success">Submit</button>
                </form>
            </div>
        </section>

        <?php
    } elseif ($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['appointment_id']) && isset($_GET['form_type'])) {
        // Display the form for additional input
        $appointment_id = $_GET['appointment_id'];
        $form_type = $_GET['form_type'];

        // Fetch client details from the database
        $query = "SELECT email, clientname FROM appointments WHERE id='$appointment_id'";
        $result = $conn->query($query);
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $email = $row['email'];
            $clientname = $row['clientname'];
        } else {
            echo "No client details found for the given appointment ID.";
            exit;
        }
        ?>
        <section class="paymentui">
            <div class="container">
                <h2>Set <?php echo htmlspecialchars($clientname); ?>'s Payment Details</h2>
                <form id="payment-form" action="payment-ui.php" method="post" class="needs-validation" novalidate>
                    <div class="payment-ui-container">
                        <input type="hidden" name="appointment_id" value="<?php echo htmlspecialchars($appointment_id); ?>">
                        <input type="hidden" name="status_type" value="Approved">
                        <input type="hidden" name="email" value="<?php echo htmlspecialchars($email); ?>">
                        <input type="hidden" name="clientname" value="<?php echo htmlspecialchars($clientname); ?>">

                        <div class="mb-3">
                            <label for="amount" class="form-label">Enter Amount: <span class="text-danger">*</span></label>
                            <br>
                            <input type="text" id="amount" name="amount" class="form-control" placeholder="e.g., 1000"
                                required>
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="mb-3">
                            <label for="description" class="form-label">Enter Description: <span
                                    class="text-danger">*</span></label> <br>
                            <input type="text" id="description" name="description" class="form-control"
                                value="Chattel Mortgage Fees & Comprehensive Car Insurance" required>
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="mb-3">
                            <label for="bank-partner" class="form-label">Select Bank Partner: <span
                                    class="text-danger">*</span></label> <br>
                            <select id="bank-partner" name="bank_partner" class="form-select" required>
                                <option value="">Select a bank partner</option>
                                <?php
                                $bankQuery = "SELECT bank_name FROM bank";
                                $bankResult = $conn->query($bankQuery);

                                if ($bankResult->num_rows > 0) {
                                    while ($bankRow = $bankResult->fetch_assoc()) {
                                        echo '<option value="' . htmlspecialchars($bankRow['bank_name']) . '">' . htmlspecialchars($bankRow['bank_name']) . '</option>';
                                    }
                                } else {
                                    echo '<option value="">No banks available</option>';
                                }
                                ?>
                            </select>
                            <div class="invalid-feedback"></div>
                        </div>

                        <?php if (in_array($form_type, ['brand-new', 'second-hand', 'sangla-orcr'])): ?>
                            <div class="mb-3">
                                <label for="term" class="form-label">Select Term: <span class="text-danger">*</span></label>
                                <br>
                                <select id="term" name="term" class="form-select" required>
                                    <option value="">Select a term</option>
                                    <?php
                                    $termQuery = "SELECT term_value FROM terms";
                                    $termQuery = $conn->query($termQuery);

                                    if ($termQuery->num_rows > 0) {
                                        while ($termRow = $termQuery->fetch_assoc()) {
                                            echo '<option value="' . htmlspecialchars($termRow['term_value']) . '">' . htmlspecialchars($termRow['term_value']) . ' Months' . '</option>';
                                        }
                                    } else {
                                        echo '<option value="">No terms value available</option>';
                                    } ?>
                                </select>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="mb-3">
                                <label for="amount-finance" class="form-label">Enter Amount Finance: <span
                                        class="text-danger">*</span></label> <br>
                                <input type="text" id="amount-finance" name="amount_finance" class="form-control"
                                    placeholder="e.g., 500000" required>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="mb-3">
                                <label for="maturity" class="form-label">Enter Maturity: <span
                                        class="text-danger">*</span></label> <br>
                                <input type="date" id="maturity" name="maturity" class="form-control" required>
                                <div class="invalid-feedback"></div>
                            </div>

                            <div class="mb-3">
                                <label for="check-release" class="form-label">Enter Check Release: <span
                                        class="text-danger">*</span></label> <br>
                                <input type="date" id="check-release" name="check_release" class="form-control" required>
                                <div class="invalid-feedback"></div>
                            </div>
                        <?php endif; ?>
                    </div>

                    <div class="remarks-container">
                        <label for="remarks" class="form-label">Enter Remarks: <span class="text-danger">*</span></label>
                        <br>
                        <textarea id="remarks" name="remarks" class="form-control" placeholder="Enter your remarks..."
                            maxlength="300" required></textarea>
                        <small id="char-count" class="form-text">0/250 characters</small>
                        <div class="invalid-feedback"></div>

                    </div>

                    <div class="button-container">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>
        </section>

        <?php
    }
    ?>
    <div class="loading-overlay"></div>
    <div class="loading-spinner"></div>
    <script src="assets/js/payment-ui.js" defer></script>
    <script src="assets/js/payment-validation.js" defer></script>
</body>

</html>
<?php
ob_end_flush(); // End output buffering and flush the output
?>