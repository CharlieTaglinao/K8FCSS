<?php
include '../../settings/config.php'; // Include database connection

$correctPin = '123456'; // Replace with your actual PIN

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['sqlFile'])) {
    $pin = isset($_POST['pin']) ? $_POST['pin'] : null;

    // Validate the PIN
    if ($pin !== $correctPin) {
        echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                <input type='hidden' name='status' value='error'>
                <input type='hidden' name='message' value='Invalid PIN. Recovery aborted.'>
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
