function validatePeselAndFillBirthdate() {
    var pesel = document.getElementById('pesel').value;
    var birthdateInput = document.getElementById('birthdate');
    var isValidPesel = validatePesel(pesel);

    if (isValidPesel) {
        var year = parseInt(pesel.substring(0, 2));
        var month = parseInt(pesel.substring(2, 4));
        var day = parseInt(pesel.substring(4, 6));

        if (month > 80) {
            year += 1800;
            month -= 80;
        } else if (month > 60) {
            year += 2200;
            month -= 60;
        } else if (month > 40) {
            year += 2100;
            month -= 40;
        } else if (month > 20) {
            year += 2000;
            month -= 20;
        } else if (month > 12) {
            year += 1900;
            month -= 10;
        } else {
            year += 1900;
        }

        birthdateInput.value = year + "-" + (month < 10 ? "0" + month : month) + "-" + (day < 10 ? "0" + day : day);
    } else {
        birthdateInput.value = '';
    }
}

function validateForm() {
    var isValid = true;

    var inputs = document.querySelectorAll('input, select');
    inputs.forEach(function(input) {
        input.style.border = '';
    });

    var emailInput = document.getElementById('email');
    var email = emailInput.value.trim();
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var emailError = document.getElementById('emailError');
    if (!emailRegex.test(email)) {
        isValid = false;
        emailInput.style.border = '1px solid red';
        emailError.style.display = 'block';
    } else {
        emailError.style.display = 'none';
    }

    var peselInput = document.getElementById('pesel');
    var pesel = peselInput.value.trim();
    var isValidPesel = validatePesel(pesel);
    var peselError = document.getElementById('peselError');
    if (!isValidPesel) {
        isValid = false;
        peselInput.style.border = '1px solid red';
        peselError.style.display = 'block';
    } else {
        peselError.style.display = 'none';
    }

    var birthdateInput = document.getElementById('birthdate');
    var birthdate = birthdateInput.value.trim();
    var birthdateError = document.getElementById('birthdateError');
    if (birthdate === '') {
        isValid = false;
        birthdateInput.style.border = '1px solid red';
        birthdateError.style.display = 'block';
    } else {
        birthdateError.style.display = 'none';
    }

    if (isValid) {
        alert("Formularz wysłano poprawnie.");
    } else {
        alert("Proszę uzupełnić wszystkie wymagane pola poprawnie.");
    }

    return isValid;
}

function validatePesel(pesel) {
    var peselRegex = /^[0-9]{11}$/;
    if (!peselRegex.test(pesel)) {
        return false;
    }

    return true;
}

