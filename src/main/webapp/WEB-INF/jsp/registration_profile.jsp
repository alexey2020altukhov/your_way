<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Создание профиля</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/reg.css">
    <script src="../../resources/js/loadingFile.js"></script>
    <script src="../../resources/js/validation.js"></script>
    <script src="../../resources/js/clear.js"></script>
</head>
<body>
<div class="group-box">
    <div class="reg-box">
        <form class="form-box profile" method="POST" enctype="multipart/form-data" onsubmit="return checkValidRegProfile()">
            <div class="header-login-box">
                <div class="name-main-box">
                    <p>Создание профиля</p>
                </div>
                <div class="tip-box">
                    <p>Введите необходимые данные</p>
                </div>
            </div>
            <div class="form-element">
                <label class="form-label">Фамилия</label>
                <input class="form-input" id = "surname" name="surname" onfocus="clearError('error_surname')">
                <label class="form-error" id = "error_surname"></label>
            </div>
            <div class="form-element">
                <label class="form-label">Имя</label>
                <input class="form-input" id = "name" name="name" onfocus="clearError('error_name')">
                <label class="form-error" id = "error_name"></label>
            </div>
            <div class="form-element">
                <label class="form-label">Отчество</label>
                <input class="form-input" id = "patronymic" name="patronymic" onfocus="clearError('error_patronymic')">
                <label class="form-error" id = "error_patronymic"></label>
            </div>
            <div class="form-element">
                <label class="form-label">Возраст</label>
                <input class="form-input" id = "age" name="age" onfocus="clearError('error_age')">
                <label class="form-error" id = "error_age"></label>
            </div>
            <div class="form-element">
                <label class="form-label">Фото</label>
                <div class="photo-box">
                    <div class="file-form-wrap">
                        <div class="file-upload-box" id = "file-upload">
                            <label>
                                <input id="uploaded-file" type="file" name="photo" accept="image/jpeg,image/png" onchange="getFileParam();" />
                                <span>Выберите фото</span><br />
                            </label>
                        </div>
                        <div id="file-name">&nbsp;</div>
                    </div>
                    <div class="btn-box">
                        <button class="btn" type="submit">Зарегистрироваться</button>
                    </div>
                </div>
            </div>
        </form>
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