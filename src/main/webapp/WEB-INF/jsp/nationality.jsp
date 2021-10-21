<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<head>
    <title>Определение национальности</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
    <script src="../../resources/js/progress.js"></script>
</head>
<body>
<div class="main-box">
    <div class="background-box">
        <div class="site-header-box">
            <div class="header-text-big">
                <p>Определение национальности</p>
            </div>
            <div class="header-text-little">
                <p>Мы поможем вам узнать кто вы</p>
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
                    Оп&shy;ре&shy;де&shy;ле&shy;ние на&shy;цио&shy;наль&shy;нос&shy;ти на 90% сос&shy;то&shy;ит
                    из ана&shy;ли&shy;за заг&shy;ру&shy;жен&shy;ной ва&shy;ми фо&shy;то&shy;гра&shy;фии.
                    Имен&shy;но от неё в боль&shy;шей сте&shy;пе&shy;ни бу&shy;дет за&shy;ви&shy;сеть
                    ко&shy;неч&shy;ный ре&shy;зуль&shy;тат. Чтобы на&shy;чать оп&shy;ре&shy;де&shy;ле&shy;ние
                    на&shy;цио&shy;наль&shy;нос&shy;ти, наж&shy;ми&shy;те кноп&shy;ку ни&shy;же.
                </p>
                <button class="btn" onclick="progressBar()">Определить</button>
            </div>

            <div class="analysis-box" id="progress">
                <div class="progress-box">
                    <svg>
                        <circle cx="60" cy="60" r="55"></circle>
                    </svg>
                    <div class="counter">0</div>
                </div>
                <div class="image-user">
                    <img src="img/user=${namePhoto}">
                </div>
            </div>

            <div class="result-box" id = "result-nationality">
                <div class="title-box">
                <span>
                    <br />Ваш результат
                </span>
                </div>
                <c:forEach var="el" items="${nationality}">
                    <div class="nationality">
                        <h3>${el.getKey()}</h3>
                        <img class="nationality-image" src="../../resources/img/flags/${el.getKey()}.png">
                        <h2>${el.getValue()}%</h2>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="group-link-box">
            <div class="navigation-box">
                <p>Навигация</p>
                <a href="/definition/past">Узнать прошлое</a>
                <a href="/definition/fate">Узнать предназначение</a>
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