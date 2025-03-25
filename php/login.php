<!DOCTYPE html>
<html lang="en">

<head>
    <?php include '../required/header.php'; ?>
    <title>Login</title>
    <link rel="icon" href="../assets/images/updated-logo.webp" type="image/png">
    <link rel="stylesheet" href="../assets/css/Login.css">
    <link rel="stylesheet" href="../assets/css/loader.css"><!-- Style for loader -->
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <script src="../assets/js/bootstrap.js" defer></script>
    <script src="../assets/js/script.js" defer></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script><!-- JQuery for loader -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
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

<body>
    <!-- LOADER -->
    <div class="loader-wrapper">
        <div class="loader"></div>
    </div>
    <div class="loading-overlay"></div>
    <div class="loading-spinner"></div>

    <div class="login-container">
        <div class="logo">
            <a href="../index">
                <img src="../assets/images/updated-logo.webp" width="150" height="150" alt="Company Logo" />
            </a>
        </div>
        <h3 class="subheader">Welcome to K8 Financial Consultancy Services</h3>
        <h1>Login</h1>
        <?php
        session_start();
        $error_message = isset($_SESSION['error']) ? $_SESSION['error'] : '';
        unset($_SESSION['error']);
        ?>
        <form action="process_login.php" method="post" class="needs-validation">
            
        
        <div id="error-message" class="error-message"><?php echo htmlspecialchars($error_message); ?></div>
        <label for="email">Email:</label>
            <div class="form-group">
            <input type="email" id="email" name="email" class="form-control" value="<?php echo isset($_GET['email']) ? htmlspecialchars($_GET['email']) : ''; ?>" placeholder="Enter your email" style="width: 100%;"/>
            <div class="invalid-feedback"></div>
            </div>

            <label for="password">Password: </label>
            <div class="form-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" style="width: 100%;"/>
                <div class="toggle-password-container">
                <span id="toggle-password" style="cursor: pointer;">
                    <i class="fas fa-eye" style="color: black;"></i>
                </span>
                </div>
                <div class="invalid-feedback"></div>
            </div>

            <a href="../login/forgot_password" class="forgot-password">Forgot Password?</a>

            <div class="signup-container">
            <button type="submit">Sign In</button>
            <p class="signup-caption">Don't have an account yet? <a href="../php/signup" class="forgot-password"
                id="signup">Sign up</a> </p>
            </div>
            
        </form>

    </div>
    <script src="../assets/js/loader.js"></script><!-- Script for loader -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>