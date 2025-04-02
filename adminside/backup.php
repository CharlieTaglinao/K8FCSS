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

                <!-- Table Selection Form -->
                <form action="processes/backup-data.php" method="POST" id="tableSelectionForm">
                    <h3 class="mb-4 text-center">Select tables to Back Up or Extract SQL</h3>
                    <div class="col-md">
                    <div class="d-flex justify-content-end mb-4">
                        <button type="button" class="btn btn-primary me-3" onclick="promptForPassword('backup')">Back Up</button>
                        <button type="button" class="btn btn-secondary" onclick="promptForPassword('extractsql')">Extract SQL</button>
                    </div>
                        <div class="charts-card shadow-sm p-4 text-center" id="selectAllCard" onclick="toggleSelectAll()">
                            <h5 class="charts-card-title">Select All</h5>
                        </div>
                    </div>
                    <div class="row">
                        <?php foreach ($tables as $table): ?>
                            <div class="col-md-4">
                                <div class="charts-card shadow-sm p-4 text-center" 
                                     onclick="toggleCardSelection(this, '<?php echo $table; ?>')">
                                    <h5 class="charts-card-title"><?php echo $table; ?></h5>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                    <input type="hidden" name="selectedTables" id="selectedTables">
                     
                </form>

            </div>
        </main>
    </div>
    <script>
    
        function promptForPassword(action) {
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
                    const form = document.getElementById('tableSelectionForm');
                    const passwordInput = document.createElement('input');
                    passwordInput.type = 'hidden';
                    passwordInput.name = 'password';
                    passwordInput.value = result.value;
                    form.appendChild(passwordInput);

                    const actionInput = document.createElement('input');
                    actionInput.type = 'hidden';
                    actionInput.name = 'action';
                    actionInput.value = action;
                    form.appendChild(actionInput);

                    form.submit();
                }
            });
        }
    </script>
    <script src="assets/js/script.js"></script>
</body>

</html>