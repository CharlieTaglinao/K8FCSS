<?php
include '../../settings/config.php'; 
session_start();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['sqlFile'])) {
    $enteredPassword = isset($_POST['password']) ? $_POST['password'] : null;

    // Encrypted master password
    $hashedMasterPassword = '$2y$10$1.wtYygqLTNqNRNqhWzUwO2cqCcNQqQsGLf4hSgrxH8ELzVBed0qi'; //k8fcs20242025!@

    $isAuthenticated = false;

    $usersTableExists = false;
    try {
        $result = $conn->query("SHOW TABLES LIKE 'users'");
        $usersTableExists = $result && $result->num_rows > 0;
    } catch (mysqli_sql_exception $e) {
        $usersTableExists = false;
    }

    if ($usersTableExists) {
        $email = isset($_SESSION['email']) ? $_SESSION['email'] : null;

        if ($email) {
            try {
                $stmt = $conn->prepare("SELECT password FROM users WHERE email = ?");
                $stmt->bind_param("s", $email);
                $stmt->execute();
                $stmt->bind_result($hashedPassword);
                $stmt->fetch();
                $stmt->close();

                if ($hashedPassword && password_verify($enteredPassword, $hashedPassword)) {
                    $isAuthenticated = true;
                }
            } catch (mysqli_sql_exception $e) {
                $isAuthenticated = false;
            }
        }
    } else {
        // If the `users` table does not exist, validate the entered password against the hashed master password
        if (password_verify($enteredPassword, $hashedMasterPassword)) {
            $isAuthenticated = true;
        }
    }

    if (!$isAuthenticated) {
        echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                <input type='hidden' name='status' value='error'>
                <input type='hidden' name='message' value='Invalid password. Recovery aborted.'>
              </form>
              <script>document.getElementById('redirectForm').submit();</script>";
        exit;
    }

    $sqlFile = $_FILES['sqlFile'];

    // Check if the uploaded file is valid
    if ($sqlFile['error'] === UPLOAD_ERR_OK && pathinfo($sqlFile['name'], PATHINFO_EXTENSION) === 'sql') {
        $filePath = $sqlFile['tmp_name'];

        try {
            // Read the SQL file
            $sqlContent = file_get_contents($filePath);

            // Extract table names from the SQL file
            preg_match_all('/CREATE TABLE `([^`]+)`/', $sqlContent, $matches);
            $tablesToDrop = $matches[1];

            // Disable foreign key checks
            $conn->query("SET FOREIGN_KEY_CHECKS = 0");

            // Drop the tables before importing
            foreach ($tablesToDrop as $table) {
                $conn->query("DROP TABLE IF EXISTS `$table`");
            }

            // Execute the SQL queries
            $conn->multi_query($sqlContent);

            // Ensure all queries are executed
            while ($conn->next_result()) { /* flush multi_queries */ }

            // Re-enable foreign key checks
            $conn->query("SET FOREIGN_KEY_CHECKS = 1");

            // Redirect with success message
            echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                    <input type='hidden' name='status' value='success'>
                    <input type='hidden' name='message' value='Database recovered successfully.'>
                  </form>
                  <script>document.getElementById('redirectForm').submit();</script>";
        } catch (Exception $e) {
            // Re-enable foreign key checks in case of an error
            $conn->query("SET FOREIGN_KEY_CHECKS = 1");

            // Redirect with error message
            echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                    <input type='hidden' name='status' value='error'>
                    <input type='hidden' name='message' value='" . htmlspecialchars('Recovery failed: ' . $e->getMessage()) . "'>
                  </form>
                  <script>document.getElementById('redirectForm').submit();</script>";
        }
    } else {
        // Redirect with error message for invalid file
        echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                <input type='hidden' name='status' value='error'>
                <input type='hidden' name='message' value='Invalid file. Please upload a valid .sql file.'>
              </form>
              <script>document.getElementById('redirectForm').submit();</script>";
    }
}
?>
