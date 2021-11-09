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
            <form action="/login" method="post">
                <div class="row">
                    <h4>Вход на сайт</h4>
                </div>
                <div class="row">
                    <input type="text" name="username" placeholder="Username" value="IIe4enIOshka">
                </div>
                <div class="row">
                    <input type="Password" name="password" placeholder="Password" value="1">
                </div>
                <div class="row login">
                    <input type="submit" value="Войти на сайт">
                </div>
                <div class="row">
                    <a href="#">Забыли пароль?</a>
                </div>
            </form>
        </div>
    </div>
</div>


<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
</body>
</html>