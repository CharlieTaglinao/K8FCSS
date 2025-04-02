<?php
include '../settings/config.php'; 

$tables = [];
$result = $conn->query("SHOW TABLES");
while ($row = $result->fetch_array()) {
    $tables[] = $row[0];
}
$status = isset($_POST['status']) ? $_POST['status'] : null;
$message = isset($_POST['message']) ? $_POST['message'] : null;
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
    <style>
        .legend p {
            display: inline-block;
            margin-right: 20px;
        }

        .legend span {
            display: inline-block;
            width: 12px;
            height: 12px;
            border-radius: 50%;
            margin-right: 5px;
        }

        .charts-card {
            transition: transform 0.2s ease, box-shadow 0.2s ease, background-color 0.2s ease;
            border-radius: 8px;
            background-color: #343a40/* Default background color */
            cursor: pointer; /* Add pointer cursor for clickable cards */
        }

        .charts-card.selected {
            background-color: #28a745; /* Green background for selected state */
            color: #ffffff; /* White text for better contrast */
        }

        .charts-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            .charts-card-title {
                color: #ffffff; 
            }
        }

        .charts-card-title {
            font-weight: 600;
            color: #fff;
        }

        .charts-card.selected .charts-card-title {
            color: #ffffff; /* White text when selected */
        }

        .btn-primary, .btn-secondary {
            border-radius: 20px;
            padding: 0.5rem 1.5rem;
        }
    </style>
</head>

<body>
    <div class="grid-container">
        <?php include 'required/header.php'; ?>
        <?php include 'required/sidebar.php'; ?>

        <main class="main-container">
            <div class="main-title text-center">
                <h2 class="fw-bold">Back Up and Recovery</h2>
            </div>

            <div class="container">
                <!-- Display alert if status and message are set -->
                <?php if ($status && $message): ?>
                    <div class="alert alert-<?php echo $status === 'success' ? 'success' : 'danger'; ?> alert-dismissible fade show" role="alert">
                        <?php echo htmlspecialchars($message); ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php endif; ?>


                <!-- Recover Form -->
                <form action="processes/recover-data.php" method="POST" enctype="multipart/form-data" id="recoverForm" class="mt-5">
                    <h3 class="mb-4 text-center">Recover Database</h3>
                    <div class="mb-3">
                        <label for="sqlFile" class="form-label">Upload SQL File</label>
                        <input type="file" class="form-control" id="sqlFile" name="sqlFile" accept=".sql" required>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-danger" onclick="promptForRecoverPassword()">Recover</button>
                    </div>
                </form>
            </div>
        </main>
    </div>
    <script>
        function promptForRecoverPassword() {
            Swal.fire({
                title: 'Enter Password',
                input: 'password',
                inputLabel: 'Please enter your account password',
                inputPlaceholder: 'Enter your password',
                inputAttributes: {
                    maxlength: 255,
                    autocapitalize: 'off',
                    autocorrect: 'off'
                },
                showCancelButton: true,
                confirmButtonText: 'Submit',
                preConfirm: (password) => {
                    if (!password) {
                        Swal.showValidationMessage('Password is required');
                    }
                    return password;
                }
            }).then((result) => {
                if (result.isConfirmed) {
                    const form = document.getElementById('recoverForm');
                    const passwordInput = document.createElement('input');
                    passwordInput.type = 'hidden';
                    passwordInput.name = 'password';
                    passwordInput.value = result.value;
                    form.appendChild(passwordInput);

                    form.submit();
                }
            });
        }


    </script>
    <script src="assets/js/script.js"></script>
</body>

</html>