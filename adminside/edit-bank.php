<?php 
include '../settings/config.php';

$bankId = $_GET['id'] ?? null;
$status = null;
$message = null;

if (!$bankId) {
    header("Location: manage-banks.php?status=error&message=" . urlencode("Bank ID is required."));
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
    header("Location: manage-banks.php?status=error&message=" . urlencode("Bank not found."));
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $bankName = trim($_POST['bank_name']);

    if (!$bankName) {
        $status = 'error';
        $message = 'Bank name cannot be empty.';
    } else {
        // Update the bank name in the database
        $query = "UPDATE bank SET bank_name = ? WHERE id = ?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param("si", $bankName, $bankId);

        if ($stmt->execute()) {
            $status = 'success';
            $message = 'Bank updated successfully.';
        } else {
            $status = 'error';
            $message = 'Failed to update bank. Please try again.';
        }

        $stmt->close();
    }

    // Redirect to the same page to display the alert
    header("Location: edit-bank.php?id=$bankId&status=$status&message=" . urlencode($message));
    exit;
}

// Retrieve status and message from GET parameters
$status = $_GET['status'] ?? null;
$message = $_GET['message'] ?? null;
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
                    <div class="alert alert-<?php echo $status === 'success' ? 'success' : 'danger'; ?> alert-dismissible fade show" role="alert">
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
