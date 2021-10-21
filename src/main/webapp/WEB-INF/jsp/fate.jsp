<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<head>
    <title>Поиск предназначения</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
    <script src="../../resources/js/progress.js"></script>
</head>
<body>
<div class="main-box">
    <div class="background-box">
        <div class="site-header-box">
            <div class="header-text-big">
                <p>Поиск предназначения</p>
            </div>
            <div class="header-text-little">
                <p>Мы поможем вам найти свой путь</p>
            </div>
        </div>
        <div class="transition-box"></div>
    </div>
    <div class="group-box">
        <div class="info-main-box">
            <div id = "info-nationality-box">
                <div class="title-box">
                <span>
                    <br />Информация
                </span>
                </div>
                <p class="content-info-text">
                    Дан&shy;ные, ука&shy;зан&shy;ные при ре&shy;гист&shy;ра&shy;ции, поз&shy;во&shy;ля&shy;ют
                    нам точ&shy;но оп&shy;ре&shy;де&shy;лить ва&shy;ше пред&shy;наз&shy;на&shy;че&shy;ние
                    и най&shy;ти ис&shy;тин&shy;ный путь в этом ми&shy;ре. Сле&shy;ду&shy;ет учи&shy;ты&shy;вать,
                    что судь&shy;ба - вещь не&shy;пос&shy;то&shy;ян&shy;ная и нап&shy;ря&shy;мую за&shy;ви&shy;сит
                    от ва&shy;ших дейст&shy;вий. Поэтому со вре&shy;ме&shy;нем ре&shy;зуль&shy;тат мо&shy;жет
                    не&shy;мно&shy;го от&shy;ли&shy;чать&shy;ся. Что&shy;бы на&shy;чать, наж&shy;ми&shy;те
                    кноп&shy;ку ни&shy;же.
                </p>
                <button class="btn" onclick="runAnimation()">Приступить</button>
            </div>

            <div class="animation-box" id="progress">
                <div class="text-animation-box">
                    <p>Узнаём ваше предназначение...</p>
                </div>
                <img src="../../resources/img/Шар.gif">
            </div>

            <div class="result-box" id = "result-nationality">
                <div class="title-box">
                <span>
                    <br />Ваш результат
                </span>
                </div>
                <p class="content-info-text">
                    ${fate.getText()}
                </p>
                <img class="image" src="../../resources/img/fates/${fate.getNamePhoto()}.jpg">
            </div>

        </div>
        <div class="group-link-box">
            <div class="navigation-box">
                <p>Навигация</p>
                <a href="/definition/past">Узнать прошлое</a>
                <a href="/definition/nationality">Определить национальность</a>
                <a href="/">Главная</a>
                <a href="/profile/editing">Редактировать профиль</a>
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