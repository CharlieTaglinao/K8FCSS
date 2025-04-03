<?php 
include '../settings/config.php';
session_start(); // Start the session

$status = $_SESSION['status'] ?? null;
$message = $_SESSION['message'] ?? null;

// Clear the session variables after retrieving them
unset($_SESSION['status'], $_SESSION['message']);
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
    <style>
        .selectable-row {
            cursor: pointer;
        }
        .selectable-row.selected {
            background-color:rgb(252, 84, 98);
        }
    </style>
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
                <?php if ($status && $message): ?>
                    <div class="alert <?php echo $status === 'success' ? 'alert-success' : ($status === 'info' ? 'alert-info' : 'alert-primary'); ?> alert-dismissible fade show" role="alert">
                        <?php echo htmlspecialchars($message); ?>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                <?php endif; ?>

                <!-- Table Selection Form -->
                <div class="table-wrapper">
                    <div class="row mt-3">
                        <div class="col text-start">
                            <button id="bulk-delete-btn" class="btn btn-primary d-none">Delete Selected</button>
                            <button id="deselect-all-btn" class="btn btn-secondary d-none">Deselect All</button> <!-- Initially hidden -->
                        </div>
                        <div class="col text-end">
                            <a href="add-bank" class="btn btn-success">+ Add Bank</a>
                        </div>
                    </div>

                    <input type="hidden" id="selected-ids" name="selected_ids" value="">

                    <div class="table">
                        <div class="table-header text-light">
                            <div class="header-item">ID</div>
                            <div class="header-item">Bank Name</div>
                            <div class="header-item">Created at</div>
                            <div class="header-item">Updated at</div>
                            <div class="header-item">Action</div>
                        </div>

                        <?php
                        // Pagination logic
                        $limit = 9; // Number of records per page
                        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
                        $page = max($page, 1); // Ensure the page is at least 1
                        $offset = ($page - 1) * $limit;

                        // Count total records
                        $total_query = "SELECT COUNT(*) AS total FROM bank";
                        $total_result = $conn->query($total_query);
                        $total_row = $total_result->fetch_assoc();
                        $total_records = $total_row['total'];
                        $total_pages = ceil($total_records / $limit);

                        // Fetch paginated records sorted by the most recently added
                        $query = "SELECT * FROM bank ORDER BY id ASC LIMIT $limit OFFSET $offset";
                        $result = $conn->query($query);

                        // Display paginated records
                        if ($result->num_rows > 0) {
                            while ($row = $result->fetch_assoc()) {
                                echo '<div class="table-row text-light selectable-row" data-id="' . htmlspecialchars($row['id']) . '">';
                                echo '<div class="row-item">' . htmlspecialchars($row['id']) . '</div>';
                                echo '<div class="row-item">' . htmlspecialchars($row['bank_name']) . '</div>';
                                echo '<div class="row-item">' . date('F j, Y g:i:s A', strtotime($row['created_at'])) . '</div>';
                                echo '<div class="row-item">' . (!empty($row['updated_at']) ? date('F j, Y g:i:s A', strtotime($row['updated_at'])) : '-') . '</div>';
                                echo '<div class="row-item">
                                        <a href="edit-bank?id=' . htmlspecialchars($row['id']) . '">Edit</a>
                                      </div>';
                                echo '</div>';
                            }
                        } else {
                            echo '<div class="table-row">';
                            echo '<div class="row-item" colspan="5">No records found</div>';
                            echo '</div>';
                        }
                        ?>
                    </div>
                </div>

                <div class="pagination" id="bank-pagination">
                    <?php if ($total_pages > 1): ?>
                        <?php for ($i = 1; $i <= $total_pages; $i++): ?>
                            <a href="?page=<?php echo $i; ?>" class="pagination-link <?php echo ($i === $page) ? 'active' : ''; ?>">
                                <?php echo $i; ?>
                            </a>
                        <?php endfor; ?>
                    <?php endif; ?>
                </div>
            </div>
        </main>
    </div>
    <script src="assets/js/script.js"></script>
    <script>
        const bulkDeleteBtn = document.getElementById('bulk-delete-btn');
        const rows = document.querySelectorAll('.selectable-row');
        const selectedIdsInput = document.getElementById('selected-ids');
        const paginationLinks = document.querySelectorAll('.pagination-link');
        const selectedRows = new Set(JSON.parse(localStorage.getItem('selectedBankIds') || '[]')); // Use localStorage to persist selected IDs
        const deselectAllBtn = document.getElementById('deselect-all-btn'); // Reference to the Deselect All button

        function updateSelectedIds() {
            selectedIdsInput.value = JSON.stringify(Array.from(selectedRows));
            localStorage.setItem('selectedBankIds', selectedIdsInput.value); // Save selected IDs to localStorage
            const hasSelectedRows = selectedRows.size > 0;
            bulkDeleteBtn.classList.toggle('d-none', !hasSelectedRows); // Show/hide Delete Selected button
            deselectAllBtn.classList.toggle('d-none', !hasSelectedRows); // Show/hide Deselect All button
        }

        function toggleRowSelection(row) {
            const id = row.getAttribute('data-id');
            if (selectedRows.has(id)) {
                selectedRows.delete(id);
                row.classList.remove('selected');
            } else {
                selectedRows.add(id);
                row.classList.add('selected');
            }
            updateSelectedIds();
        }

        rows.forEach(row => {
            row.addEventListener('click', function () {
                toggleRowSelection(this);
            });
        });

        paginationLinks.forEach(link => {
            link.addEventListener('click', function (e) {
                e.preventDefault();
                const url = new URL(this.href);
                window.location.href = url.toString();
            });
        });

        bulkDeleteBtn.addEventListener('click', function () {
            if (selectedRows.size === 0) {
                Swal.fire('No items selected', 'Please select at least one item to delete.', 'info');
                return;
            }

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#585a5e',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.isConfirmed) {
                    // Redirect to bulk delete handler with selected IDs
                    window.location.href = `delete-bank.php?ids=${Array.from(selectedRows).join(',')}`;
                }
            });
        });

        deselectAllBtn.addEventListener('click', function () {
            selectedRows.clear(); // Clear all selected rows
            rows.forEach(row => row.classList.remove('selected')); // Remove the selected class from all rows
            updateSelectedIds(); // Update the hidden input and localStorage
        });

        document.querySelectorAll('.delete-link').forEach(link => {
            link.addEventListener('click', function (e) {
                e.preventDefault();
                const bankId = this.getAttribute('data-id');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#585a5e',
                    confirmButtonText: 'Yes'
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = `delete-bank.php?id=${bankId}`;
                    }
                });
            });
        });

        // Restore selected rows on page load
        rows.forEach(row => {
            const id = row.getAttribute('data-id');
            if (selectedRows.has(id)) {
                row.classList.add('selected');
            }
        });
        updateSelectedIds();
    </script>
</body>

</html>
