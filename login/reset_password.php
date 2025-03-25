<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="icon" href="../assets/images/updated-logo.webp" type="image/png">
    <link rel="stylesheet" href="../assets/css/Login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <script src="../assets/js/bootstrap.js" defer></script>
    <script src="../assets/js/script.js" defer></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
   .swal2-confirm {
        width: 150px;
    }

    body.swal2-height-auto {
        height: 100vh !important;
    }

    .error-border {
        border: 2px solid red;
    }

    .error-message {
        color: red;
        margin-top: 10px;
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

    .form-group {
        position: relative;
        align-items: center;
        margin-left: 0;
        margin-bottom: 1rem;
    }

    .toggle-password-container {
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
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
    }


    </style>
</head>

<body>
    <!-- LOADER -->
    <div class="loader-wrapper">
        <div class="loader"></div>
    </div>

    <div class="login-container">
        <div class="logo">
            <a href="../index.php">
                <img src="../assets/images/updated-logo.webp" width="150" height="150" alt="Company Logo" />
            </a>
        </div>
        <h3 class="subheader">Reset Password</h3>

        <div id="response-message" style="display:none;"></div>

        <?php
        if (isset($_GET['token'])) {
            $token = $_GET['token'];
            echo '<form id="reset-password-form" action="process_reset_password.php" method="post" class="needs-validation">
                <input type="hidden" name="token" value="' . htmlspecialchars($token) . '" />
                <label for="password">New Password:</label>
                <div class="form-group" id="reset-password-form-group">
                    <input type="password" id="password" name="password" placeholder="Ex. Abcd1234" class="form-control reset-password" style="width: 100%;" />
                    <div class="toggle-password-container">
                        <span id="toggle-password" style="cursor: pointer;">
                            <i class="fas fa-eye" style="color: gray;"></i>
                        </span>
                    </div>
                    <div class="invalid-feedback" style="display: block;"></div>
                </div>
                <button type="submit">Reset Password</button>
            </form>';
        } else {
            echo '<div class="message" style="color:red;">Invalid or expired token.</div>';
        }
        ?>

        <a class="back-to-login" href="../php/login.php">Back to Sign In</a>
    </div>
    <footer>
        <p>Copyright© 2024. All rights reserved</p>
    </footer>
    <script src="../assets/js/loader.js"></script>

</body>

</html>