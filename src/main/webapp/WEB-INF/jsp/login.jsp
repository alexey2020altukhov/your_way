<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Вход в учётную запись</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/login.css">
    <script src="../../resources/js/validation.js"></script>
    <script src="../../resources/js/clear.js"></script>
</head>
<body>
    <sec:authorize access="isAuthenticated()">
        <% response.sendRedirect("/history/add"); %>
    </sec:authorize>
    <div class="group-box">
        <div class="content-box">
            <img class = "img-background" src="../../resources/img/Пятно.png">
            <img class="img-text" src="../../resources/img/Текст.png">
        </div>
        <div class="login-box">
            <form class="form-box" method="POST" action="/login" onsubmit="return checkValidLogin()">
                <div class="header-login-box">
                    <div class="name-main-box">
                        <p>Вход в учётную запись</p>
                    </div>
                    <div class="tip-box">
                        <p>Введите логин и пароль</p>
                    </div>
                </div>
                <div class="form-element">
                    <label class="form-label">Логин</label>
                    <input class="form-input" id = "login" name="username" onfocus="clearError('error_login')">
                    <label class="form-error" id = "error_login">
                        <c:if test="${param.error != null}">
                            Неверный логин или пароль
                        </c:if>
                    </label>
                </div>
                <div class="form-element">
                    <label class="form-label">Пароль</label>
                    <input class="form-input" type="password" id = "password" name = "key" autocomplete="new-password" onfocus="clearError('error_password')">
                    <label class="form-error" id = "error_password">
                        <c:if test="${param.error != null}">
                            Неверный логин или пароль
                        </c:if>
                    </label>
                </div>
                <button class="btn" type="submit">Авторизоваться</button>
            </form>
            <div class="reg-box">
                <p class="text-href-reg">Нет аккаунта?  <a class="href-reg" href="/registration/account">Зарегистрируйтесь</a></p>
            </div>
        </div>
    </div>
</body>
</html>