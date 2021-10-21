<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<head>
    <title>Главная</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/main.css">
</head>
<body>
<div class="main-box">
    <div class="background-box">
        <div class="site-header-box">
            <div class="header-text-big">
                <p>Твой путь начинается здесь</p>
            </div>
            <div class="header-text-little">
                <sec:authorize access="isAuthenticated()">
                    <p>Спасибо, что вы с нами</p>
                </sec:authorize>
                <sec:authorize access="!isAuthenticated()">
                    <p>Зарегистрируйтесь или авторизуйтесь, чтобы продолжить</p>
                </sec:authorize>
            </div>
        </div>
        <div class="transition-box"></div>
    </div>
    <div class="group-box">
        <div class="info-main-box">
            <sec:authorize access="!isAuthenticated()">
                <div class="title-box">
                <span>
                    <br />Информация
                </span>
                </div>
                <p class="content-info-text">
                    Ваш путь на&shy;чи&shy;на&shy;ет&shy;ся здесь и сейчас! Авто&shy;ри&shy;зуй&shy;тесь или прой&shy;дите быст&shy;рую ре&shy;гист&shy;ра&shy;цию, чтобы по&shy;лу&shy;чить
                    дос&shy;туп ко всем воз&shy;мож&shy;нос&shy;тям со&shy;вер&shy;шен&shy;но бес&shy;плат&shy;но. За&shy;гля&shy;ды&shy;вай&shy;те в прош&shy;лое, оп&shy;ре&shy;де&shy;ляй&shy;те на&shy;цио&shy;наль&shy;ность,
                    ищи&shy;те пред&shy;наз&shy;на&shy;че&shy;ние.
                </p>
                <p class="content-info-text">
                    500 000 за&shy;ре&shy;гист&shy;ри&shy;ро&shy;ван&shy;ных поль&shy;зо&shy;ва&shy;те&shy;лей, 95% по&shy;ло&shy;жи&shy;тель&shy;ных от&shy;зы&shy;вов и сто&shy;про&shy;цент&shy;ная га&shy;ран&shy;тия в ка&shy;честве
                    пре&shy;дос&shy;тав&shy;ляе&shy;мых ус&shy;луг!
                </p>
                <p class="content-info-text">
                    При&shy;сое&shy;ди&shy;няй&shy;тесь к мно&shy;жест&shy;ву поль&shy;зо&shy;ва&shy;те&shy;лей по все&shy;му ми&shy;ру!
                </p>
                <img class="image" src="../../resources/img/Пользователи.jpg">

                <div class="title-box">
                <span>
                    <br />Как начать
                </span>
                </div>
                <p class="content-info-text">
                    На&shy;чать поль&shy;зо&shy;вать&shy;ся очень прос&shy;то!
                </p>
                <p class="content-info-text">
                    Всё, что вам не&shy;об&shy;хо&shy;ди&shy;мо сде&shy;лать, это за&shy;пол&shy;нить ан&shy;ке&shy;ту и заг&shy;ру&shy;зить
                    фо&shy;то&shy;гра&shy;фию. Обо всём ос&shy;таль&shy;ном по&shy;за&shy;бо&shy;тит&shy;ся на&shy;ша плат&shy;фор&shy;ма!
                </p>
                <p class="content-info-text">
                    Для то&shy;го, чтобы ана&shy;лиз лич&shy;нос&shy;ти про&shy;шёл успеш&shy;но, важ&shy;но при ре&shy;гист&shy;ра&shy;ции ука&shy;зы&shy;вать нас&shy;тоя&shy;щие дан&shy;ные. На
                    заг&shy;ру&shy;жа&shy;емой фо&shy;то&shy;гра&shy;фии долж&shy;но быть отчёт&shy;ливо вид&shy;но ва&shy;ше ли&shy;цо.
                </p>

                <div class="title-box">
                <span>
                    <br />Наша команда
                </span>
                </div>
                <p class="content-info-text">
                    В те&shy;че&shy;ние го&shy;да ко&shy;ман&shy;да луч&shy;ших спе&shy;циа&shy;лис&shy;тов про&shy;ек&shy;ти&shy;ро&shy;ва&shy;ла
                    и раз&shy;ра&shy;ба&shy;ты&shy;ва&shy;ла плат&shy;фор&shy;му, чтобы на вы&shy;хо&shy;де
                    по&shy;лу&shy;чить ка&shy;чест&shy;вен&shy;ный и на&shy;дёж&shy;ный про&shy;дукт. Наш де&shy;виз -
                    про&shy;грам&shy;ма долж&shy;на ра&shy;бо&shy;тать, а не про&shy;сто быть соз&shy;дан&shy;ной!
                </p>
                <img class="image" src="../../resources/img/Команда.png">

                <div class="title-box">
                <span>
                    <br />Благодарности
                </span>
                </div>
                <p class="content-info-text">
                    Вы&shy;ра&shy;жа&shy;ем ог&shy;ром&shy;ную бла&shy;го&shy;дар&shy;ность всем поль&shy;зо&shy;ва&shy;те&shy;лям,
                    за&shy;ре&shy;гист&shy;ри&shy;ро&shy;вав&shy;ших&shy;ся на на&shy;шей плат&shy;фор&shy;ме. Имен&shy;но вы зас&shy;тав&shy;ля&shy;ете нас
                    раз&shy;ви&shy;вать&shy;ся и де&shy;лать мир луч&shy;ше.
                </p>
                <p class="content-info-text">
                    Под&shy;дер&shy;жать про&shy;ект мож&shy;но в офи&shy;ци&shy;аль&shy;ной груп&shy;пе ВКон&shy;так&shy;те.
                </p>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <br><br>
                <img class="image-profile" src="img/user=${profile.getNamePhoto()}">
                <br>
                <div class="title-box">
                <span>
                    <br />Профиль
                </span>
                </div>
                <p class="content-info-text">
                    Фамилия: ${profile.getSurname()}
                </p>
                <p class="content-info-text">
                    Имя: ${profile.getName()}
                </p>
                <p class="content-info-text">
                    Отчество: ${profile.getPatronymic()}
                </p>
                <p class="content-info-text">
                    Возраст: ${profile.getAge()}
                </p>

                <div class="title-box">
                <span>
                    <br />Статистика
                </span>
                </div>
                <p class="content-info-text">
                    Дата захода: ${dateVisitUser}
                </p>
                <p class="content-info-text">
                    Количество посещений: ${countVisitUser}
                </p>
            </sec:authorize>
        </div>
        <div class="group-link-box">
            <div class="navigation-box">
                <p>Навигация</p>
                <a href="/definition/past">Узнать прошлое</a>
                <a href="/definition/fate">Узнать предназначение</a>
                <a href="/definition/nationality">Определить национальность</a>
                <sec:authorize access="!isAuthenticated()">
                    <a href="/login">Войти</a>
                    <a href="/registration/account">Зарегистрироваться</a>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a href="/profile/editing">Редактировать профиль</a>
                    <a href="/logout">Выйти</a>
                </sec:authorize>
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