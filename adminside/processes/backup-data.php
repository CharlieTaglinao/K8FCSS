<?php
include '../../settings/config.php'; // Include database connection

$correctPin = '123456'; // Replace with your actual PIN

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action']; // Either 'backup' or 'extractsql'
    $pin = isset($_POST['pin']) ? $_POST['pin'] : null;

    // Validate the PIN
    if ($pin !== $correctPin) {
        echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                <input type='hidden' name='status' value='error'>
                <input type='hidden' name='message' value='Invalid PIN. Operation aborted.'>
              </form>
              <script>document.getElementById('redirectForm').submit();</script>";
        exit;
    }

    $selectedTables = isset($_POST['selectedTables']) ? explode(',', $_POST['selectedTables']) : [];

    if (empty($selectedTables)) {
        echo json_encode(['status' => 'error', 'message' => 'No tables selected.']);
        exit;
    }

    $backupDir = '../../backups/';
    if (!is_dir($backupDir)) {
        mkdir($backupDir, 0777, true);
    }

    $allTablesResult = $conn->query("SHOW TABLES");
    $allTables = [];
    while ($row = $allTablesResult->fetch_array()) {
        $allTables[] = $row[0];
    }

    $timestamp = date('d-m-Y');
    if (count($selectedTables) === count($allTables)) {
        $backupFile = $backupDir . "backup-all-table-{$timestamp}.sql";
    } else {
        $tableNames = implode('-', $selectedTables);
        $backupFile = $backupDir . "{$tableNames}-{$timestamp}.sql";
    }

    try {
        $sqlDump = '';

        foreach ($selectedTables as $table) {
            // Check if the table exists
            $checkTableResult = $conn->query("SHOW TABLES LIKE '$table'");
            if ($checkTableResult->num_rows === 0) {
                // Redirect to backup-and-restore.php with an error message for incorrect table name
                header('Location: ../backup-and-restore.php?status=error&message=Incorrect+table+name:+'.urlencode($table));
                exit;
            }

            // Fetch table creation statement
            $createTableResult = $conn->query("SHOW CREATE TABLE `$table`");
            $createTableRow = $createTableResult->fetch_assoc();
            $sqlDump .= $createTableRow['Create Table'] . ";\n\n";

            // Fetch table data
            $tableDataResult = $conn->query("SELECT * FROM `$table`");
            while ($row = $tableDataResult->fetch_assoc()) {
                $columns = array_keys($row);
                $values = array_map(function ($value) use ($conn) {
                    return $value === null ? 'NULL' : "'" . $conn->real_escape_string($value) . "'";
                }, array_values($row));

                $sqlDump .= "INSERT INTO `$table` (`" . implode('`, `', $columns) . "`) VALUES (" . implode(', ', $values) . ");\n";
            }
            $sqlDump .= "\n";
        }

        if ($action === 'backup') {
            file_put_contents($backupFile, $sqlDump);
            // Redirect to backup-and-restore.php with a success message via POST
            echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                    <input type='hidden' name='status' value='success'>
                    <input type='hidden' name='message' value='Backup created successfully go to you backup folder, located at :" . htmlspecialchars($backupFile) . "'>
                  </form>
                  <script>document.getElementById('redirectForm').submit();</script>";
            exit;
        } elseif ($action === 'extractsql') {
            header('Content-Type: application/sql');
            header('Content-Disposition: attachment; filename="' . basename($backupFile) . '"');
            echo $sqlDump;
        }
    } catch (Exception $e) {
        // Redirect to backup-and-restore.php with an error message via POST
        echo "<form id='redirectForm' action='../backup-and-restore.php' method='POST'>
                <input type='hidden' name='status' value='error'>
                <input type='hidden' name='message' value='" . htmlspecialchars('An error occurred: ' . $e->getMessage()) . "'>
              </form>
              <script>document.getElementById('redirectForm').submit();</script>";
        exit;
    }
}
?>
