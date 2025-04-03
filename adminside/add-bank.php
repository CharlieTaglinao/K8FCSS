<?php 
include '../settings/config.php';
session_start(); // Start the session

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $bankName = trim($_POST['bank_name']);
    $status = null;
    $message = null;

    if (!$bankName) {
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Bank name cannot be empty.';
    } else {
        // Check for the smallest unused ID
        $query = "SELECT MIN(t1.id + 1) AS next_id 
                  FROM bank t1 
                  LEFT JOIN bank t2 ON t1.id + 1 = t2.id 
                  WHERE t2.id IS NULL";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $nextId = $row['next_id'] ?? null;

        if ($nextId) {
            // Insert using the smallest unused ID
            $query = "INSERT INTO bank (id, bank_name) VALUES (?, ?)";
            $stmt = $conn->prepare($query);
            $stmt->bind_param("is", $nextId, $bankName);
        } else {
            // Insert normally if no deleted IDs are available
            $query = "INSERT INTO bank (bank_name) VALUES (?)";
            $stmt = $conn->prepare($query);
            $stmt->bind_param("s", $bankName);
        }

        if ($stmt->execute()) {
            $_SESSION['status'] = 'success';
            $_SESSION['message'] = 'Bank added successfully.';
        } else {
            $_SESSION['status'] = 'error';
            $_SESSION['message'] = 'Failed to add bank. Please try again.';
        }

        $stmt->close();
    }

    // Redirect to config-bank-partner without query parameters
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
                <h2 class="fw-bold">Add a bank</h2>
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
                    
                <form action="add-bank.php" method="POST" class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="bankName" class="form-label">Bank Name</label>
                        <input type="text" class="form-control" id="bankName" name="bank_name" placeholder="Enter bank name" required>
                        <div class="invalid-feedback" id="bankNameError">
                            Bank name cannot be empty.
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Add Bank</button>
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
