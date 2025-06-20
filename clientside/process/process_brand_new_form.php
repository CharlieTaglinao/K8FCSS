<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

include_once '../../settings/config.php';
include '../../settings/generate-transaction.php';
require '../../vendor/autoload.php'; // Ensure PHPMailer is autoloaded

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Create a connection to the database
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$fields = [
    //Appointment Schedule:
    'appointment_date' => $_POST['appointment_date'] ?? '',
    'appointment_time' => $_POST['appointment_time'] ?? '',

    //Applicant Information:
    'first_name' => $_POST['first_name'] ?? '',
    'middle_name' => $_POST['middle_name'] ?? '',
    'last_name' => $_POST['last_name'] ?? '',
    'email' => $_POST['email'] ?? '',
    'contact_number_1' => $_POST['contact_number_1'] ?? '',
    'contact_number_2' => $_POST['contact_number_2'] ?? '',
    'present_address' => $_POST['present_address'] ?? '',
    'dob' => $_POST['dob'] ?? '',
    'place_of_birth' => $_POST['place_of_birth'] ?? '',
    'marital_status' => $_POST['marital_status'] ?? '',
    'years_present_address' => $_POST['years_present_address'] ?? '',
    'ownership' => $_POST['ownership'] ?? '',
    'ownership_other' => $_POST['ownership_other'] ?? '',
    'previous_address' => $_POST['previous_address'] ?? '',
    'years_previous_address' => $_POST['years_previous_address'] ?? '',
    'tin_number' => $_POST['tin_number'] ?? '',
    'sss_number' => $_POST['sss_number'] ?? '',
    'dependents' => $_POST['dependents'] ?? '',

    //Applicant's Parent Information:
    'mother_maiden_first_name' => $_POST['mother_maiden_first_name'] ?? '',
    'mother_maiden_middle_name' => $_POST['mother_maiden_middle_name'] ?? '',
    'mother_maiden_last_name' => $_POST['mother_maiden_last_name'] ?? '',
    'father_first_name' => $_POST['father_first_name'] ?? '',
    'father_middle_name' => $_POST['father_middle_name'] ?? '',
    'father_last_name' => $_POST['father_last_name'] ?? '',

    //Vehicle Information:
    'year_model' => $_POST['year_model'] ?? '',
    'make' => $_POST['make'] ?? '',
    'type' => $_POST['type'] ?? '',
    'transmition_type' => $_POST['transmition_type'] ?? '',

    //Primary Borrower:
    'income_source' => $_POST['income_source'] ?? '',
    'income_source_other' => $_POST['income_source_other'] ?? '',
    'employer_name' => $_POST['employer_name'] ?? '',
    'office_address' => $_POST['office_address'] ?? '',
    'office_number' => $_POST['office_number'] ?? '',
    'company_email' => $_POST['company_email'] ?? '',
    'position' => $_POST['position'] ?? '',
    'years_service' => $_POST['years_service'] ?? '',
    'monthly_income' => $_POST['monthly_income'] ?? '',
    'credit_cards' => $_POST['credit_cards'] ?? '',
    'credit_history' => $_POST['credit_history'] ?? '',

    //Co-borrower Information
    'first_name_borrower' => $_POST['first_name_borrower'] ?? '',
    'last_name_borrower' => $_POST['last_name_borrower'] ?? '',
    'middle_name_borrower' => $_POST['middle_name_borrower'] ?? '',
    'email_address_borrower' => $_POST['email_address_borrower'] ?? '',
    'date_of_birth_borrower' => $_POST['date_of_birth_borrower'] ?? '',
    'place_birth_borrower' => $_POST['place_birth_borrower'] ?? '',
    'relationship_borrower' => $_POST['relationship_borrower'] ?? '',
    'residential_address_borrower' => $_POST['residential_address_borrower'] ?? '',
    'years_stay_borrower' => $_POST['years_stay_borrower'] ?? '',
    'contact_number_borrower' => $_POST['contact_number_borrower'] ?? '',
    'tin_number_borrower' => $_POST['tin_number_borrower'] ?? '',
    'sss_number_borrower' => $_POST['sss_number_borrower'] ?? '',

    //Co-borrower Parent's Information
    'mother_maiden_first_name_CoBorrower' => $_POST['mother_maiden_first_name_CoBorrower'] ?? '',
    'mother_maiden_last_name_CoBorrower' => $_POST['mother_maiden_last_name_CoBorrower'] ?? '',
    'mother_maiden_middle_name_CoBorrower' => $_POST['mother_maiden_middle_name_CoBorrower'] ?? '',
    'father_first_name_CoBorrower' => $_POST['father_first_name_CoBorrower'] ?? '',
    'father_last_name_CoBorrower' => $_POST['father_last_name_CoBorrower'] ?? '',
    'father_middle_name_CoBorrower' => $_POST['father_middle_name_CoBorrower'] ?? '',

    //Source of Income - Co-borrower:
    'employer_name_borrower' => $_POST['employer_name_borrower'] ?? '',
    'office_address_borrower' => $_POST['office_address_borrower'] ?? '',
    'office_number_borrower' => $_POST['office_number_borrower'] ?? '',
    'position_borrower' => $_POST['position_borrower'] ?? '',
    'years_service_borrower' => $_POST['years_service_borrower'] ?? '',
    'monthly_income_borrower' => $_POST['monthly_income_borrower'] ?? '',
    'credit_cards_borrower' => $_POST['credit_cards_borrower'] ?? '',

    //Final Details:
    'comments' => $_POST['comments'] ?? '',
];

$columns = implode(", ", array_keys($fields));
$placeholders = implode(", ", array_fill(0, count($fields), '?'));

$sql_applications = "INSERT INTO forms_brandnew_applicants ($columns, transaction_id) VALUES ($placeholders, ?)";

$stmt_app = $conn->prepare($sql_applications);

if ($stmt_app === false) {
    die("Prepare failed: " . $conn->error);
}

$values = array_map([$conn, 'real_escape_string'], array_values($fields));
$transaction_id = generateTransactionID();
$values[] = $transaction_id;

$stmt_app->bind_param(
    str_repeat('s', count($values)),
    ...$values
);

if (!$stmt_app->execute()) {
    die("Error: " . $stmt_app->error);
}

$sql_appointments = "INSERT INTO appointments (clientname, transaction_id, email, form_type, appointment_date, appointment_time) VALUES (?, ?, ?, 'brand-new', ?, ?)";

$stmt_appmt = $conn->prepare($sql_appointments);

if ($stmt_appmt === false) {
    die("Prepare failed: " . $conn->error);
}

$clientname = $fields['first_name'] . ' ' . $fields['last_name'];

// Bind parameters for appointments
$stmt_appmt->bind_param(
    'sssss',
    $clientname,                // clientname
    $transaction_id,            // transaction_id
    $fields['email'],            // email
    $fields['appointment_date'], // appointment_date
    $fields['appointment_time']  // appointment_time
);

// Execute statement for appointments
if (!$stmt_appmt->execute()) {
    die("Error: " . $stmt_appmt->error);
}

// Get the appointment_id of the newly inserted appointment
$appointment_id = $stmt_appmt->insert_id;

// Insert into status_updates table
$sql_status_updates = "INSERT INTO status_updates (appointment_id, status, status_type) VALUES (?, 'Processing', 'Processing')";

$stmt_status = $conn->prepare($sql_status_updates);

if ($stmt_status === false) {
    die("Prepare failed: " . $conn->error);
}

// Bind parameters for status updates
$stmt_status->bind_param(
    'i',
    $appointment_id // appointment_id
);

// Execute statement for status updates
if (!$stmt_status->execute()) {
    die("Error: " . $stmt_status->error);
}

// Send additional email using send-email-wait-for-accept.php
include 'send-email-wait-for-accept.php';

$_SESSION['form_success'] = true;

// Redirect to the homepage with a success parameter using POST method
echo '<form id="successForm" action="../brand-new.php" method="post">
        <input type="hidden" name="success" value="1">
      </form>
      <script type="text/javascript">
        sessionStorage.setItem("formSuccess", "true");
        document.getElementById("successForm").submit();
      </script>';

// Close connections
$stmt_app->close();
$stmt_appmt->close();
$stmt_status->close();
$conn->close();
?>