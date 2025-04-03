<?php
include '../settings/config.php';
session_start(); // Start the session

if (isset($_GET['ids'])) {
    $ids = explode(',', $_GET['ids']);
    $ids = array_map('intval', $ids); // Ensure all IDs are integers

    // Fetch bank names before deletion
    $placeholders = implode(',', array_fill(0, count($ids), '?'));
    $bankQuery = $conn->prepare("SELECT bank_name FROM bank WHERE id IN ($placeholders)");
    $bankQuery->bind_param(str_repeat('i', count($ids)), ...$ids);
    $bankQuery->execute();
    $result = $bankQuery->get_result();
    $banks = [];
    while ($row = $result->fetch_assoc()) {
        $banks[] = $row['bank_name'];
    }
    $bankQuery->close();

    // Prepare and execute the delete query
    $stmt = $conn->prepare("DELETE FROM bank WHERE id IN ($placeholders)");
    $stmt->bind_param(str_repeat('i', count($ids)), ...$ids);

    if ($stmt->execute()) {
        // Store success message in session with deleted bank names
        $_SESSION['status'] = 'success';
        $_SESSION['message'] = implode(', ', $banks) . ' successfully deleted.';
    } else {
        // Store error message in session
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Failed to delete selected banks.';
    }

    $stmt->close();
} elseif (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Fetch the bank name before deletion
    $bankQuery = $conn->prepare("SELECT bank_name FROM bank WHERE id = ?");
    $bankQuery->bind_param("i", $id);
    $bankQuery->execute();
    $bankQuery->bind_result($bankName);
    $bankQuery->fetch();
    $bankQuery->close();

    // Prepare and execute the delete query
    $stmt = $conn->prepare("DELETE FROM bank WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        // Store success message in session with bank name
        $_SESSION['status'] = 'success';
        $_SESSION['message'] = "$bankName successfully deleted.";
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
