<h2 class="card-title">Change Password</h2>


<?php if ($change_password_message): ?>
  <script>
    document.addEventListener('DOMContentLoaded', function () {
      Swal.fire({
        title: '<?php echo htmlspecialchars($change_password_message); ?>',
        icon: '<?php echo strpos($change_password_message, 'successfully') !== false ? 'success' : 'error'; ?>',
        confirmButtonText: 'OK'
      }).then(() => {
        if (window.shouldShowLoader) {
          document.querySelector('.loader-wrapper').style.display = 'block';
        }
      });
    });
  </script>
<?php endif; ?>
<div class="change-password-container">
  <form method="POST" action="../clientside/changePassword.php" onsubmit="return validateForm()">
    <div class="form-group">
      <label class="form-label" for="old_password"><strong>Old Password:</strong></label>
      <input class="form-input" type="password" id="old_password" name="old_password" placeholder="Enter Old Password"/>
      <div class="toggle-password-container">
        <span class="toggle-password" style="cursor: pointer;">
          <i class="fas fa-eye" style="color: black;"></i>
        </span>
      </div>
    </div>
    <div class="form-group">
      <label class="form-label" for="new_password"><strong>New Password:</strong></label>
      <input class="form-input" type="password" id="new_password" name="new_password" placeholder="Enter New Password"/>
      <div class="toggle-password-container">
        <span class="toggle-password" style="cursor: pointer;">
          <i class="fas fa-eye" style="color: black;"></i>
        </span>
      </div>
    </div>
    <div class="form-group">
      <label class="form-label" for="confirm_password"><strong>Confirm Password:</strong></label>
      <input class="form-input" type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password"/>
      <div class="toggle-password-container">
        <span class="toggle-password" style="cursor: pointer;">
          <i class="fas fa-eye" style="color: black;"></i>
        </span>
      </div>
    </div>
    <div class="button-container">
      <button class="submit-button btn btn-primary" type="submit" name="change_password">Save</button>
    </div>
  </form>
</div>

<script>
  function validateForm() {
    const oldPassword = document.getElementById('old_password').value;
    const newPassword = document.getElementById('new_password').value;
    const confirmPassword = document.getElementById('confirm_password').value;

    if (!oldPassword) {
      Swal.fire({
      title: 'Error',
      text: 'Please provide your old password.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    }

    if (!newPassword) {
      Swal.fire({
      title: 'Error',
      text: 'Please provide your new password.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    }else if (newPassword.length < 8) {
      Swal.fire({
      title: 'Error',
      text: 'New Password must be at least 8 characters long.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    } else if (!/[A-Z]/.test(newPassword)) {
      Swal.fire({
      title: 'Error',
      text: 'New Password must contain at least one uppercase letter.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    } else if (!/[0-9]/.test(newPassword)) {
      Swal.fire({
      title: 'Error',
      text: 'New Password must contain at least one number.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    } else if (!/[!@#$%^&*(),.?":{}|<>]/.test(newPassword)) {
      Swal.fire({
      title: 'Error',
      text: 'New Password must contain at least one special character.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    }

    if (!confirmPassword) {
      Swal.fire({
      title: 'Error',
      text: 'Please confirm your new password.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    }

    if (newPassword !== confirmPassword) {
      Swal.fire({
      title: 'Error',
      text: 'New Password and Confirm Password do not match.',
      icon: 'error',
      confirmButtonText: 'OK'
      });
      return false;
    }

    return true;
  }

  document.querySelectorAll('.toggle-password').forEach(item => {
    item.addEventListener('click', function () {
      const input = this.parentElement.previousElementSibling;
      const icon = this.querySelector('i');
      if (input.type === 'password') {
        input.type = 'text';
        icon.classList.remove('fa-eye');
        icon.classList.add('fa-eye-slash');
      } else {
        input.type = 'password';
        icon.classList.remove('fa-eye-slash');
        icon.classList.add('fa-eye');
      }
    });
  });
</script>