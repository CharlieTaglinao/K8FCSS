<?php
include '../settings/authenticate.php';
checkUserRole(['Client']);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../required/headerOnLogin.php' ?>
    <title>Application Form | Second Hand </title>
    <link rel="icon" href="../assets/images/updated-logo.webp" type="image/png">
    <link rel="stylesheet" href="assets/css/style.css"> <!-- Link to your CSS file -->
    <link rel="stylesheet" href="../assets/css/loader.css"><!-- Style for loader -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs/build/css/alertify.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/alertifyjs/build/css/themes/default.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- JQuery for loader -->
    <script src="assets/js/script.js" defer></script>
    <script src="assets/js/second-hand.js" defer></script> <!-- Link to your new JavaScript file -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> <!-- SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/alertifyjs/build/alertify.min.js"></script>
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <style>
        .error input,
        .error select,
        .error textarea {
            border: 1px solid red;
        }

        label {
            color: black !important;
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
            <h1>Application Form | Second Hand</h1>
            <div class="form-note">
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
            <form id="application-form" action="process/process_second_hand_form.php" method="post" class="needs-validation">
                <input type="hidden" name="value-of-formtype" value="second-hand">
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
                            <input type="date" id="appointment-date" name="appointment_date" class="form-control" required>
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="appointment-time">Appointment Time: <span
                                    class="required-asterisk">*</span></label>
                            <select id="appointment-time" name="appointment_time" class="form-control" required>
                                <!-- Time slots will be populated here -->
                            </select>
                            <div class="invalid-feedback"></div>
                        </div>
                    </div>
                    <h2 id="header-title-below">Applicant Information:</h2>
                    <div class="form-inputs">
                        <div class="form-group">
                            <label for="first-name">First Name: <span class="required-asterisk">*</span></label>
                            <input type="text" id="first-name" name="first_name" class="form-control" placeholder="John" required
                                value="<?php echo $_SESSION['first_name']; ?>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="middle-name">Middle Name: <span class="required-asterisk">*</span></label>
                            <input type="text" id="middle-name" name="middle_name" class="form-control" placeholder="Rosales" required
                                value="<?php echo $_SESSION['middle_name']; ?>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="last-name">Last Name: <span class="required-asterisk">*</span></label>
                            <input type="text" id="last-name" name="last_name" class="form-control" placeholder="Doe" required
                                value="<?php echo $_SESSION['last_name']; ?>" readonly>
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address: <span class="required-asterisk">*</span></label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="johndoe@example.com"
                                value="<?php echo $_SESSION['email']; ?>" required readonly>
                        </div>
                        <div class="form-group">
                            <label for="contact-number-1">Contact Number: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="contact-number-1" name="contact_number_1" class="form-control" placeholder="09123456789"
                            value="<?php echo $_SESSION['phone']; ?>" readonly required pattern="\d{11}">
                            <div class="invalid-feedback"></div>
                        </div>

                        <div class="form-group">
                            <label for="contact-number-2">Contact Number 2:</label>
                            <input type="text" id="contact-number-2" name="contact_number_2" class="form-control"
                                placeholder="09123456789" pattern="\d{11}">
                                <div class="invalid-feedback"></div>
                        </div>

                        <div class="form-group">
                            <label for="present-address">Present Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="present-address" name="present_address" class="form-control"
                                placeholder="123 Main St, Springfield" value="<?php echo $_SESSION['address']; ?>" readonly required>
                                
                        </div>

                        <div class="form-group">
                            <label for="dob">Date of Birth: <span class="required-asterisk">*</span></label>
                            <input type="date" id="dob" name="dob" class="form-control" placeholder="YYYY-MM-DD" value="<?php echo $_SESSION['dob']; ?>" readonly required>
                            
                        </div>

                        <div class="form-group">
                            <label for="place_of_birth">Place of Birth: <span class="required-asterisk">*</span></label>
                            <input type="text" id="place_of_birth" name="place_of_birth" class="form-control"
                                placeholder="General Trias Cavite" required>
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="marital-status">Marital Status: <span class="required-asterisk">*</span></label>
                            <select id="marital-status" name="marital_status" class="form-control" required>
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
                            <input type="text" id="years-present-address" name="years_present_address" class="form-control" placeholder="5"
                                required>
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="ownership">Ownership: <span class="required-asterisk">*</span></label>
                            <select id="ownership" name="ownership" class="form-control" required>
                                <option value="">--Select--</option>
                                <option value="Owned">Owned</option>
                                <option value="Rented">Rented</option>
                                <option value="Free living with Parents">Free Living with Parents</option>
                                <option value="Others">Others</option>
                            </select>
                            <input type="text" id="ownership-other" name="ownership_other" class="form-control"
                                placeholder="Specify if 'Others'" style="display: none;">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="previous-address">Previous Address:</label>
                            <input type="text" id="previous-address" name="previous_address" class="form-control"
                                placeholder="456 Elm St, Springfield">
                                <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="years-previous-address">Years at Previous Address:</label>
                            <input type="text" id="years-previous-address" name="years_previous_address" class="form-control"
                                placeholder="3">
                                <div class="invalid-feedback"></div>
                        </div>
                        
                        
                        
                    </div>
                    <div class="form-inputs" id="secondary-form-inputs">
                        <div class="form-group">
                            <label for="tin_number">TIN Number:</label>
                            <input type="text" id="tin_number" name="tin_number" class="form-control" placeholder="111222333444">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="sss_number">SSS Number:</label>
                            <input type="text" id="sss_number" name="sss_number" class="form-control" placeholder="1122222223">
                            <div class="invalid-feedback"></div>
                        </div>
                        <div class="form-group">
                            <label for="dependents">Number of Dependents:</label>
                            <input type="text" id="dependents" name="dependents" class="form-control" placeholder="2">
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
                            <input type="text" id="mother-maiden-first-name" name="mother_maiden_first_name" class="form-control"
                                placeholder="Jane">
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-middle-name">Mother's Maiden Middle Name:</label>
                            <input type="text" id="mother-maiden-middle-name" name="mother_maiden_middle_name" class="form-control"
                                placeholder="Bautista">
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-last-name">Mother's Maiden Last Name:</label>
                            <input type="text" id="mother-maiden-last-name" name="mother_maiden_last_name" class="form-control"
                                placeholder="Smith">
                        </div>
                        <div class="form-group">
                            <label for="father-first-name">Father's First Name:</label>
                            <input type="text" id="father-first-name" name="father_first_name" class="form-control" placeholder="Robert">
                        </div>
                        <div class="form-group">
                            <label for="father-middle-name">Father's Middle Name:</label>
                            <input type="text" id="father-middle-name" name="father_middle_name" class="form-control" placeholder="Cruz">
                        </div>
                        <div class="form-group">
                            <label for="father-last-name">Father's Last Name:</label>
                            <input type="text" id="father-last-name" name="father_last_name" class="form-control" placeholder="Doe">
                        </div>
                    </div>
                    <h2 id="header-title-below">Vehicle Information:</h2>
                    <!-- Source of Income -->
                    <div class="form-inputs">
                        <div class="form-group">
                                    <label for="year-model">Year Model: <span class="required-asterisk">*</span></label>
                                    <input type="text" id="year-model" name="year_model" class="form-control" placeholder="2024" min="1980"
                                        max="3000" required>
                                    <span class="error-message"></span>
                                </div>
                                <div class="form-group">
                                    <label for="transmition-type">Transmission Type: <span class="required-asterisk">*</span></label>
                                    <select id="transmition-type" name="transmition_type" class="form-control" required>
                                        <option value="">Select Transmission Type</option>
                                        <option value="Automatic">Automatic</option>
                                        <option value="Manual">Manual</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="make">Car Name: <span class="required-asterisk">*</span></label>
                                    <input type="text" id="make" name="make" class="form-control" placeholder="Toyota Vios 1.3E" required>
                                </div>
                                <div class="form-group">
                                    <label for="type">Type of Car: <span class="required-asterisk">*</span></label>
                                    <input type="text" id="type" name="type" class="form-control" placeholder="Sedan" required>
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
                                <select id="income-source" name="income_source" class="form-control" required>
                                    <option value="">Select Source of Income</option>
                                    <option value="Employed">Employed</option>
                                    <option value="Business">Business</option>
                                    <option value="Remittance">Remittance</option>
                                    <option value="Other">Other</option>
                                </select>
                                <input type="text" id="income-source-other" name="income_source_other" class="form-control"
                                    placeholder="Specify if 'Other'" style="display: none;">
                            </div>
                        </div>
                        <!-- Employer/Business Details -->
                        <div class="form-group">
                            <label for="employer-name">Present Employer / Business Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="employer-name" name="employer_name" class="form-control" placeholder="ABC Corp" required>
                        </div>
                        <div class="form-group">
                            <label for="office-address">Office / Business Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="office-address" name="office_address" class="form-control"
                                placeholder="789 Maple St, Springfield" required>
                        </div>
                        <div class="form-group">
                            <label for="office-number">Office Number(s): <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="office-number" name="office_number" class="form-control" placeholder="5558765"
                                required>
                        </div>

                        <div class="form-group">
                            <label for="company-email">Company / Business Email Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="email" id="company-email" name="company_email" class="form-control"
                                placeholder="contact@abccorp.com" required>
                            <span class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="position">Position: <span class="required-asterisk">*</span></label>
                            <input type="text" id="position" name="position" class="form-control" placeholder="Software Engineer" required>
                        </div>
                        <div class="form-group">
                            <label for="years-service">Years of Service: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="years-service" name="years_service" class="form-control" placeholder="4" required>
                        </div>

                        <div class="form-group">
                            <label for="monthly-income">Gross Monthly Income: <span
                            class="required-asterisk">*</span></label>
                            <input type="text" id="monthly-income" name="monthly_income" class="form-control" placeholder="50000" required>
                        </div>
                        <div class="form-group">
                            <label for="credit-cards">Credit Card: <span
                            class="required-asterisk">*</span></label>
                            <input type="text" id="credit-cards" name="credit_cards" class="form-control"
                                placeholder="1234567891011121" required>
                                <span class="error-message">
                        </div>
                        <div class="form-group">
                            <label for="credit-history">Credit History:</label>
                            <input type="text" id="credit-history" name="credit_history" class="form-control" placeholder="Good">
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
                            <input type="text" id="first-name-borrower" name="first_name_borrower" class="form-control" placeholder="Ellen"
                                required>
                        </div>
                        <div class="form-group">
                            <label for="middle-name-borrower">Middle Name: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="middle-name-borrower" name="middle_name_borrower" class="form-control" placeholder="Gonzales"
                                required>
                        </div>
                        <div class="form-group">
                            <label for="last-name-borrower">Last Name: <span class="required-asterisk">*</span></label>
                            <input type="text" id="last-name-borrower" name="last_name_borrower" class="form-control" placeholder="Joe"
                                required>
                        </div>
                        <div class="form-group">
                            <label for="email-address-borrower">Email Address:</label>
                            <input type="email" id="email-address-borrower" name="email_address_borrower" class="form-control"
                                placeholder="ellen@gmail.com">
                                <span class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="date-of-birth-borrower">Date of Birth: <span
                                    class="required-asterisk">*</span></label>
                            <input type="date" id="date-of-birth-borrower" name="date_of_birth_borrower" class="form-control"
                                placeholder="YYYY-MM-DD" required>
                            <span class="error-message"></span>
                        </div>
                        <div class="form-group">
                            <label for="place-birth-borrower">Place of Birth:</label>
                            <input type="text" id="place-birth-borrower" name="place_birth_borrower" class="form-control"
                                placeholder="General Trias Cavite">
                        </div>
                        <div class="form-group">
                            <label for="relationship-borrower">Relationship to Borrower: <span
                            class="required-asterisk">*</span></label> 
                            <input type="text" id="relationship-borrower" name="relationship_borrower" class="form-control"
                                placeholder="Spouse" required>
                        </div>
                        <div class="form-group">
                            <label for="residential-address-borrower">Residential Address (If different to
                                borrower):</label>
                            <input type="text" id="residential-address-borrower" name="residential_address_borrower" class="form-control"
                                placeholder="Dasmariñas Cavite">
                        </div>
                        <div class="form-group">
                            <label for="years-stay-borrower">Years of Stay:</label>
                            <input type="text" id="years-stay-borrower" name="years_stay_borrower" class="form-control"
                                placeholder="15">
                        </div>
                        <div class="form-group">
                            <label for="contact-number-borrower">Contact Number: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="contact-number-borrower" name="contact_number_borrower" class="form-control"
                                placeholder="09123456789" required>
                        </div>
                        <div class="form-group">
                            <label for="tin_number_borrower">TIN Number:</label>
                            <input type="text" id="tin_number_borrower" name="tin_number_borrower" class="form-control"
                                placeholder="111222333444">
                                <span class="error-message">
                        </div>
                        <div class="form-group">
                            <label for="sss_number_borrower">SSS Number:</label>
                            <input type="text" id="sss_number_borrower" name="sss_number_borrower" class="form-control"
                                placeholder="1122222223">
                                <span class="error-message">
                        </div>
                    </div>
                    <h2 id="header-title-below">Co-borrower's Parent Information:</h2>
                    <div class="form-inputs">
                        <!-- Mother's Maiden Name -->
                        <div class="form-group">
                            <label for="mother-maiden-first-name">Mother's Maiden First Name:</label>
                            <input type="text" id="mother-maiden-first-name" name="mother_maiden_first_name" class="form-control"
                                placeholder="Jane">
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-middle-name">Mother's Maiden Middle Name:</label>
                            <input type="text" id="mother-maiden-middle-name" name="mother_maiden_middle_name" class="form-control"
                                placeholder="Doe">
                        </div>
                        <div class="form-group">
                            <label for="mother-maiden-last-name">Mother's Maiden Last Name:</label>
                            <input type="text" id="mother-maiden-last-name" name="mother_maiden_last_name" class="form-control"
                                placeholder="Smith">
                        </div>

                        <!-- Father's Name -->
                        <div class="form-group">
                            <label for="father-first-name">Father's First Name:</label>
                            <input type="text" id="father-first-name" name="father_first_name" class="form-control" placeholder="John">
                        </div>
                        <div class="form-group">
                            <label for="father-middle-name">Father's Middle Name:</label>
                            <input type="text" id="father-middle-name" name="father_middle_name" class="form-control" placeholder="Cruz">
                        </div>
                        <div class="form-group">
                            <label for="father-last-name">Father's Last Name:</label>
                            <input type="text" id="father-last-name" name="father_last_name" class="form-control" placeholder="Doe">
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
                            <input type="text" id="employer-name-borrower" name="employer_name_borrower" class="form-control"
                                placeholder="Tesla" required>
                        </div>
                        <div class="form-group">
                            <label for="office-address-borrower">Office Address: <span
                                    class="required-asterisk">*</span></label>
                            <input type="text" id="office-address-borrower" name="office_address_borrower" class="form-control"
                                placeholder="Block 1 Ph1 General Trias" required>
                        </div>
                        <div class="form-group">
                            <label for="position-borrower">Position: <span
                            class="required-asterisk">*</span></label>
                            <input type="text" id="position-borrower" name="position_borrower" class="form-control"
                                placeholder="Data Analyst" required>
                        </div>
                        <div class="form-group">
                            <label for="years-service-borrower">Years of Service: <span
                            class="required-asterisk">*</span></label>
                            <input type="text" id="years-service-borrower" name="years_service_borrower" class="form-control"
                                placeholder="10" required>
                        </div>
                        <div class="form-group">
                            <label for="monthly-income-borrower">Gross Monthly Income:</label>
                            <input type="text" id="monthly-income-borrower" name="monthly_income_borrower" class="form-control"
                                placeholder="50000">
                        </div>
                        <div class="form-group">
                            <label for="credit-cards-borrower">Credit Card:</label>
                            <input type="text" id="credit-cards-borrower" name="credit_cards_borrower" class="form-control"
                                placeholder="1234567891011121">
                                <span class="error-message">
                        </div>
                    </div>
                    <div class="form-row-button">
                        <button type="button" id="prev-page-4">Previous</button>
                        <button type="submit">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
<!-- testgid -->

    <?php include '../required/footerOnLogin.php' ?>

    <script>
        $(document).ready(function () {
            // Previous button functionality
            $('#prev-page-2, #prev-page-3, #prev-page-4, #prev-page-5').on('click', function () {
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
        <script src="../assets/js/bootstrap.js"></script>
</body>

</html>