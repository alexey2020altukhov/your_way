let validLogin = /^(?=.+[a-zA-Z])\w+_*$/;
let validPassword = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])[a-zA-Z0-9]*$/;
let validSurnameNamePatronymic = /^[А-ЯЁ][а-яё]+$/;
let validAge = /^\d+$/;

function checkValidRegAccount() {
    let validation = true;

    let login = document.getElementById("login");
    let password = document.getElementById("password");
    let passwordConfirm = document.getElementById("passwordConfirm");

    if (login.value.length < 1) {
        validation = false;
        document.getElementById("error_login").innerHTML = "Поле не должно быть пустым";
        clearField(login);
    }
    else if (login.value.length < 7) {
        validation = false;
        document.getElementById("error_login").innerHTML = "Логин должен иметь не менее 7 символов";
        clearField(login);
    }
    else if (!(validLogin.test(login.value))) {
        validation = false;
        document.getElementById("error_login").innerHTML = "Некорректный формат логина";
        clearField(login);
    }

    if (passwordConfirm.value.length < 1) {
        validation = false;
        document.getElementById("error_confirm_password").innerHTML = "Поле не должно быть пустым";
        clearField(passwordConfirm);
    }

    if (password.value.length < 1) {
        validation = false;
        document.getElementById("error_password").innerHTML = "Поле не должно быть пустым";
        clearField(password);
        clearField(passwordConfirm);
    }
    else if (password.value.length < 8) {
        validation = false;
        document.getElementById("error_password").innerHTML = "Пароль должен иметь не менее 8 символов";
        clearField(password);
        clearField(passwordConfirm);
    }
    else if (!(validPassword.test(password.value))) {
        validation = false;
        document.getElementById("error_password").innerHTML = "Некорректный формат пароля";
        clearField(password);
        clearField(passwordConfirm);
    }
    else if (password.value!==passwordConfirm.value) {
        validation = false;
        document.getElementById("error_password").innerHTML = "Пароли не совпадают";
        document.getElementById("error_confirm_password").innerHTML = "Пароли не совпадают";
        clearField(password);
        clearField(passwordConfirm);
    }
    removeFocus(login);
    removeFocus(password);
    removeFocus(passwordConfirm);

    return validation;
}

function checkValidLogin() {
    let validation = true;

    let login = document.getElementById("login");
    let password = document.getElementById("password");

    if (login.value.length < 1) {
        validation = false;
        document.getElementById("error_login").innerHTML = "Введите логин";
        clearField(password);
    }

    if (password.value.length < 1) {
        validation = false;
        document.getElementById("error_password").innerHTML = "Введите пароль";
        clearField(password);
    }
    removeFocus(login);
    removeFocus(password);

    return validation;
}

function checkValidRegProfile() {
    let validation = true;

    let surname = document.getElementById("surname");
    let name = document.getElementById("name");
    let patronymic = document.getElementById("patronymic");
    let age = document.getElementById("age");

    if (surname.value.length<1) {
        validation = false;
        document.getElementById("error_surname").innerHTML = "Поле не должно быть пустым";
        clearField(surname);
    }
    else if (surname.value.length<2) {
        validation = false;
        document.getElementById("error_surname").innerHTML = "Фамилия должна иметь не менее 2 символов";
        clearField(surname);
    }
    else if (!validSurnameNamePatronymic.test(surname.value)) {
        validation = false;
        document.getElementById("error_surname").innerHTML = "Фамилия указана некорректно";
        clearField(surname);
    }

    if (name.value.length<1) {
        validation = false;
        document.getElementById("error_name").innerHTML = "Поле не должно быть пустым";
        clearField(name);
    }
    else if (name.value.length<2) {
        validation = false;
        document.getElementById("error_name").innerHTML = "Имя должно иметь не менее 2 символов";
        clearField(name);
    }
    else if (!validSurnameNamePatronymic.test(name.value)) {
        validation = false;
        document.getElementById("error_name").innerHTML = "Имя указано некорректно";
        clearField(name);
    }

    if (patronymic.value.length<1) {
        validation = false;
        document.getElementById("error_patronymic").innerHTML = "Поле не должно быть пустым";
        clearField(patronymic);
    }
    else if (patronymic.value.length<2) {
        validation = false;
        document.getElementById("error_patronymic").innerHTML = "Отчество должно иметь не менее 2 символов";
        clearField(patronymic);
    }
    else if (!validSurnameNamePatronymic.test(patronymic.value)) {
        validation = false;
        document.getElementById("error_patronymic").innerHTML = "Отчество указано некорректно";
        clearField(patronymic);
    }

    if (age.value.length<1) {
        validation = false;
        document.getElementById("error_age").innerHTML = "Поле не должно быть пустым";
        clearField(age);
    }
    else if (!validAge.test(age.value)) {
        validation = false;
        document.getElementById("error_age").innerHTML = "Возраст указан некорректно";
        clearField(age);
    }
    else if (age.value<6) {
        validation = false;
        document.getElementById("error_age").innerHTML = "Вы должны иметь возраст не менее 6 лет";
        clearField(age);
    }
    else if (age.value>150) {
        validation = false;
        document.getElementById("error_age").innerHTML = "Вы должны иметь возраст не более 150 лет";
        clearField(age);
    }
    removeFocus(surname);
    removeFocus(name);
    removeFocus(patronymic);
    removeFocus(age);

    return validation;
}
