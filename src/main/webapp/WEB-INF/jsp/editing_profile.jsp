<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<head>
    <title>Редактирование профиля</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
    <script src="../../resources/js/loadingFile.js"></script>
    <script src="../../resources/js/validation.js"></script>
    <script src="../../resources/js/clear.js"></script>
</head>
<body>
<div class="main-box">
    <div class="background-box">
        <div class="site-header-box">
            <div class="header-text-big">
                <p>Редактирование профиля</p>
            </div>
            <div class="header-text-little">
                <p>Используйте только ваши личные данные</p>
            </div>
        </div>
        <div class="transition-box"></div>
    </div>
    <div class="group-box">
        <div class="info-main-box">
            <form class="form-box profile" method="POST" enctype="multipart/form-data" onsubmit="return checkValidRegProfile()">
                <div class="title-box">
                    Данные профиля
                </div>
                <div class="form-element">
                    <label class="form-label">Фамилия</label>
                    <input class="form-input" id = "surname" name="surname" onfocus="clearError('error_surname')" value="${profile.getSurname()}">
                    <label class="form-error" id = "error_surname"></label>
                </div>
                <div class="form-element">
                    <label class="form-label">Имя</label>
                    <input class="form-input" id = "name" name="name" onfocus="clearError('error_name')" value="${profile.getName()}">
                    <label class="form-error" id = "error_name"></label>
                </div>
                <div class="form-element">
                    <label class="form-label">Отчество</label>
                    <input class="form-input" id = "patronymic" name="patronymic" onfocus="clearError('error_patronymic')" value="${profile.getPatronymic()}">
                    <label class="form-error" id = "error_patronymic"></label>
                </div>
                <div class="form-element">
                    <label class="form-label">Возраст</label>
                    <input class="form-input" id = "age" name="age" onfocus="clearError('error_age')" value="${profile.getAge()}">
                    <label class="form-error" id = "error_age"></label>
                </div>
                <div class="form-element">
                    <label class="form-label">Фото</label>
                    <div class="photo-box">
                        <div class="file-form-wrap">
                            <div class="file-upload-box" id = "file-upload">
                                <label>
                                    <input id="uploaded-file" type="file" name="photo" accept="image/jpeg,image/png" onchange="getFileParam();"/>
                                    <span>Выберите фото</span><br />
                                </label>
                            </div>
                            <div id="file-name">&nbsp;</div>
                        </div>
                    </div>
                </div>
                <div class="btn-box">
                    <button class="btn" type="submit">Сохранить изменения</button>
                </div>
            </form>
        </div>
        <div class="group-link-box">
            <div class="navigation-box">
                <p>Навигация</p>
                <a href="/definition/past">Узнать прошлое</a>
                <a href="/definition/fate">Узнать предназначение</a>
                <a href="/definition/nationality">Определить национальность</a>
                <a href="/">Главная</a>
                <a href="/logout">Выйти</a>
            </div>
            <div class="contact-box">
                <p>Контакты</p>
                <a href="https://vk.com/alexey_altuhov">Наш паблик</a>
                <a href="https://www.instagram.com/alexey_altuhov/">Наш инстаграмм</a>
                <a href="https://www.youtube.com/channel/UCUXcpBn8P5o9ZgVzM2yF2Sg/featured">Наш канал</a>
                <div class="link-box">
                    <a href="https://vk.com/alexey_altuhov">
                        <img class="img-link" src="../../resources/img/ВК.png">
                    </a>
                    <a href="https://www.instagram.com/alexey_altuhov/">
                        <img class="img-link" src="../../resources/img/Инстаграмм.png">
                    </a>
                    <a href="https://www.youtube.com/channel/UCUXcpBn8P5o9ZgVzM2yF2Sg/featured">
                        <img class="img-link" src="../../resources/img/YouTube.png">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-box">
        <br><br><br>
        <p>© Твой путь - платформа для анализа личности<br>Все права защищены<br>2020 - 2021</p>
    </div>
</div>
</body>
</html>