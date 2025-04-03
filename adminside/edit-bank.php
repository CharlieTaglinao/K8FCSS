<?php 
include '../settings/config.php';
session_start(); // Start the session

$bankId = $_GET['id'] ?? null;
$status = null;
$message = null;

if (!$bankId) {
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Bank ID is required.';
    header("Location: config-bank-partner");
    exit;
}

// Fetch the current bank details
$query = "SELECT bank_name FROM bank WHERE id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $bankId);
$stmt->execute();
$result = $stmt->get_result();
$bank = $result->fetch_assoc();
$stmt->close();

if (!$bank) {
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Bank not found.';
    header("Location: config-bank-partner");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $bankName = trim($_POST['bank_name']);

    if (!$bankName) {
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Bank name cannot be empty.';
    } elseif ($bankName === $bank['bank_name']) {
        $_SESSION['status'] = 'info';
        $_SESSION['message'] = 'Nothing made changes.';
    } else {
        // Update the bank name in the database
        $query = "UPDATE bank SET bank_name = ? WHERE id = ?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("si", $bankName, $bankId);

        if ($stmt->execute()) {
            $_SESSION['status'] = 'success';
            $_SESSION['message'] = 'Successfully updated a bank, ID: ' . $bankId;
        } else {
            $_SESSION['status'] = 'error';
            $_SESSION['message'] = 'Failed to update bank. Please try again.';
        }

        $stmt->close();
    }

    // Redirect to config-bank-partner.php without query parameters
    header("Location: config-bank-partner");
    exit;
}

// Retrieve status and message from session
$status = $_SESSION['status'] ?? null;
$message = $_SESSION['message'] ?? null;

// Clear session status and message after retrieval
unset($_SESSION['status'], $_SESSION['message']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Activity Logs</title>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Inter' rel='stylesheet'>
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <script src="../assets/js/bootstrap.js"></script>
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
    <div class="grid-container">
        <?php include 'required/header.php'; ?>
        <?php include 'required/sidebar.php'; ?>

        <main class="main-container">
            <div class="main-title text-center">
                <h2 class="fw-bold">Edit Bank</h2>
            </div>

            <div class="container">
                <a href="<?php echo $_SERVER['HTTP_REFERER'] ?? 'javascript:history.back()'; ?>" class="back-button">
                    <span class="material-icons-outlined">arrow_back</span> Back
                </a>
                <!-- Display alert if status and message are set -->
                <?php if ($status && $message): ?>
                    <div class="alert <?php echo $status === 'success' ? 'alert-success' : ($status === 'info' ? 'alert-info' : 'alert-primary'); ?> alert-dismissible fade show" role="alert">
                        <?php echo htmlspecialchars($message); ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php endif; ?>
                    
                <form action="edit-bank.php?id=<?php echo htmlspecialchars($bankId); ?>" method="POST" class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="bankName" class="form-label">Bank Name</label>
                        <input type="text" class="form-control" id="bankName" name="bank_name" value="<?php echo htmlspecialchars($bank['bank_name']); ?>" required>
                        <div class="invalid-feedback" id="bankNameError">
                            Bank name cannot be empty.
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Update Bank</button>
                </form>
            </div>
        </main>
    </div>
    <script src="assets/js/script.js"></script>
    <script>
        // Live validation script
        (function () {
            'use strict';
            const bankNameInput = document.getElementById('bankName');
            const bankNameError = document.getElementById('bankNameError');

            // Add input event listener for live validation
            bankNameInput.addEventListener('input', function () {
                const value = bankNameInput.value.trim();
                const regex = /^[a-zA-Z\s]+$/; // Only letters and spaces are allowed

                if (!value || !regex.test(value)) {
                    bankNameInput.classList.add('is-invalid');
                    bankNameError.style.display = 'block';
                    bankNameError.textContent = 'Only letters and spaces are allowed.';
                } else {
                    bankNameInput.classList.remove('is-invalid');
                    bankNameInput.classList.add('is-valid');
                    bankNameError.style.display = 'none';
                }
            });
        })();
    </script>
</body>

</html>
