<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/style_login.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/media.css"/>
</head>
<body>
<div class="container">
    <div class="row logo">
        <h2>НАДиП</h2>
    </div>
    <div class="row flex_center">
        <div class="card_login">
            <p id="message" class="msg">...</p>
            <form id="registration" action="/addUser" method="post">
                <div class="row">
                    <input type="text" name="name" placeholder="Имя" required>
                </div>
                <div class="row">
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="row">
                    <input type="password" name="password" placeholder="Пароль" required>
                </div>
                <!-- footer -->
                <div class="row login">
                        <input type="submit" name="do_login" value="Регистрация">
                </div>
            </form>
            <div class="row">
                <a href="/login">Войти</a>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/registration.js"></script>
</body>
</html>