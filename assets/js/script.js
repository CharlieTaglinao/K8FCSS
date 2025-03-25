document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector(".needs-validation");

  if (!form) return;

  const fields = Array.from(form.querySelectorAll("input, select"));

  // Validate fields on blur and input
  fields.forEach((field) => {
    field.addEventListener("blur", () => {
      validateField(field);
    });

    if (field.tagName.toLowerCase() === "input") {
      field.addEventListener("input", () => {
        validateField(field);
      });
    }
  });

  // Prevent form submission if there are invalid fields
  form.addEventListener("submit", function (event) {
    let isFormValid = true;

    fields.forEach((field) => {
      if (!validateField(field)) {
        isFormValid = false;
      }
    });

    if (!isFormValid) {
      event.preventDefault();
      event.stopPropagation();
    }
  });

  function validateField(field) {
    let isValid = true;
    const feedback = field.parentNode.querySelector(".invalid-feedback");

    if (field.name === "email") {
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailPattern.test(field.value.trim())) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        feedback.textContent = "Please enter a valid email address.";
      } else {
        field.classList.remove("is-invalid");
        feedback.textContent = "";
      }
    } else if (field.name === "password") {
      if (field.value.trim() === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        feedback.textContent = "Password cannot be empty.";
      } else {
        field.classList.remove("is-invalid");
        feedback.textContent = "";
      }
    }

    return isValid;
  }

  // Show-password functionality
  const togglePassword = document.getElementById("toggle-password");
  if (togglePassword) {
    togglePassword.addEventListener("click", function () {
      const passwordInput = document.getElementById("password");
      const passwordIcon = togglePassword.querySelector("i");
      if (passwordInput.type === "password") {
        passwordInput.type = "text";
        passwordIcon.classList.remove("fa-eye");
        passwordIcon.classList.add("fa-eye-slash");
      } else {
        passwordInput.type = "password";
        passwordIcon.classList.remove("fa-eye-slash");
        passwordIcon.classList.add("fa-eye");
      }
    });
  } else {
    console.warn("Element with ID 'toggle-password' not found."); // Debugging log
  }

  window.addEventListener("scroll", reveal);

  function reveal() {
    var reveals = document.querySelectorAll(".reveal");

    for (var i = 0; i < reveals.length; i++) {
      var windowheight = window.innerHeight;
      var revealtop = reveals[i].getBoundingClientRect().top;
      var revealpoint = 150;

      if (revealtop < windowheight - revealpoint) {
        reveals[i].classList.add("active");
      }
    }
  }

  var acc = document.getElementsByClassName("accordion");
  var i;

  for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
      this.classList.toggle("activeaccordion");
      var panel = this.nextElementSibling;
      if (panel.style.display === "block") {
        panel.style.display = "none";
      } else {
        panel.style.display = "block";
      }
    });
  }

  // Remove SWAL alert for login
  $(document).ready(function () {
    const urlParams = new URLSearchParams(window.location.search);
    const error = urlParams.get("error");

    if (error) {
      let errorMessage = "";
      if (error === "missing_field") {
        errorMessage = "Please fill all required fields.";
      } else if (error === "wrong_credentials") {
        errorMessage = "Incorrect email or password.";
      }
      document.getElementById("error-message").innerText = errorMessage;
    }
  });

  // SWAL alert for Unauthorized
  $(document).ready(function () {
    const urlParams = new URLSearchParams(window.location.search);
    const unauthorized = urlParams.get("unauthorized");

    if (unauthorized) {
      let title, text;
      if (unauthorized === "not_logged_in") {
        title = "Unauthorized Access";
        text = "You need to log in to access this page.";
      } else if (unauthorized === "wrong_role") {
        title = "Unauthorized Access";
        text = "You do not have permission to access this page.";
      }
      Swal.fire({
        icon: "error",
        title: title,
        text: text,
        confirmButtonText: "Okay",
      });
    }
  });

  // SWAL alert for Forgot Password
  $(document).ready(function () {
    const urlParams = new URLSearchParams(window.location.search);
    const forgotPasswordMessage = urlParams.get("forgot-password-message");

    if (forgotPasswordMessage) {
      let title = "Information";
      let icon = "info";

      switch (decodeURIComponent(forgotPasswordMessage)) {
        case "Check your email for the password reset link.":
          title = "Email sent successfully";
          icon = "success";
          break;
        case "Email not found.":
          title = "Try again";
          icon = "error";
          break;
        case "Failed to send password reset email.":
          title = "Error";
          icon = "error";
          break;
        case "Invalid email format.":
          title = "Error";
          icon = "error";
          break;
        default:
          title = "Forgot Password";
          icon = "info";
      }

      // Ensure Swal.fire is called correctly
      Swal.fire({
        icon: icon,
        title: title,
        text: decodeURIComponent(forgotPasswordMessage),
        confirmButtonText: "OK",
      });
    }
  });

  // Update reset password functionality
  document
    .getElementById("reset-password-form")
    .addEventListener("submit", function (e) {
      e.preventDefault();

      const passwordInput = document.getElementById("password");
      const feedback = passwordInput.parentNode.querySelector(".invalid-feedback");
      const passwordPattern =
        /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

      if (!passwordPattern.test(passwordInput.value)) {
        feedback.textContent =
          "Password must be at least 8 characters long, contain at least one uppercase letter, one number, and one special character.";
        passwordInput.classList.add("is-invalid");
        passwordInput.classList.remove("is-valid");
      } else {
        passwordInput.classList.remove("is-invalid");
        feedback.textContent = "";

        // Proceed with form submission
        const formData = new FormData(this);

        fetch("process_reset_password.php", {
          method: "POST",
          body: formData,
        })
          .then((response) => response.json())
          .then((data) => {
            if (data.status === "success") {
              window.location.href = "../php/login.php";
            } else {
              feedback.textContent = data.message;
              passwordInput.classList.add("is-invalid");
            }
          })
          .catch((error) => {
            console.error("Error:", error);
            feedback.textContent = "An unexpected error occurred.";
            passwordInput.classList.add("is-invalid");
          });
      }
    });

  // Add real-time validation for password input
  document.getElementById("password").addEventListener("input", function () {
    const passwordInput = this;
    const feedback = passwordInput.parentNode.querySelector(".invalid-feedback");
    const value = passwordInput.value;
  
    // Validation criteria
    const hasUppercase = /[A-Z]/.test(value);
    const hasNumber = /\d/.test(value);
    const hasSpecialChar = /[@$!%*?&]/.test(value);
    const hasMinLength = value.length >= 8;
  
    // Build feedback message
    let feedbackMessage = "";
  
    if (!hasUppercase) {
      feedbackMessage += "• Must contain at least one uppercase letter.<br>";
    }
    if (!hasNumber) {
      feedbackMessage += "• Must contain at least one number.<br>";
    }
    if (!hasSpecialChar) {
      feedbackMessage += "• Must contain at least one special character (@, $, !, %, *, ?, &).<br>";
    }
    if (!hasMinLength) {
      feedbackMessage += "• Must be at least 8 characters long.<br>";
    }
  
    // Update feedback and styles
    if (feedbackMessage) {
      feedback.innerHTML = feedbackMessage.trim();
      passwordInput.classList.add("is-invalid");
      passwordInput.classList.remove("is-valid");
    } else {
      feedback.innerHTML = "";
      passwordInput.classList.remove("is-invalid");
      passwordInput.classList.add("is-valid");
    }
  }
);
});