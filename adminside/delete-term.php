<?php
include '../settings/config.php';
session_start(); // Start the session

if (isset($_GET['ids'])) {
    $ids = explode(',', $_GET['ids']);
    $ids = array_map('intval', $ids); // Ensure all IDs are integers

    // Fetch term values before deletion
    $placeholders = implode(',', array_fill(0, count($ids), '?'));
    $termQuery = $conn->prepare("SELECT term_value FROM terms WHERE id IN ($placeholders)");
    $termQuery->bind_param(str_repeat('i', count($ids)), ...$ids);
    $termQuery->execute();
    $result = $termQuery->get_result();
    $terms = [];
    while ($row = $result->fetch_assoc()) {
        $terms[] = $row['term_value'] . ' Months';
    }
    $termQuery->close();

    // Prepare and execute the delete query
    $stmt = $conn->prepare("DELETE FROM terms WHERE id IN ($placeholders)");
    $stmt->bind_param(str_repeat('i', count($ids)), ...$ids);

    if ($stmt->execute()) {
        // Store success message in session with deleted term values
        $_SESSION['status'] = 'success';
        $_SESSION['message'] = implode(', ', $terms) . ' successfully deleted.';
    } else {
        // Store error message in session
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Failed to delete selected term values.';
    }

    $stmt->close();
} elseif (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    // Fetch the term value before deletion
    $termQuery = $conn->prepare("SELECT term_value FROM terms WHERE id = ?");
    $termQuery->bind_param("i", $id);
    $termQuery->execute();
    $termQuery->bind_result($termvalue);
    $termQuery->fetch();
    $termQuery->close();

    // Prepare and execute the delete query
    $stmt = $conn->prepare("DELETE FROM terms WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        // Store success message in session with term value
        $_SESSION['status'] = 'success';
        $_SESSION['message'] = "$termvalue Months is successfully deleted.";
    } else {
        // Store error message in session
        $_SESSION['status'] = 'error';
        $_SESSION['message'] = 'Failed to delete term value.';
    }

    $stmt->close();
} else {
    // Store invalid request message in session
    $_SESSION['status'] = 'error';
    $_SESSION['message'] = 'Invalid request.';
}

// Redirect to config-term.php without query parameters
header("Location: config-term");
$conn->close();
exit;
?>
