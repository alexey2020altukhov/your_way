<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Создание учётной записи</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/reg.css">
    <script src="../../resources/js/validation.js"></script>
    <script src="../../resources/js/clear.js"></script>
</head>
<body>
<div class="group-box">
    <div class="reg-box">
        <form:form method="POST" modelAttribute="userForm" autocomplete="off" onsubmit="return checkValidRegAccount()">
            <div class="form-box account">
                <div class="header-login-box">
                    <div class="name-main-box">
                        <p>Создание учётной записи</p>
                    </div>
                    <div class="tip-box">
                        <p>Придумайте логин и пароль</p>
                    </div>
                </div>
                <div class="form-element">
                    <form:errors path="username" cssClass="form-error" element="label"></form:errors>
                    <label class="form-label">Логин</label>
                    <input class="form-input" id = "login" name="username" onfocus="clearError('error_login')" alt="Куку">
                    <label class="form-error" id = "error_login">${usernameError}</label>
                </div>
                <div class="form-element">
                    <label class="form-label">Пароль</label>
                    <input class="form-input" type="password" id = "password" name = "password" autocomplete="new-password" onfocus="clearError('error_password')">
                    <label class="form-error" id = "error_password"></label>
                </div>
                <div class="form-element">
                    <label class="form-label">Повторите пароль</label>
                    <input class="form-input" type="password" id = "passwordConfirm" name = "passwordConfirm" onfocus="clearError('error_confirm_password')">
                    <label class="form-error" id = "error_confirm_password"></label>
                </div>
                <button class="btn" id="btn" type="submit">Продолжить</button>
            </div>
        </form:form>
    </div>

    <div class="info-box">
        <div class="header-info-box">
            <p>Предисловие</p>
        </div>
        <div class="content-info-box">
            <p>Вы когда-ни&shy;будь за&shy;ду&shy;мы&shy;ва&shy;лись кем вы бы&shy;ли в прош&shy;лой жи&shy;зни?
                На&shy;вер&shy;ня&shy;ка, ник&shy;то вам не отве&shy;тит на этот
                воп&shy;рос. Ник&shy;то, кро&shy;ме нас!</p>
            <p>На&shy;ша плат&shy;фор&shy;ма пре&shy;дос&shy;тав&shy;ля&shy;ет глу&shy;бо&shy;кие воз&shy;мож&shy;нос&shy;ти по ана&shy;ли&shy;зу
                ва&shy;шей лич&shy;нос&shy;ти на ос&shy;но&shy;ве
                фо&shy;то&shy;гра&shy;фий и лич&shy;ных дан&shy;ных. С на&shy;ми вы смо&shy;же&shy;те...</p>
            <p>&bull; Уз&shy;нать свою на&shy;цио&shy;наль&shy;ность</p>
            <p>&bull; Оп&shy;ре&shy;де&shy;лить кем вы бы&shy;ли в прош&shy;лой жиз&shy;ни</p>
            <p>&bull; Най&shy;ти своё пред&shy;наз&shy;на&shy;че&shy;ние</p>
            <p>&bull; И мно&shy;гое дру&shy;гое</p><br>
            <p>Ре&shy;гист&shy;ри&shy;руй&shy;ся и нач&shy;ни поль&shy;зо&shy;вать&shy;ся пря&shy;мо сей&shy;час!</p>
            <p>Если у вас есть ак&shy;ка&shy;унт, вы&shy;пол&shy;ни&shy;те <a class="link-login" href="/login">вход</a>.</p>
        </div>
        <div class="link-box">
            <a href="https://vk.com/alexey_altuhov">
                <img class="img-link" src="../../resources/img/ВК.png">
            </a>
            <a href="https://www.youtube.com/channel/UCUXcpBn8P5o9ZgVzM2yF2Sg/featured">
                <img class="img-link" src="../../resources/img/YouTube.png">
            </a>
            <a href="https://www.instagram.com/alexey_altuhov/">
                <img class="img-link" src="../../resources/img/Инстаграмм.png">
            </a>
        </div>
    </div>
</div>
</body>
</html>