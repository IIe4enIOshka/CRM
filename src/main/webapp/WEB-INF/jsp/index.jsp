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
    <link rel="stylesheet" type="text/css" href="resources/css/style_main.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/media.css"/>
</head>
<body>
<input id="loginUser" type="text" value="${pageContext.request.remoteUser}" hidden>
<header class="header_navbar bg shadow">
    <a class="col-xl-2" href="/">НАДиП</a>
    <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"
            data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <%--<input class="nav_top_input" type="text" placeholder="Search" aria-label="Search">--%>
    <div class="col-md-4 offset-md-6 info">
        <p id="name_user"></p>

        <a class="nav_link" href="/logout">Выйти</a>
    </div>

</header>

<div class="container-fluid">
    <div class="row height_100">
        <nav id="sidebarMenu" class="shadow col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky pt-3">

                <div class="navigation_collapse">
                    <ul class="list-unstyled ps-0">
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#students-collapse" aria-expanded="false">
                                    Студенты
                                </button>
                            </div>
                            <div class="collapse" id="students-collapse" style="">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" data-src="/add-student" class="link-dark">Добавить студента </a>
                                    </li>
                                    <li><a href="#" data-src="/list-students" class="link-dark">Список студентов </a>
                                    </li>
                                    <li><a href="#" class="link-dark">Родители </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#attendance-collapse" aria-expanded="false">
                                    Посещаемость
                                </button>
                            </div>
                            <div class="collapse" id="attendance-collapse" style="">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" data-src="/visits" class="link-dark">Посещаемость студентов </a>
                                    </li>
                                    <li><a href="#" class="link-dark">Отчет посещаемости </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#payment-collapse" aria-expanded="false">
                                    Оплаты
                                </button>
                            </div>
                            <div class="collapse" id="payment-collapse" style="">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" class="link-dark">Добавить оплату </a></li>
                                    <li><a href="#" class="link-dark">Поиск оплаты </a></li>
                                    <li><a href="#" class="link-dark">... </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#education-collapse" aria-expanded="false">
                                    Обучение
                                </button>
                            </div>
                            <div class="collapse" id="education-collapse">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" data-src="/branch" class="link-dark">Филиалы </a></li>
                                    <li><a href="#" data-src="/groups" class="link-dark">Группы </a></li>
                                    <li><a href="#" class="link-dark">Преподаватели </a></li>
                                    <%--<li><a href="#" class="link-dark">Расписание занятий </a></li>--%>
                                </ul>

                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center rounded collapsed"
                                        data-bs-toggle="collapse" data-bs-target="#department-collapse"
                                        aria-expanded="false">
                                    Отдел кадров
                                </button>
                            </div>
                            <div class="collapse" id="department-collapse">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" class="link-dark">Сотрудники </a></li>
                                    <li><a href="#" class="link-dark">Зарплата </a></li>
                                    <li><a href="#" class="link-dark">Отчет о зарплате </a></li>
                                </ul>

                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#expenses-collapse" aria-expanded="false">
                                    Расходы
                                </button>
                            </div>
                            <div class="collapse" id="expenses-collapse">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" class="link-dark">Добавить расход </a></li>
                                    <li><a href="#" class="link-dark">Поиск расходов </a></li>
                                </ul>

                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#reports-collapse" aria-expanded="false">
                                    Отчеты
                                </button>
                            </div>
                            <div class="collapse" id="reports-collapse">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" class="link-dark">? </a></li>
                                    <li><a href="#" class="link-dark">? </a></li>
                                </ul>

                            </div>
                        </li>
                        <li class="mb-1">
                            <div class="d-grid gap-2">
                                <button class="btn btn-toggle align-items-center collapsed"
                                        data-bs-toggle="collapse" data-bs-target="#settings-collapse"
                                        aria-expanded="false">
                                    Настройки системы
                                </button>
                            </div>

                            <div class="collapse" id="settings-collapse">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" class="link-dark">Пользователи </a></li>
                                    <li><a href="#" class="link-dark">Роли </a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">
            <iframe allowTransparency src="/add-student"></iframe>
        </main>
    </div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/js.cookie.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/options.js"></script>

<script>
    $('.link-dark').click(function () {
        var src = $(this).attr("data-src");
        $('iframe').attr("src", src);
        Cookies.set('src', src);
    });
</script>

<script>
    $(document).ready(function () {
        $('iframe').attr("src", Cookies.get('src'));
    });
</script>

</body>
</html>