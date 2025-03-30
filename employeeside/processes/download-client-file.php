<?php
// Include necessary files for authentication and configuration
include '../../settings/authenticate.php';
checkUserRole(['Employee']);
include '../../settings/config.php';

// Get the file name, email, and transaction ID from the query parameters
$fileName = $_GET['file'] ?? '';
$email = $_GET['email'] ?? '';
$transactionId = $_GET['transaction_id'] ?? '';
$isORCR = isset($_GET['is_orcr']) && $_GET['is_orcr'] == '1';

if (!$fileName || !$email) {
    echo "Error: Missing file or email parameter.";
    exit;
}

// Use urldecode to handle already encoded email and file name from the URL
$emailDecoded = urldecode($email);
$fileNameDecoded = urldecode($fileName);

// Construct the file path based on whether it's an ORCR file or not
if ($isORCR && $transactionId) {
    $transactionIdDecoded = urldecode($transactionId);
    $baseDir = realpath("../../clientside/uploads/orcr");
    if (!$baseDir) {
        echo "Error: ORCR base directory '../../clientside/uploads/orcr' does not exist or is invalid.";
        exit;
    }
    $filePath = $baseDir . DIRECTORY_SEPARATOR . $emailDecoded . DIRECTORY_SEPARATOR . $transactionIdDecoded . DIRECTORY_SEPARATOR . $fileNameDecoded;
} else {
    $baseDir = realpath("../../uploads");
    if (!$baseDir) {
        echo "Error: Base directory '../../uploads' does not exist or is invalid.";
        exit;
    }
    $filePath = $baseDir . DIRECTORY_SEPARATOR . $emailDecoded . DIRECTORY_SEPARATOR . $fileNameDecoded;
}

// Validate the file path to ensure it exists
if (!file_exists($filePath)) {
    echo "Error: File not found or invalid path: $filePath";
    exit;
}

// Get MIME type based on file extension
$fileExtension = pathinfo($fileNameDecoded, PATHINFO_EXTENSION);
$mimeType = 'application/octet-stream'; // Default MIME type

// Map common file extensions to MIME types
$mimeTypes = [
    'jpg' => 'image/jpeg',
    'jpeg' => 'image/jpeg',
    'png' => 'image/png',
    'gif' => 'image/gif',
    'webp' => 'image/webp',
    'pdf' => 'application/pdf',
    'doc' => 'application/msword',
    'docx' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    'xls' => 'application/vnd.ms-excel',
    'xlsx' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    'txt' => 'text/plain',
];

if (array_key_exists(strtolower($fileExtension), $mimeTypes)) {
    $mimeType = $mimeTypes[strtolower($fileExtension)];
}

// Clear any output buffering to ensure headers work correctly
if (ob_get_level()) {
    ob_end_clean();
}

// Set headers to initiate the file download
header('Content-Description: File Transfer');
header('Content-Type: ' . $mimeType);
header('Content-Disposition: attachment; filename="' . basename($fileNameDecoded) . '"');
header('Expires: 0');
header('Cache-Control: must-revalidate');
header('Pragma: public');
header('Content-Length: ' . filesize($filePath));

// Read the file and output its contents
readfile($filePath);
exit;
?>