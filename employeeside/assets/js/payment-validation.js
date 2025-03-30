document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("payment-form");
    const maturityField = document.getElementById("maturity");
    const checkReleaseField = document.getElementById("check-release");
    const termField = document.getElementById("term");

    if (termField && maturityField) {
        termField.addEventListener("change", function () {
            const selectedTerm = parseInt(this.value, 10);
            if (!isNaN(selectedTerm)) {
                const today = new Date();
                today.setMonth(today.getMonth() + selectedTerm); // Add the selected term in months
                adjustToWeekday(today, maturityField); // Ensure the date is not a weekend
                maturityField.value = today.toISOString().split('T')[0]; // Format as YYYY-MM-DD
                maturityField.dispatchEvent(new Event("change")); // Trigger change event for maturityField
            } else {
                maturityField.value = ""; // Clear the maturity field if no valid term is selected
            }
        });
    }

    if (maturityField) {
        maturityField.addEventListener("change", function () {
            const maturityDate = new Date(this.value);
            const today = new Date();
            if (maturityDate <= today) {
                this.value = ''; // Clear the invalid date
                return;
            }

            adjustToWeekday(maturityDate, maturityField); // Ensure the date is not a weekend
            this.value = maturityDate.toISOString().split('T')[0]; // Update the field with the adjusted date

        
        });
    }


    if (!form) return;

    const fields = Array.from(form.querySelectorAll("input, select"));
    const remarksField = document.getElementById("remarks");
    const charCount = document.getElementById("char-count");

    // Helper function to adjust a date to the next weekday if it falls on a weekend
    function adjustToWeekday(date, field) {
        const day = date.getDay();
        if (day === 6 || day === 0) {
            Swal.fire({
                icon: "warning",
                title: "Unavailable Date",
                text: "Please select another date, Unavailable during weekends.",
            });
            field.value = ""; // Clear the invalid date
        }
    }

    // Live character count for remarks field
    remarksField.addEventListener("input", () => {
        const currentLength = remarksField.value.length;
        const excessCharacters = currentLength - 250;

        if (currentLength > 250) {
            remarksField.classList.add("is-invalid");
            remarksField.classList.remove("is-valid");
            charCount.textContent = `Characters Exceeds: ${excessCharacters}`;
        } else if (currentLength === 0) {
            remarksField.classList.add("is-invalid");
            remarksField.classList.remove("is-valid");
            charCount.textContent = `0/250 characters`;
        } else {
            remarksField.classList.remove("is-invalid");
            remarksField.classList.add("is-valid");
            charCount.textContent = `${currentLength}/250 characters`;
        }
    });

    fields.forEach((field) => {
        field.addEventListener("blur", () => validateField(field));
        if (field.tagName.toLowerCase() === "input") {
            field.addEventListener("input", () => validateField(field));
        }
    });

    form.addEventListener("submit", function (event) {
        event.preventDefault();
        event.stopPropagation();

        fields.forEach((field) => validateField(field));

        const currentLength = remarksField.value.length;
        if (currentLength > 250 || currentLength === 0) {
            remarksField.classList.add("is-invalid");
            remarksField.classList.remove("is-valid");
            charCount.textContent = currentLength > 250 
                ? `Characters Exceeds: ${currentLength - 250}` 
                : `0/250 characters`;
        } else {
            remarksField.classList.remove("is-invalid");
            remarksField.classList.add("is-valid");
        }

        validateField(remarksField);


        const amountField = document.getElementById("amount");
        if (amountField && (amountField.value === "" || parseFloat(amountField.value) < 1000)) {
            amountField.classList.add("is-invalid");
            amountField.classList.remove("is-valid");
        }

        const amountFinanceField = document.getElementById("amount-finance");
        if (amountFinanceField && (amountFinanceField.value === "" || parseFloat(amountFinanceField.value) < 200000)) {
            amountFinanceField.classList.add("is-invalid");
            amountFinanceField.classList.remove("is-valid");
        }

        const invalidFields = Array.from(form.querySelectorAll(".is-invalid"));

        if (invalidFields.length > 0) {
            Swal.fire({
                icon: "warning",
                title: "Missing or Invalid Fields",
                text: "Please correct the errors and check the optional fields if applicable before submitting the form.",
            });
        } else {
            Swal.fire({
                icon: "warning",
                title: "Are you sure?",
                text: "Do you want to submit the form?",
                showCancelButton: true,
                confirmButtonText: "Okay",
                cancelButtonText: "Cancel",
            }).then((result) => {
                if (result.isConfirmed) {
                    Swal.fire({
                        icon: "success",
                        title: "Form Submitted",
                        text: "Your form has been successfully submitted!",
                    }).then(() => {
                        form.submit(); 
                    });
                }
            });
        }
    });

    function validateField(field) {
        let isValid = true;

        if (field.id === "remarks") {
            const currentLength = field.value.length;
            if (currentLength > 250) {
                isValid = false;
                setFeedback(field, `Characters Exceeds: ${currentLength - 250}`);
                field.classList.add("is-invalid");
                field.classList.remove("is-valid");
            } else if (currentLength === 0) {
                isValid = false;
                setFeedback(field, "Remarks cannot be empty.");
                field.classList.add("is-invalid");
                field.classList.remove("is-valid");
            } else {
                field.classList.remove("is-invalid");
                field.classList.add("is-valid");
                setFeedback(field, "");
            }
        } else if (field.tagName.toLowerCase() === "input" && field.type === "text") {
            if (field.id === "amount") {
                if (field.value === "" || isNaN(parseFloat(field.value))) {
                    isValid = false;
                    setFeedback(field, "Please provide a valid amount.");
                } else if (parseFloat(field.value) < 1000) {
                    isValid = false;
                    setFeedback(field, "Amount should be at least 1000.");
                }
            } else if (field.id === "amount-finance") {
                if (field.value === "" || isNaN(parseFloat(field.value))) {
                    isValid = false;
                    setFeedback(field, "Please provide a valid amount finance.");
                } else if (parseFloat(field.value) < 200000) {
                    isValid = false;
                    setFeedback(field, "Amount finance should be at least 200000.");
                }
            }
        } else if (field.tagName.toLowerCase() === "select" && field.value === "") {
            isValid = false;
            setFeedback(field, "Please select a valid option.");
        } else if (field.tagName.toLowerCase() === "input" && field.type === "date") {
            const today = new Date().toISOString().split("T")[0];
            if (field.value === "" || field.value < today) {
                isValid = false;
                setFeedback(field, "Please provide a valid date.");
            }
        } else if (field.value.trim() === "") {
            isValid = false;
            setFeedback(field, `Please provide a valid ${field.name.replace(/_/g, " ")}.`);
        }

        if (isValid) {
            field.classList.add("is-valid");
            field.classList.remove("is-invalid");
            const feedback = field.parentNode.querySelector(".invalid-feedback");
            if (feedback) feedback.textContent = "";
        } else {
            field.classList.add("is-invalid");
            field.classList.remove("is-valid");
        }
    }
    
    function setFeedback(field, message) {
        const feedback = field.parentNode.querySelector(".invalid-feedback");
        if (feedback) {
            feedback.textContent = message;
        }
    }
});
