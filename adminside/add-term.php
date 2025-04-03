<?php 
include '../settings/config.php';
session_start(); // Start the session

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $termValue = trim($_POST['term_value']);
    $status = null;
    $message = null;

    if (!$termValue) {
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'term value cannot be empty.';
    } else {
        // Check for the smallest unused ID
        $query = "SELECT MIN(t1.id + 1) AS next_id 
                  FROM terms t1 
                  LEFT JOIN terms t2 ON t1.id + 1 = t2.id 
                  WHERE t2.id IS NULL";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $nextId = $row['next_id'] ?? null;

        if ($nextId) {
            // Insert using the smallest unused ID
            $query = "INSERT INTO terms (id, term_value) VALUES (?, ?)";
            $stmt = $conn->prepare($query);
            $stmt->bind_param("is", $nextId, $termValue);
        } else {
            // Insert normally if no deleted IDs are available
            $query = "INSERT INTO terms (term_value) VALUES (?)";
            $stmt = $conn->prepare($query);
            $stmt->bind_param("s", $termValue);
        }

        if ($stmt->execute()) {
            $_SESSION['status'] = 'success';
            $_SESSION['message'] = $termValue . ' Months is successfully added.';
        } else {
            $_SESSION['status'] = 'error';
            $_SESSION['message'] = 'Failed to add bank. Please try again.';
        }

        $stmt->close();
    }

    // Redirect to config-bank-partner without query parameters
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
                <h2 class="fw-bold">Add a term value</h2>
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
                    
                <form action="add-term.php" method="POST" class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="term-value" class="form-label">Term value</label>
                        <input type="text" class="form-control" id="term-value" name="term_value" placeholder="Enter a term value in months" required>
                        <div class="invalid-feedback" id="term-value-error">
                            Bank name cannot be empty.
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Add Term</button>
                </form>
            </div>
        </main>
    </div>
    <script src="assets/js/script.js"></script>
    <script>
        // Live validation script
        (function () {
            'use strict';
            const termValueInput = document.getElementById('term-value');
            const termValueError = document.getElementById('term-value-error');

            // Add input event listener for live validation
            termValueInput.addEventListener('input', function () {
                const value = termValueInput.value.trim();
                const regex = /^[0-9]{1,5}$/; // Only numbers with a maximum of 5 digits are allowed

                if (!value || !regex.test(value)) {
                    termValueInput.classList.add('is-invalid');
                    termValueError.style.display = 'block';
                    termValueError.textContent = 'Only numbers with a maximum of 5 digits are allowed.';
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
