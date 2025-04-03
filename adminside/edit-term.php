<?php 
include '../settings/config.php';
session_start(); // Start the session

$bankId = $_GET['id'] ?? null;
$status = null;
$message = null;

if (!$bankId) {
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Bank ID is required.';
    header("Location: config-term");
    exit;
}

// Fetch the current bank details
$query = "SELECT term_value FROM terms WHERE id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $bankId);
$stmt->execute();
$result = $stmt->get_result();
$bank = $result->fetch_assoc();
$stmt->close();

if (!$bank) {
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Bank not found.';
    header("Location: config-term");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $bankName = trim($_POST['term_value']);

    if (!$bankName) {
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Term value cannot be empty.';
    } elseif ($bankName === $bank['term_value']) {
        $_SESSION['status'] = 'info';
        $_SESSION['message'] = 'Nothing made changes.';
    } else {
        // Update the bank name in the database
        $query = "UPDATE terms SET term_value = ? WHERE id = ?";
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
    header("Location: config-term");
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
    <title>Edit term value</title>
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
                <h2 class="fw-bold">Edit term</h2>
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
                    
                <form action="edit-term.php?id=<?php echo htmlspecialchars($bankId); ?>" method="POST" class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="termValue" class="form-label">Term value</label>
                        <input type="text" class="form-control" id="termValue" name="term_value" value="<?php echo htmlspecialchars($bank['term_value']); ?>" required>
                        <div class="invalid-feedback" id="termValueError">
                            Bank name cannot be empty.
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Update term</button>
                </form>
            </div>
        </main>
    </div>
    <script src="assets/js/script.js"></script>
    <script>
        // Live validation script
        (function () {
            'use strict';
            const termValueInput = document.getElementById('termValue');
            const termValueError = document.getElementById('termValueError');

            // Add input event listener for live validation
            termValueInput.addEventListener('input', function () {
            const value = termValueInput.value.trim();
            const regex = /^\d{1,5}$/; // Only numbers with a maximum of 5 digits

            if (!regex.test(value)) {
                termValueInput.classList.add('is-invalid');
                termValueError.style.display = 'block';
                termValueError.textContent = 'Only numbers with a maximum of 5 digits are
            } else {
                termValueInput.classList.remove('is-invalid');
                termValueInput.classList.add('is-valid');
                termValueError.style.display = 'none';
            }
            });
        })();
    </script>
</body>

</html>
