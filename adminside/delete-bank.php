<?php
include '../settings/config.php';

if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Prepare and execute the delete query
    $stmt = $conn->prepare("DELETE FROM bank WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        // Redirect with success message
        header("Location: config-bank-partner.php?status=success&message=Bank+deleted+successfully");
    } else {
        // Redirect with error message
        header("Location: config-bank-partner.php?status=error&message=Failed+to+delete+bank");
    }

    $stmt->close();
} else {
    // Redirect if no ID is provided
    header("Location: config-bank-partner.php?status=error&message=Invalid+request");
}

$conn->close();
?>
