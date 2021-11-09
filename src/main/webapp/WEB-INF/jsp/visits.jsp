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
<input id="loginUser" class="" type="text" value="${pageContext.request.remoteUser}" hidden>
<%--<header class="header_navbar bg shadow">--%>
<%--<a class="col-md-2" href="/">НАДиП</a>--%>
<%--<button class="navbar-toggler position-absolute d-xl-none collapsed" type="button" data-bs-toggle="collapse"--%>
<%--data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false"--%>
<%--aria-label="Toggle navigation">--%>
<%--<span class="navbar-toggler-icon"></span>--%>
<%--</button>--%>
<%--&lt;%&ndash;<input class="nav_top_input" type="text" placeholder="Search" aria-label="Search">&ndash;%&gt;--%>
<%--<div class="col-md-4 offset-md-6 info">--%>
<%--<p id="name_user"></p>--%>

<%--<a class="nav_link" href="/logout">Выйти</a>--%>
<%--</div>--%>

<%--</header>--%>

<div class="container-fluid">
    <div class="row ">
        <%--<nav id="sidebarMenu" class="shadow col-xl-2 d-xl-block bg-light sidebar collapse">--%>
        <%--<div class="position-sticky pt-3">--%>
        <%--<div class="d-flex align-items-start">--%>


        <%--<div class="navigation_collapse">--%>
        <%--<ul class="list-unstyled ps-0">--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center collapsed"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#students-collapse" aria-expanded="false">--%>
        <%--Студенты--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse" id="students-collapse" style="">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="/add-student" class="link-dark">Добавить студента </a></li>--%>
        <%--<li><a href="/list-students" class="link-dark">Список студентов </a></li>--%>
        <%--<li><a href="#" class="link-dark">Родители </a></li>--%>
        <%--</ul>--%>
        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#attendance-collapse" aria-expanded="false">--%>
        <%--Посещаемость--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse show" id="attendance-collapse" style="">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="/visits" class="link-dark active_page">Посещаемость студентов </a>--%>
        <%--</li>--%>
        <%--<li><a href="#" class="link-dark">Отчет посещаемости </a></li>--%>
        <%--</ul>--%>
        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center collapsed"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#payment-collapse" aria-expanded="false">--%>
        <%--Оплаты--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse" id="payment-collapse" style="">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="#" class="link-dark">Добавить оплату </a></li>--%>
        <%--<li><a href="#" class="link-dark">Поиск оплаты </a></li>--%>
        <%--<li><a href="#" class="link-dark">... </a></li>--%>
        <%--</ul>--%>
        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center collapsed"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#education-collapse" aria-expanded="false">--%>
        <%--Обучение--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse" id="education-collapse">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="/branch" class="link-dark">Филиалы </a></li>--%>
        <%--<li><a href="/groups" class="link-dark">Группы </a></li>--%>
        <%--<li><a href="#" class="link-dark">Расписание занятий </a></li>--%>
        <%--</ul>--%>

        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center rounded collapsed"--%>
        <%--data-bs-toggle="collapse" data-bs-target="#department-collapse"--%>
        <%--aria-expanded="false">--%>
        <%--Отдел кадров--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse" id="department-collapse">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="#" class="link-dark">Сотрудники </a></li>--%>
        <%--<li><a href="#" class="link-dark">Зарплата </a></li>--%>
        <%--<li><a href="#" class="link-dark">Отчет о зарплате </a></li>--%>
        <%--</ul>--%>

        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center collapsed"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#expenses-collapse" aria-expanded="false">--%>
        <%--Расходы--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse" id="expenses-collapse">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="#" class="link-dark">Добавить расход </a></li>--%>
        <%--<li><a href="#" class="link-dark">Поиск расходов </a></li>--%>
        <%--</ul>--%>

        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center collapsed"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#reports-collapse" aria-expanded="false">--%>
        <%--Отчеты--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse" id="reports-collapse">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="#" class="link-dark">? </a></li>--%>
        <%--<li><a href="#" class="link-dark">? </a></li>--%>
        <%--</ul>--%>

        <%--</div>--%>
        <%--</li>--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center collapsed"--%>
        <%--data-bs-toggle="collapse" data-bs-target="#settings-collapse"--%>
        <%--aria-expanded="false">--%>
        <%--Настройки системы--%>
        <%--</button>--%>
        <%--</div>--%>

        <%--<div class="collapse" id="settings-collapse">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="#" class="link-dark">Пользователи </a></li>--%>
        <%--<li><a href="#" class="link-dark">Роли </a></li>--%>
        <%--</ul>--%>
        <%--</div>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <%--</div>--%>


        <%--</div>--%>
        <%--</div>--%>
        <%--</nav>--%>

        <%--<main class="col-xl-10 main ms-sm-auto">--%>
        <%--<div class="tab-content" id="v-pills-tabContent">--%>

        <div class="row main_block">


            <div class="main_card_info shadow">
                <h5>Посещаемость</h5>
                <div class="row">
                    <div class="col-xl-3">
                        <span>Филиал</span><br>
                        <select id="branch" name="branch" onchange="getStudent()" class="visit_select_header">
                            <option value="" selected>Выберите филиал</option>
                        </select>
                    </div>
                    <div class="col-xl-3">
                        <span>Дата</span><br>
                        <input id="datePicker" class="visit_select_header" name="date" type="date">
                    </div>
                    <div class="col-xl-3">
                        <span>Время</span><br>
                        <select id="times" name="time" onchange="getStudent()" class="visit_select_header">
                            <option selected>Выберите время</option>
                        </select>
                    </div>
                    <div class="col-xl-3">
                        <span>Сегодня: </span>
                        <span id="date_now"></span>
                    </div>
                </div>


                <div class="table-responsive-xl">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Имя</th>
                            <th scope="col">Посещаемость</th>
                            <th scope="col">Примечание</th>
                            <th scope="col">Оплата</th>
                        </tr>
                        </thead>
                        <tbody class="list_students">
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <%--</div>--%>
        <%--</main>--%>
    </div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/options.js"></script>

<script type="text/javascript" src="resources/js/get_students_teacher.js"></script>

<script type="text/javascript" src="resources/js/get_groups_visit.js"></script>
<%--<script type="text/javascript" src="resources/js/get_students_group_branch.js"></script>--%>

<script>
    var day_now = getWeekDay(new Date());
    $('#date_now').append(day_now);
</script>

</body>
</html>