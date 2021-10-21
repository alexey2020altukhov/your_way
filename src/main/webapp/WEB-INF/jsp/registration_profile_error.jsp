<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Ошибка загрузки профиля</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/reg.css">
</head>
<body>
<div class="group-box">
    <div class="error-reg-profile-box">
        <div class="error-reg-profile-content">
            <div class="error-header">
                <p>Ваш профиль не найден</p>
            </div>
            <div class="info-error">
                <p>Ува&shy;жае&shy;мый поль&shy;зо&shy;ва&shy;тель, про&shy;филь ва&shy;шей учёт&shy;ной за&shy;пи&shy;си
                    не был най&shy;ден. Это мог&shy;ло прои&shy;зой&shy;ти, если</p>
                <p>&bull; Вы не за&shy;ре&shy;гист&shy;ри&shy;ро&shy;ва&shy;ли про&shy;филь</p>
                <p>&bull; В мо&shy;мент ре&shy;гист&shy;ра&shy;ции в&shy;аше сое&shy;ди&shy;не&shy;ние бы&shy;ло не&shy;устой&shy;чи&shy;вым</p>
                <p>&bull; Дан&shy;ные про&shy;фи&shy;ля пов&shy;реж&shy;де&shy;ны</p>

                <p>Чтобы вос&shy;поль&shy;зо&shy;вать&shy;ся все&shy;ми пре&shy;иму&shy;щест&shy;ва&shy;ми на&shy;шей плат&shy;фор&shy;мы,
                    по&shy;жа&shy;луй&shy;ста, за&shy;ре&shy;гист&shy;ри&shy;руй&shy;те про&shy;филь.</p>
                <button class="btn" onclick="window.location.href = '/registration/profile/${idUser}';">Продолжить</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>