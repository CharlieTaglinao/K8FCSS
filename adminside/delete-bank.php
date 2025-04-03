<?php
include '../settings/config.php';
session_start(); // Start the session

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Prepare and execute the delete query
    $stmt = $conn->prepare("DELETE FROM bank WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        // Store success message in session
        $_SESSION['status'] = 'success';
        $_SESSION['message'] = 'Bank deleted successfully.';
    } else {
        // Store error message in session
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Failed to delete bank.';
    }

    $stmt->close();
} else {
    // Store invalid request message in session
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Invalid request.';
}

// Redirect to config-bank-partner.php without query parameters
header("Location: config-bank-partner");
$conn->close();
exit;
?>
