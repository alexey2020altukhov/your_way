<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<head>
    <title>Определение прошлого</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
    <script src="../../resources/js/progress.js"></script>
</head>
<body>
<div class="main-box">
    <div class="background-box">
        <div class="site-header-box">
            <div class="header-text-big">
                <p>Определение прошлого</p>
            </div>
            <div class="header-text-little">
                <p>Мы поможем вам взглянуть в прошлое</p>
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
                    Прош&shy;лое, к со&shy;жа&shy;ле&shy;нию, не&shy;воз&shy;мож&shy;но вер&shy;нуть, но его мож&shy;но
                    уви&shy;деть. И это ра&shy;дост&shy;ная но&shy;вость для вас. На&shy;ша плат&shy;фор&shy;ма
                    поз&shy;во&shy;ля&shy;ет в один клик опре&shy;де&shy;лить кем вы бы&shy;ли в прош&shy;лой жиз&shy;ни.
                    Что&shy;бы заг&shy;ля&shy;нуть в прош&shy;лое, наж&shy;ми&shy;те кноп&shy;ку ни&shy;же.
                </p>
                <button class="btn" onclick="runAnimation()">Заглянуть</button>
            </div>

            <div class="animation-box" id="progress">
                <div class="text-animation-box">
                    <p>Заглядываем в прошлое...</p>
                </div>
                <img src="../../resources/img/Бабочка.gif">
            </div>

            <div class="result-box" id = "result-nationality">
                <div class="title-box">
                <span>
                    <br />Ваш результат
                </span>
                </div>
                <p class="content-info-text">
                    ${past.getText()}
                </p>
                <img class="image" src="../../resources/img/past/${past.getNamePhoto()}.jpg">
            </div>

        </div>
        <div class="group-link-box">
            <div class="navigation-box">
                <p>Навигация</p>
                <a href="/definition/fate">Узнать предназначение</a>
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
