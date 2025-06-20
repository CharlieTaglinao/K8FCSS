<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include '../settings/authenticate.php';
checkUserRole(['Client']); 
?>
<!DOCTYPE html>
<html lang="en">

<head>
<?php include '../required/headerOnLogin.php' ?>
    <title>Application Form | Sangla OR / CR</title>
    <link rel="icon" href="../assets/images/updated-logo.webp" type="image/png">
    <link rel="stylesheet" href="assets/css/style.css"> <!-- Link to your CSS file -->
    <link rel="stylesheet" href="../assets/css/loader.css"><!-- Style for loader -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs/build/css/alertify.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs/build/css/themes/default.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- JQuery for loader -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <!-- SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/alertifyjs/build/alertify.min.js"></script>
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <style>
        .error input,
        .error select,
        .error textarea {
            border: 1px solid red;
        }
        .progress-bar {
            width: 100%;
            background-color: #f3f3f3;
            border-radius: 5px;
            overflow: hidden;
            margin-top: 10px;
        }
        .progress-bar-fill {
            height: 20px;
            width: 0;
            background-color: #083414;
            text-align: center;
            line-height: 20px;
            color: white;
            transition: width 0.5s;
        }
        .required-asterisk {
            color: red;
        }
        .form-group input:valid + .required-asterisk,
        .form-group select:valid + .required-asterisk,
        .form-group textarea:valid + .required-asterisk {
            display: none;
        }

        .loading-spinner {
        display: none;
        position: fixed;
        z-index: 9999;
        top: 45%;
        left: 47%;
        transform: translate(-50%, -50%);
        border: 8px solid #f3f3f3;
        border-radius: 50%;
        border-top: 8px solid #3498db;
        width: 60px;
        height: 60px;
        animation: spin 2s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .loading-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 9998;
        }

        /* Ensure the loader is centered on mobile devices */
        @media (max-width: 768px) {
        .loading-spinner {
            width: 40px;
            height: 40px;
            border-width: 6px;
            top: 45%; /* Move the spinner a bit up */
            left: 44%; /* Move the spinner a bit to the left */
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- JQuery for loader -->
    <script src="assets/js/script.js" defer></script>
    <script src="assets/js/sangla-orcr.js" defer></script> <!-- Link to your new JavaScript file -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <!-- SweetAlert2 -->
</head>

<body>
    <!-- LOADER -->
    <div class="loader-wrapper">
        <div class="loader"></div>
    </div>
    <div class="loading-overlay"></div>
    <div class="loading-spinner"></div>
    <div class="popup-overlay"></div>
    <?php include '../required/navbarOnLogin.php'; ?>
    <div class="main-content">
        <div class="form-container">
            <h1>Application Form | Sangla OR/CR</h1>
            <div class="form-note" id="form-note-sangla">
                <span class="form-note-icon"><i class="fas fa-info-circle"></i></span>
            </div>
            <div class="popup" id="form-note-popup">
                <h1>Notes</h1>
                <div class="popup-content">
                    <div class="popup-row">
                        <i class="fas fa-info-circle info-icon"></i>
                        <p> All fields with an asterisk (<span style=color:red;>*</span>) are required to fill up.</p>
                    </div>
                    <div class="popup-row">
                        <i class="fas fa-info-circle info-icon"></i>
                        <p> If you want to change the auto-populated fields, go to your profile to edit the details.</p>
                    </div>
                </div>
                <button class="close-btn">Close</button>
            </div>
            <form id="application-form" action="process/process_sangla_orcr.php" method="POST" enctype="multipart/form-data" class="needs-validation" onsubmit="return false;">
                <input type="hidden" name="value-of-formtype" value="sangla-orcr">
             <!-- Page 1 -->
             <div class="form-page" id="page-1">
                    <div class="form-error-container">
                        <span id="form-error-message"></span>
                    </div>
                    <h2>Appointment Schedule:</h2>
                    <div class="form-inputs">
                        <div class="form-group">
                            <label for="appointment-date">Appointment Date: <span
                                    class="required-asterisk">*</span></label>
                            <input type="date" id="appointment-date" name="appointment_date" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="appointment-time">Appointment Time: <span
                                    class="required-asterisk">*</span></label>
                            <select id="appointment-time" name="appointment_time" class="form-control">
                                <!-- Time slots will be populated here -->
                            </select>
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                    <h2 id="header-title-below">Applicant Information:</h2>
                    <div class="form-inputs">
                        <div class="form-group">
                            <label for="first-name">First Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="first-name" name="first_name" placeholder="John" class="form-control"
                                value="<?php echo $_SESSION['first_name']; ?>" readonly>
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="middle-name">Middle Name: </label>
                            <input type="text" id="middle-name" name="middle_name" placeholder="A" class="form-control"
                                value="<?php echo $_SESSION['middle_name']; ?>" readonly>
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Last Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="last-name" name="last_name" placeholder="Doe" class="form-control"
                                value="<?php echo $_SESSION['last_name']; ?>" readonly>
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address: <span class="required-asterisk">*</span></label>
                            <input type="email" id="email" name="email" placeholder="johndoe@example.com"
                                class="form-control" value="<?php echo $_SESSION['email']; ?>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="contact-number-1">Contact Number: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="contact-number-1" name="contact_number_1" placeholder="09123456789"
                            class="form-control" value="<?php echo $_SESSION['phone']; ?>" readonly >
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="contact-number-2">Contact Number 2:</label>
                            <input type="text" id="contact-number-2" name="contact_number_2"
                                placeholder="09123456789" class="form-control" >
                                <div class="invalid-feedback"></div>
                        </div>
                      
                        <div class="form-group">
                            <label for="present-address">Present Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="present-address" name="present_address"
                                placeholder="123 Main St, Springfield" class="form-control" value="<?php echo $_SESSION['address']; ?>" readonly>
                                <div class="invalid-feedback"></div>
                        </div>
                        
                        <div class="form-group">
                            <label for="dob">Date of Birth: <span class="required-asterisk">*</span></label>
                            <input type="date" id="dob" name="dob" placeholder="YYYY-MM-DD" class="form-control" value="<?php echo $_SESSION['dob']; ?>" readonly>
                            <div class="invalid-feedback"></div>
                        </div>
                        
                        <div class="form-group">
                            <label for="place_of_birth">Place of Birth: <span class="required-asterisk">*</span></label>
                            <input type="text" id="place_of_birth" name="place_of_birth"
                                placeholder="General Trias Cavite" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="marital-status">Marital Status: <span class="required-asterisk">*</span></label>
                            <select id="marital-status" name="marital_status" class="form-control">
                                <option value="">--Select--</option>
                                <option value="Single">Single</option>
                                <option value="Married">Married</option>
                                <option value="Separated">Separated</option>
                                <option value="Widowed">Widowed</option>
                            </select>
                            <div class="invalid-feedback"></div>
                        </div>
                        
                        <div class="form-group">
                            <label for="years-present-address">Years at Present Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="number" id="years-present-address" name="years_present_address" placeholder="5"
                                class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="ownership">Ownership: <span class="required-asterisk">*</span></label>
                            <select id="ownership" name="ownership" class="form-control">
                                <option value="">Select...</option>
                                <option value="Owned">Owned</option>
                                <option value="Rented">Rented</option>
                                <option value="Free living with Parents">Free Living with Parents</option>
                                <option value="Others">Others</option>
                            </select>
                            <input type="text" id="ownership-other" name="ownership_other"
                                placeholder="Specify if 'Others'" class="form-control" style="display: none;">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="previous-address">Previous Address:</label>
                            <input type="text" id="previous-address" name="previous_address"
                                placeholder="456 Elm St, Springfield" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="years-previous-address">Years at Previous Address:</label>
                            <input type="number" id="years-previous-address" name="years_previous_address"
                                placeholder="3" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        
                       
                    </div>
                    <div class="form-inputs" id="secondary-form-inputs">
                        <div class="form-group">
                            <label for="tin_number">TIN Number:</label>
                            <input type="number" id="tin_number" name="tin_number" placeholder="111222333444" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="sss_number">SSS Number:</label>
                            <input type="number" id="sss_number" name="sss_number" placeholder="1122222223" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="dependents">Number of Dependents:</label>
                            <input type="number" id="dependents" name="dependents" placeholder="2" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                    <div class="form-row-button">
                        <button type="button" id="next-page-1">Next</button>
                    </div>
                </div>

            <!-- Page 2 -->
            <div class="form-page" id="page-2" style="display: none;">
                <div class="form-error-container">
                    <span id="form-error-message"></span>
                </div>
                    <h2>Applicant's Parent Information:</h2>
                    <div class="form-inputs">
                        <div class="form-group">
                            <label for="mother-maiden-first-name">Mother's Maiden First Name:</label>
                            <input type="text" id="mother-maiden-first-name" name="mother_maiden_first_name"
                                placeholder="Jane" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-middle-name">Mother's Maiden Middle Name:</label>
                            <input type="text" id="mother-maiden-middle-name" name="mother_maiden_middle_name"
                                placeholder="Santos" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-last-name">Mother's Maiden Last Name:</label>
                            <input type="text" id="mother-maiden-last-name" name="mother_maiden_last_name"
                                placeholder="Smith" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="father-first-name">Father's First Name:</label>
                            <input type="text" id="father-first-name" name="father_first_name" placeholder="Robert" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="father-middle-name">Father's Middle Name:</label>
                            <input type="text" id="father-middle-name" name="father_middle_name" placeholder="Cruz" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="father-last-name">Father's Last Name:</label>
                            <input type="text" id="father-last-name" name="father_last_name" placeholder="Doe" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                    <h2 id="header-title-below">Vehicle Information:</h2>
                    <!-- Source of Income -->
                    <div class="form-inputs">
                        <div class="form-group">
                                    <label for="year-model">Year Model: <span class="required-asterisk">*</span></label>
                                    <input type="number" id="year-model" name="year_model" placeholder="2024" min="1980"
                                        max="3000" class="form-control">
                                        <div class="invalid-feedback"></div>
                                </div>
                                <div class="form-group">
                                    <label for="transmition-type">Transmission Type: <span class="required-asterisk">*</span></label>
                                    <select id="transmition-type" name="transmition_type" class="form-control">
                                        <option value="">Select Transmission Type</option>
                                        <option value="Automatic">Automatic</option>
                                        <option value="Manual">Manual</option>
                                    </select>
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="form-group">
                                    <label for="make">Car Name: <span class="required-asterisk">*</span></label>
                                    <input type="text" id="make" name="make" placeholder="Toyota Vios 1.3E" class="form-control">
                                    <div class="invalid-feedback"></div>
                                </div>
                                <div class="form-group">
                                    <label for="type">Type of Car: <span class="required-asterisk">*</span></label>
                                    <input type="text" id="type" name="type" placeholder="Sedan" class="form-control">
                                    <div class="invalid-feedback"></div>
                                </div>
                    </div>
                    <div class="form-row-button">
                        <button type="button" id="prev-page-2">Previous</button>
                        <button type="button" id="next-page-2">Next</button>
                    </div>
                </div>

                 <!-- Page 3 -->
                 <div class="form-page" id="page-3" style="display: none;">
                    <div class="form-error-container">
                        <span id="form-error-message"></span>
                    </div>
                    <h2>Primary Borrower:</h2>
                    <!-- Source of Income -->
                    <div class="form-inputs">
                        <div class="form-group">
                            <div class="income-source-label">
                                <label for="income-source">Source of Income: <span
                                        class="required-asterisk">*</span></label>
                            </div>
                            <div class="income-source-select">
                                <select id="income-source" name="income_source" class="form-control">
                                    <option value="">Select Source of Income</option>
                                    <option value="Employed">Employed</option>
                                    <option value="Business">Business</option>
                                    <option value="Remittance">Remittance</option>
                                    <option value="Other">Other</option>
                                </select>
                                <input type="text" id="income-source-other" name="income_source_other"
                                    placeholder="Specify if 'Other'" class="form-control" style="display: none;">
                                    <div class="invalid-feedback"></div>
                            </div>
                        </div>
                        <!-- Employer/Business Details -->
                        <div class="form-group">
                            <label for="employer-name">Present Employer / Business Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="employer-name" name="employer_name" placeholder="ABC Corp" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="office-address">Office / Business Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="office-address" name="office_address"
                                placeholder="789 Maple St, Springfield" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="office-number">Office Number(s): <span
                                    class="required-asterisk">*</span></label>
                            <input type="number" id="office-number" name="office_number" placeholder="5558765"
                                class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>

                        <div class="form-group">
                            <label for="company-email">Company / Business Email Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="email" id="company-email" name="company_email"
                                placeholder="contact@abccorp.com" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="position">Position: <span class="required-asterisk">*</span></label>
                            <input type="text" id="position" name="position" placeholder="Software Engineer" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="years-service">Years of Service: <span
                                    class="required-asterisk">*</span></label>
                            <input type="number" id="years-service" name="years_service" placeholder="4" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="form-group">
                            <label for="monthly-income">Gross Monthly Income: <span
                            class="required-asterisk">*</span></label></label>
                            <input type="number" id="monthly-income" name="monthly_income" placeholder="50000" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="credit-cards">Credit Card: <span
                            class="required-asterisk">*</span></label>
                            <input type="number" id="credit-cards" name="credit_cards"
                                placeholder="1234567891011121" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="credit-history">Credit History:</label>
                            <input type="text" id="credit-history" name="credit_history" placeholder="Good" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                    <div class="form-row-button">
                            <button type="button" id="prev-page-3">Previous</button>
                            <button type="button" id="next-page-3">Next</button>
                    </div>
                </div>

                <div class="form-page" id="page-4" style="display: none;">
                    <div class="form-error-container">
                        <span id="form-error-message"></span>
                    </div>
                    <h2>Co-borrower Information:</h2>
                    <div class="form-inputs">
                        <div class="form-group">
                            <label for="first-name-borrower">First Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="first-name-borrower" name="first_name_borrower" placeholder="Ellen"
                                class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="middle-name-borrower">Middle Name: </label>
                            <input type="text" id="middle-name-borrower" name="middle_name_borrower" placeholder="Bautista"
                                class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="last-name-borrower">Last Name: <span class="required-asterisk">*</span></label>
                            <input type="text" id="last-name-borrower" name="last_name_borrower" placeholder="Joe"
                                class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="email-address-borrower">Email Address:</label>
                            <input type="email" id="email-address-borrower" name="email_address_borrower"
                                placeholder="ellen@gmail.com" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="date-of-birth-borrower">Date of Birth: <span
                                    class="required-asterisk">*</span></label>
                            <input type="date" id="date-of-birth-borrower" name="date_of_birth_borrower"
                                placeholder="YYYY-MM-DD" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="place-birth-borrower">Place of Birth:</label>
                            <input type="text" id="place-birth-borrower" name="place_birth_borrower"
                                placeholder="General Trias Cavite" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="relationship-borrower">Relationship to Borrower: <span
                            class="required-asterisk">*</span></label> 
                            <input type="text" id="relationship-borrower" name="relationship_borrower"
                                placeholder="Spouse" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="residential-address-borrower">Residential Address (If different to
                                borrower):</label>
                            <input type="text" id="residential-address-borrower" name="residential_address_borrower"
                                placeholder="Dasmariñas Cavite" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="years-stay-borrower">Years of Stay:</label>
                            <input type="number" id="years-stay-borrower" name="years_stay_borrower"
                                placeholder="20" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="contact-number-borrower">Contact Number: <span
                                    class="required-asterisk">*</span></label>
                            <input type="number" id="contact-number-borrower" name="contact_number_borrower"
                                placeholder="09123456789" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="tin_number_borrower">TIN Number:</label>
                            <input type="number" id="tin_number_borrower" name="tin_number_borrower"
                                placeholder="111222333444" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="sss_number_borrower">SSS Number:</label>
                            <input type="number" id="sss_number_borrower" name="sss_number_borrower"
                                placeholder="1122222223" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                    </div>
                    <h2 id="header-title-below">Co-borrower's Parent Information:</h2>
                    <div class="form-inputs">
                        <!-- Mother's Maiden Name -->
                        <div class="form-group">
                            <label for="mother-maiden-first-name">Mother's Maiden First Name:</label>
                            <input type="text" id="mother-maiden-first-name" name="mother_maiden_first_name_CoBorrower"
                                placeholder="Jane" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-middle-name">Mother's Maiden Middle Name:</label>
                            <input type="text" id="mother-maiden-middle-name" name="mother_maiden_middle_name_CoBorrower"
                                placeholder="Gonzales" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-last-name">Mother's Maiden Last Name:</label>
                            <input type="text" id="mother-maiden-last-name" name="mother_maiden_last_name_CoBorrower"
                                placeholder="Smith" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>

                        <!-- Father's Name -->
                        <div class="form-group">
                            <label for="father-first-name">Father's First Name:</label>
                            <input type="text" id="father-first-name" name="father_first_name_CoBorrower" placeholder="John" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="father-middle-name">Father's Middle Name:</label>
                            <input type="text" id="father-middle-name" name="father_middle_name_CoBorrower" placeholder="Rivera" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="father-last-name">Father's Last Name:</label>
                            <input type="text" id="father-last-name" name="father_last_name_CoBorrower" placeholder="Doe" class="form-control">
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>

                    <div class="form-row-button">
                        <button type="button" id="prev-page-4">Previous</button>
                        <button type="button" id="next-page-4">Next</button>
                    </div>
                </div>
                <!-- Page 5 -->
                <div class="form-page" id="page-5" style="display: none;">
                    <div class="form-error-container">
                        <span id="form-error-message"></span>
                    </div>
                    <h2>Source of Income - Co-borrower: </h2>
                    <div class="form-inputs">
                        <!-- Employer/Business Details -->
                        <div class="form-group">
                            <label for="employer-name-borrower">Employer / Business Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="employer-name-borrower" name="employer_name_borrower"
                                placeholder="Tesla" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="office-address-borrower">Office Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="office-address-borrower" name="office_address_borrower"
                                placeholder="Block 1 Ph1 General Trias" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="position-borrower">Position: <span
                            class="required-asterisk">*</span></label>
                            <input type="text" id="position-borrower" name="position_borrower"
                                placeholder="Data Analyst" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="years-service-borrower">Years of Service: <span
                            class="required-asterisk">*</span></label>
                            <input type="number" id="years-service-borrower" name="years_service_borrower"
                                placeholder="10" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="monthly-income-borrower">Gross Monthly Income:</label>
                            <input type="number" id="monthly-income-borrower" name="monthly_income_borrower"
                                placeholder="50000" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="credit-cards-borrower">Credit Card:</label>
                            <input type="number" id="credit-cards-borrower" name="credit_cards_borrower"
                                placeholder="1234567891011121" class="form-control">
                                <div class="invalid-feedback"></div>
                        </div>
                    </div>

                    
                    <div class="form-group">
                            <label for="combined-file">Upload OR/CR <span class="required-asterisk">*</span></label>
                            <div class="file-upload-wrapper">
                                <input type="file" id="combined-file" name="combined_file[]" multiple class="form-control" accept=".jpg,.jpeg,.png,.pdf,.webp,.svg">
                            </div>
                            <div class="invalid-feedback"></div>
                    </div>
                    <h2 id="header-title-below">Final Details:</h2>
                    <!-- Additional Comments -->
                    <div class="form-row">
                        <div class="form-group column">
                            <label for="comments">Additional Comments:</label>
                            <textarea id="comments" name="comments" class="form-control"
                                placeholder="I am looking forward to this opportunity." maxlength="300"></textarea>
                            <small id="char-count" class="form-text">0/250 characters</small>
                        </div>
                    </div>
                    <div class="form-row-button">
                        <button type="button" id="prev-page-4">Previous</button>
                        <button type="submit" id="submit-button">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <?php include '../required/footerOnLogin.php' ?>

    <script src="assets/js/script.js"></script> <!-- Link to your JavaScript file -->
    <script src="../assets/js/loader.js"></script>
    <script src="assets/js/sangla-orcr.js"></script> <!-- Link to your new JavaScript file -->
    <script>
    $(document).ready(function () {
        // Previous button functionality
        $('#prev-page-2, #prev-page-3, #prev-page-4').on('click', function () {
            $(this).closest('.form-page').hide().prev('.form-page').show();
        });

        // Show input for "Other" source of income
        $('#income-source').on('change', function () {
            if ($(this).val() === 'Other') {
                $('#income-source-other').show();
            } else {
                $('#income-source-other').hide();
            }
        });

        $('#income-source-other').hide(); // Initially hide the "Other" input

        // Show input for "Other" source of income for co-borrower
        $('#income-source2').on('change', function () {
            if ($(this).val() === 'Other') {
                $('#income-source-other2').show();
            } else {
                $('#income-source-other2').hide();
            }
        });

        $('#income-source-other2').hide(); // Initially hide the "Other" input for co-borrower

        // Store selected files in an array and display them
        var selectedFiles = [];

        $('#combined-file').on('change', function () {
            var files = this.files;
            var progressBarFill = $('#progress-bar-fill');
            var progressBar = $('#progress-bar');
            var width = 0;

            if (files.length === 0) {
                // Hide the progress bar if no files are selected
                progressBar.css('display', 'none');
                return;
            }

            const validFileTypes = ['image/webp', 'image/jpeg', 'application/pdf', 'image/png', 'image/svg+xml'];
            let invalidFiles = [];

            for (let i = 0; i < files.length; i++) {
                if (!validFileTypes.includes(files[i].type)) {
                    invalidFiles.push(files[i].name);
                }
            }

            if (invalidFiles.length > 0) {
                Swal.fire({
                    icon: 'error',
                    title: 'Invalid File Type',
                    text: `Please upload .webp, .jpg, .pdf, .png, or .svg files only.`,
                });

                // Clear the input
                this.value = '';

                // Hide the progress bar
                progressBar.css('display', 'none');

                // Ensure the file upload text remains visible
                $('.file-upload-text').text('Drag and drop files here or click to select files').css('display', 'block');
            } else {
                function updateProgressBar() {
                    if (width >= 100) {
                        clearInterval(interval);
                        setTimeout(function() {
                            progressBar.css('display', 'none');
                        }, 500); 
                    } else {
                        width++;
                        progressBarFill.css('width', width + '%');
                        progressBarFill.text(width + '%');
                    }
                }

                progressBar.css('display', 'block'); 
                var interval = setInterval(updateProgressBar, 100); 

                function processFile(index) {
                    if (index < files.length) {
                        selectedFiles.push(files[index]);
                        displayFiles();
                        width = 0;
                        progressBar.show();
                        var interval = setInterval(updateProgressBar, 10);
                        setTimeout(function() {
                            clearInterval(interval);
                            processFile(index + 1);
                        }, 1000);
                    }
                }

                function displayFiles() {
                    var fileNamesContainer = $('#file-names');
                    fileNamesContainer.empty();
                    selectedFiles.forEach(function(file, index) {
                        var fileNameDiv = $('<div class="file-name"></div>');
                        var fileNameSpan = $('<span></span>').text(file.name);
                        var deleteButton = $('<button id="delete-sangla-button">&times;</button>').on('click', function() {
                            selectedFiles.splice(index, 1);
                            displayFiles();
                        });
                        fileNameDiv.append(fileNameSpan).append(deleteButton);
                        fileNamesContainer.append(fileNameDiv);
                    });
                }

                processFile(0);
                $('.file-upload-text').text('Drag and drop files here or click to select files').css('display', 'block');
            }
        });

        // Show popup on icon click
        $('.form-note-icon').on('click', function () {
            $('#form-note-popup').addClass('show');
            $('.popup-overlay').addClass('show'); // Show the overlay
        });

        // Close popup on button click
        $('.popup .close-btn').on('click', function () {
            $('#form-note-popup').removeClass('show');
            $('.popup-overlay').removeClass('show'); // Hide the overlay
        });
    });
</script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            // Flag to detect internal navigation
            let isInternalNavigation = false;

            // Add event listeners to all internal links
            document.querySelectorAll('a.nav-link, a.dropdown-item').forEach(link => {
                link.addEventListener('click', () => {
                    isInternalNavigation = true;
                });
            });

            // Add event listener for page refresh
            window.addEventListener('beforeunload', function (e) {
                if (!isInternalNavigation && e.returnValue === undefined) {
                    navigator.sendBeacon('../php/logout.php');
                }
            });
        });
    </script>
</body>

</html>