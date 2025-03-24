document.addEventListener("DOMContentLoaded", function () {
  const commentsField = document.getElementById("comments");
  const charCount = document.getElementById("char-count");
  const form = document.querySelector(".needs-validation");

  commentsField.addEventListener("input", () => {
    const currentLength = commentsField.value.length;
    charCount.textContent = `${currentLength}/250 characters`;

    if (currentLength > 250) {
      commentsField.classList.add("is-invalid");
      commentsField.classList.remove("is-valid"); // Ensure is-valid is removed
      charCount.textContent = `${currentLength}/250 characters (${currentLength - 250} characters over limit)`;
    } else {
      commentsField.classList.remove("is-invalid");
      commentsField.classList.add("is-valid");
    }
  });


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

  // Add event listener for form submission
  form.addEventListener("submit", function (event) {
    const invalidFields = Array.from(form.querySelectorAll("input.is-invalid, select.is-invalid"));

    if (invalidFields.length > 0) {
      event.preventDefault();
      event.stopPropagation();

      const invalidFieldNames = invalidFields.map((field) => {
        return `
          <span 
        style="
          color: rgb(255, 152, 111); 
          font-weight: 900; 
          font-size: 18px;
        ">
        ${field.name
          .replace(/_/g, " ")
          .replace(/\b\w/g, (char) => char.toUpperCase())}
          </span>
        `;
      });
      Swal.fire({
        icon: "warning",
        title: "Missing or invalid fields",
        html: `${invalidFieldNames.map((name) => `${name}<br>`).join("")}`,
      });
    } else {
      event.preventDefault(); // Prevent default form submission for demonstration
      Swal.fire({
        icon: "success",
        title: "Form Submitted",
        text: "Your form has been successfully submitted!",
      }).then(() => {
        form.submit(); // Submit the form after clicking OK
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
  
    $("#appointment-date").on("change blur", function () {
      var appointmentDate = $(this).val();
      var feedback = $(this).siblings(".invalid-feedback");

      if (appointmentDate) {
        var date = new Date(appointmentDate);
        var day = date.getUTCDay();
  
        // Check if the selected date is a weekend (Saturday or Sunday)
        if (day === 6 || day === 0) {
          $(this).addClass("is-invalid").removeClass("is-valid");
          if (feedback.length) {
            feedback.text("Please select another date. Office is closed on weekends.");
          }
          timeSelect.empty();
          timeSelect.append(new Option("Office is closed", ""));
        } else {
          $(this).removeClass("is-invalid").addClass("is-valid");
          if (feedback.length) {
            feedback.text("");
          }
          // Re-enable all options if a valid weekday is selected
          populateTimeSlots();
        }
      } else {
        // If no date is selected, mark as invalid
        $(this).addClass("is-invalid").removeClass("is-valid");
        if (feedback.length) {
          feedback.text("Please select a valid date.");
        }
      }
    });

    $("#appointment-time").on("change blur", function () {
      var appointmentDate = $("#appointment-date").val();
      var appointmentTime = $(this).val();
      var feedback = $(this).siblings(".invalid-feedback");

      if (appointmentDate) {
        var date = new Date(appointmentDate);
        var day = date.getUTCDay();

        // Check if the selected date is a weekend (Saturday or Sunday)
        if ((day === 6 || day === 0) || appointmentTime === "Office is closed") {
          $(this).addClass("is-invalid").removeClass("is-valid");
          if (feedback.length) {
            feedback.text("Please select another date and time. Office is closed on weekends.");
          }
        } else if (appointmentTime === "") {
          // If no time is selected, mark as invalid
          $(this).addClass("is-invalid").removeClass("is-valid");
          if (feedback.length) {
            feedback.text("Please select a valid time.");
          }
        } else {
          // Valid time selected
          $(this).removeClass("is-invalid").addClass("is-valid");
          if (feedback.length) {
            feedback.text("");
          }
        }
      } else {
        // If no date is selected, mark time as invalid
        $(this).addClass("is-invalid").removeClass("is-valid");
        if (feedback.length) {
          feedback.text("Please select a valid date first.");
        }
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
        feedback.textContent = `Please select a valid ${field.name.replace(/_/g, " ")}.`;
      }
    } else if (field.tagName.toLowerCase() === "input" && field.type === "date" && field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback")

      if (feedback) {
      feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
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
        feedback.textContent = `${field.value} is already used in Contact Number 1.`;
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
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    }  else if (field.name === "years_present_address") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid number.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      } else if (parseInt(field.value, 10) > 100) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = feedback.textContent = `The provided years at the present address is too high.`;
      }
      }
    }else if (field.name === "previous_address") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
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
      } else if (parseInt(field.value, 10) > 100) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `The provided years at the previous address is too high.`;
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
    // start validation for page 2 of form
    else if (field.name === "mother_maiden_first_name") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    } else if (field.name === "mother_maiden_middle_name") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    }else if (field.name === "mother_maiden_last_name") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    }else if (field.name === "father_first_name") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    }else if (field.name === "father_middle_name") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    }
    else if (field.name === "father_last_name") {
      if (field.value !== "" && !/[a-zA-Z]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");

      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    } else if (field.name === "year_model") {
      const currentYear = new Date().getFullYear();
      const yearModel = parseInt(field.value, 10);

      if (isNaN(yearModel) || yearModel < 1980 || yearModel > currentYear + 1) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    } else if (field.name === "make") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid car name.`;
      }
      }
    }else if(field.name === "type"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")} of car.`;
        }
      }
    }
    // start validation for page 3 of form
    else if (field.name === "income_source") {
      const incomeSourceOther = form.querySelector("input[name='income_source_other']");
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      } else if (field.value === "Other") {
      if (!incomeSourceOther || incomeSourceOther.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        if (incomeSourceOther) {
        incomeSourceOther.classList.add("is-invalid");
        incomeSourceOther.classList.remove("is-valid");
        }
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = "Please specify the income source.";
        }
      } else {
        field.classList.add("is-valid");
        field.classList.remove("is-invalid");
        if (incomeSourceOther) {
        incomeSourceOther.classList.add("is-valid");
        incomeSourceOther.classList.remove("is-invalid");
        }
      }
      }
    }else if (field.name === "employer_name"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }

    }else if(field.name === "office_address"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    }else if (field.name === "office_number"){
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      } else if (field.value.length < 7 || field.value.length > 11) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must be between 7 and 11 digits.`;
      }
      }
    } else if (field.name === "company_email") {
      const primaryEmail = form.querySelector("input[name='email']").value;
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      } else if (field.value === primaryEmail) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `This email is already used as the primary email.`;
      }
      } else if (!emailPattern.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid email address.`;
      }
      }
    } else if (field.name === "position"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    } else if (field.name === "years_service") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid number.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      } else if (parseInt(field.value, 10) > 100) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `The provided year of service is too high.`;
      }
      }
    }else if (field.name === "monthly_income"){
      if(field.value == ""){
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }else if(isNaN(field.value)){
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      }else if(parseInt(field.value, 10) < 30000){
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Monthly income must be at least 30,000.`;
      }
      }
    } else if (field.name === "credit_cards") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid number.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      } else if (field.value.length !== 16) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Credit card number must be exactly 16 digits.`;
      }
      }
    } else if (field.name === "credit_history") {
      if (field.value !== "" && !/^[a-zA-Z\s]+$/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}. Only letters are allowed.`;
      }
      }
    }

    // start validation for page 4 of form
    else if (field.name === "first_name_borrower") {
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    } else if (field.name === "middle_name_borrower") {
      if (field.value !== "" && !/^[a-zA-Z\s]+$/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {l
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    }else if (field.name === "last_name_borrower") {
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    }else if (field.name === "email_address_borrower") {
      const primaryEmail = form.querySelector("input[name='email']").value;
      const companyEmail = form.querySelector("input[name='company_email']").value;
      const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid co-borrower ${field.name.replace(/_/g, " ")}.`;
      }
      } else if (field.value === primaryEmail) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `This email is already used as the primary email.`;
      }
      }else if (field.value === companyEmail) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `This email is already used as the company email.`;
      }
      }
       else if (!emailPattern.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid date of birth for the co-borrower.`;
      }
      }
    } else if (field.name === "date_of_birth_borrower") {
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid date of birth for the co-borrower.`;
        }
      } else {
        const dob = new Date(field.value);
        if (isNaN(dob.getTime())) {
          isValid = false;
          field.classList.add("is-invalid");
          field.classList.remove("is-valid");
          let feedback = field.parentNode.querySelector(".invalid-feedback");
          if (feedback) {
            feedback.textContent = `Invalid date format. Please provide a valid ${field.name.replace(/_/g, " ")}.`;
          }
        } else {
          const today = new Date();
          let age = today.getFullYear() - dob.getFullYear();
          const monthDiff = today.getMonth() - dob.getMonth();
          const dayDiff = today.getDate() - dob.getDate();

          if (monthDiff < 0 || (monthDiff === 0 && dayDiff < 0)) {
            age--;
          }

          if (age < 18) {
            isValid = false;
            field.classList.add("is-invalid");
            field.classList.remove("is-valid");
            let feedback = field.parentNode.querySelector(".invalid-feedback");
            if (feedback) {
              feedback.textContent = `You must be at least 18 years old.`;
            }
          } else {
            isValid = true;
            field.classList.add("is-valid");
            field.classList.remove("is-invalid");
          }
        }
      }
    } else if (field.name === "place_birth_borrower") {
      if (field.value !== "" && !/[a-zA-Z0-9\s]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid place of birth for the co-borrower.`;
      }
      }
    } else if (field.name === "relationship_borrower") {
      if (field.value === "" || !/^[a-zA-Z\s]+$/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid relationship to the primary borrower.`;
      }
      }
    }else if (field.name === "residential_address_borrower"){
      if (field.value !== "" && !/[a-zA-Z0-9\s]/.test(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
      }
      }
    } else if (field.name === "years_stay_borrower") {
      const residentialAddressBorrower = form.querySelector("input[name='residential_address_borrower']");
      if (residentialAddressBorrower && residentialAddressBorrower.value !== "" && field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
      feedback.textContent = "Please provide a valid year of stay.";
      }
      } else if (field.value !== "" && isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
      feedback.textContent = "Only numbers are accepted.";
      }
      } else if (parseInt(field.value, 10) > 100) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `The provided years of stay in the residential address of the co-borrower is too high.`;
      }
      }
    } else if (field.name === "contact_number_borrower") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid contact number.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      } else if (field.value.length !== 11) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Contact number must be exactly 11 digits.`;
      }
      } else {
      const contactNumber1 = form.querySelector("input[name='contact_number_1']");
      const contactNumber2 = form.querySelector("input[name='contact_number_2']");
      if (contactNumber1 && contactNumber1.value === field.value) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `This contact number is already used in Contact Number 1.`;
        }
      } else if (contactNumber2 && contactNumber2.value === field.value) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `This contact number is already used in Contact Number 2.`;
        }
      }
      }
    } else if (field.name === "tin_number_borrower") {
      const tinNumber = form.querySelector("input[name='tin_number']");
      if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must contain only numbers.`;
      }
      } else if (field.value !== "" && field.value.length !== 12) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must be exactly 12 digits.`;
      }
      } else if (tinNumber && tinNumber.value === field.value) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `TIN Number Borrower must not be the same as primary TIN Number.`;
      }
      }
    } else if (field.name === "sss_number_borrower") {
      const sssNumber = form.querySelector("input[name='sss_number']");
      if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must contain only numbers.`;
      }
      } else if (field.value !== "" && field.value.length !== 10) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `${field.name.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase())} must be exactly 10 digits.`;
      }
      } else if (sssNumber && sssNumber.value === field.value) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `SSS Number Borrower must not be the same as primary SSS Number.`;
      }
      }
    }

    // start of validation for page 5 of form
    else if(field.name === "employer_name_borrower"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    }else if(field.name === "office_address_borrower"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    }else if(field.name === "position_borrower"){
      if (field.value === "") {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
          feedback.textContent = `Please provide a valid ${field.name.replace(/_/g, " ")}.`;
        }
      }
    }else if (field.name === "years_service_borrower") {
      if (field.value === "") {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Please provide a valid number.`;
      }
      } else if (isNaN(field.value)) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
      }
      } else if (parseInt(field.value, 10) > 100) {
      isValid = false;
      field.classList.add("is-invalid");
      field.classList.remove("is-valid");
      let feedback = field.parentNode.querySelector(".invalid-feedback");
      if (feedback) {
        feedback.textContent = `The provided year of service is too high.`;
      }
      }
    } else if (field.name === "monthly_income_borrower") {
      if (field.value !== "") {
      if (isNaN(field.value)) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
        }
      } else if (parseInt(field.value, 10) < 30000) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `Monthly income must be at least 30,000.`;
        }
      }
      }
    } else if (field.name === "credit_cards_borrower") {
      const creditCards = form.querySelector("input[name='credit_cards']");
      if (field.value !== "") {
      if (isNaN(field.value)) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `Only numbers are accepted.`;
        }
      } else if (field.value.length !== 16) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `Credit Cards Borrower must be exactly 16 digits.`;
        }
      } else if (creditCards && creditCards.value === field.value) {
        isValid = false;
        field.classList.add("is-invalid");
        field.classList.remove("is-valid");
        let feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
        feedback.textContent = `Credit Cards Borrower must not be the same as primary Credit Cards.`;
        }
      } else {
        isValid = true;
        field.classList.add("is-valid");
        field.classList.remove("is-invalid");
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