<?php 
include '../settings/config.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Configure Bank</title>
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
                <h2 class="fw-bold">Configure bank partner</h2>
            </div>

            <div class="container">
                <!-- Display alert if status and message are set -->
                <?php if (isset($status) && isset($message)): ?>
                    <div class="alert alert-<?php echo $status === 'success' ? 'success' : 'danger'; ?> alert-dismissible fade show" role="alert">
                        <?php echo htmlspecialchars($message); ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php endif; ?>

                <!-- Table Selection Form -->
                <div class="table-wrapper">
                    <div class="mb-3 text-end">
                        <a href="add-bank.php" class="btn btn-primary">+</a>
                    </div>
                    <div class="table">
                        <div class="table-header text-light">
                            <div class="header-item">ID</div>
                            <div class="header-item">Bank Name</div>
                            <div class="header-item">Created at</div>
                            <div class="header-item">Action</div>
                        </div>

                        <?php
                        $query = "SELECT id, bank_name, created_at FROM bank";
                        $result = $conn->query($query);

                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo '<div class="table-row text-light">';
                                echo '<div class="row-item">' . htmlspecialchars($row['id']) . '</div>';
                                echo '<div class="row-item">' . htmlspecialchars($row['bank_name']) . '</div>';
                                echo '<div class="row-item">' . htmlspecialchars($row['created_at']) . '</div>';
                                echo '<div class="row-item">
                                        <a href="edit-bank.php?id=' . htmlspecialchars($row['id']) . '">Edit</a>
                                        <a href="delete-bank.php?id=' . htmlspecialchars($row['id']) . '">Delete</a>
                                      </div>';
                                echo '</div>';
                            }
                        } else {
                            echo '<div class="table-row">';
                            echo '<div class="row-item" colspan="4">No records found</div>';
                            echo '</div>';
                        }
                        ?>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <script src="assets/js/script.js"></script>
</body>

</html>
