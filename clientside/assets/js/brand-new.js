document.addEventListener("DOMContentLoaded", function () {
  const form = document.querySelector(".needs-validation");
  if (!form) return;

  const fields = Array.from(form.querySelectorAll("input, select, textarea"));

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

  // Add event listener for form submission
  form.addEventListener("submit", function (event) {
    const invalidFields = Array.from(form.querySelectorAll("input.is-invalid, select.is-invalid, textarea.is-invalid"));

    if (invalidFields.length > 0) {
      event.preventDefault();
      event.stopPropagation();

      const invalidFieldNames = invalidFields.map((field) => {
        return `<span style="color: red; font-style: italic;">${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}</span>`;
      });

      Swal.fire({
        icon: "error",
        title: "Invalid Fields",
        html: `${invalidFieldNames.map((name) => `${name}<br>`).join("")}`,
      });
    } else {
      event.preventDefault(); // Prevent default form submission for demonstration
      Swal.fire({
        icon: "success",
        title: "Form Submitted",
        text: "Your form has been successfully submitted!",
      });
    }
  });

  $(document).ready(function () {
    var timeSelect = $("#appointment-time");
  
    // Function to populate time slots with 30-minute intervals
    function populateTimeSlots() {
      // Clear any existing options to prevent duplication
      timeSelect.empty();
      // Add default option
      timeSelect.append(new Option("Select a time", ""));
      for (var hour = 9; hour <= 17; hour++) {
        var time = ("0" + hour).slice(-2) + ":00";
        timeSelect.append(new Option(time, time));
        if (hour < 17) {
          var halfHour = ("0" + hour).slice(-2) + ":30";
          timeSelect.append(new Option(halfHour, halfHour));
        }
      }
    }
  
    // Initial population of time slots
    populateTimeSlots();
  
    $("#appointment-date").on("change", function () {
      var appointmentDate = $(this).val();
      if (appointmentDate) {
        var date = new Date(appointmentDate);
        var day = date.getUTCDay();
  
        // Check if the selected date is a weekend (Saturday or Sunday)
        if (day === 6 || day === 0) {
          timeSelect.empty();
          timeSelect.append(new Option("Office is closed", ""));
          return;
        } else {
          // Re-enable all options if a valid weekday is selected
          populateTimeSlots();
        }
  
        
        $.ajax({
          type: "POST",
          url: "process/fetch_appointments.php",
          data: { appointment_date: appointmentDate },
          success: function (response) {
            var takenSlots = JSON.parse(response);
            var maxClients = 1;
            var takenTimes = takenSlots
              .filter((slot) => slot.count >= maxClients)
              .map((slot) => slot.appointment_time.slice(0, 5)); // Extract HH:MM format
  
            timeSelect.find("option").each(function () {
              var optionValue = $(this).val();
              if (takenTimes.includes(optionValue)) {
                $(this).remove();
              }
            });
  
            // Check if there are no available time slots
            if (timeSelect.find("option").length === 1) {
              timeSelect.empty();
              timeSelect.append(new Option("Office is closed", ""));
            }
          },
          error: function (xhr, status, error) {
            console.error("AJAX Error:", status, error);
          },
        });
      }
    });
  });

   // Disable past dates in #appointment-date
   const appointmentDateField = document.querySelector("#appointment-date");
   if (appointmentDateField) {
     const today = new Date().toISOString().split("T")[0];
     appointmentDateField.setAttribute("min", today);
   }
 

  // Validate field function
  function validateField(field) {
    let isValid = true;

    if (field.tagName.toLowerCase() === "select" && field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
      feedback.textContent = `Please choose a ${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}.`;
      }
    } else if (field.tagName.toLowerCase() === "input" && field.type === "date" && field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback")

      if (feedback) {
      feedback.textContent = `Please choose a ${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}.`;
      }
    } else if (field.name === "contact_number_2" && field.value !== "") {
      if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid number for ${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}.`;
      }
      } else if (field.value.length !== 11) {
      isValid = false;  
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must be exactly 11 digits.`;
      }
      } else {
      const contactNumber1 = form.querySelector("input[name='contact_number_1']");
      if (contactNumber1 && contactNumber1.value === field.value) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");

        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must not be the same as Contact Number 1.`;
        }
      }
      }
    }else if (field.name === "place_of_birth") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}.`;
      }
      }
    } else if (field.name === "years_present_address") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = "Letters are not allowed, only numbers are accepted.";
      }
      }
    } else if (field.name === "previous_address") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())}.`;
      }
      }
    } else if (field.name === "years_previous_address") {
      const previousAddress = form.querySelector("input[name='previous_address']");
      if (previousAddress && previousAddress.value !== "" && field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = "This field is required when Previous Address is filled.";
      }
      } else if (field.value !== "" && isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = "Please provide a valid number.";
      }
      }
    } else if (field.name === "tin_number") {
      if (isNaN(field.value)){
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must contain only numbers.`;
      }
    }else if(field.value !== "" && field.value.length !== 12) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must be exactly 12 digits`;
      }
      }
    }else if (field.name === "sss_number") {
      if (isNaN(field.value)){
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must contain only numbers.`;
      }
    }else if(field.value !== "" && field.value.length !== 10) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must be exactly 12 digits`;
      }
      }
    }else if (field.name === "dependents"){
      if (field.value !== "" && isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = "Please provide a valid number.";
      }
      }
    }

    if (isValid) {
      field.classList.add("is-valid");
      field.classList.remove("is-invalid");
    } else {
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
    }
  }

});