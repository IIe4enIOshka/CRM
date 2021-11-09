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
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="resources/css/style_main.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/media.css"/>
</head>
<body>
<input id="loginUser" type="text" value="${pageContext.request.remoteUser}" hidden>
<%--<header class="header_navbar bg shadow">--%>
    <%--<a class="col-md-2" href="/">НАДиП</a>--%>
    <%--<button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse"--%>
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
    <div class="row height_100">
        <%--<nav id="sidebarMenu" class="shadow col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">--%>
            <%--<div class="position-sticky pt-3">--%>
                <%--<div class="d-flex align-items-start">--%>
                    <%----%>
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
                                    <%--<button class="btn btn-toggle align-items-center collapsed"--%>
                                            <%--data-bs-toggle="collapse"--%>
                                            <%--data-bs-target="#attendance-collapse" aria-expanded="false">--%>
                                        <%--Посещаемость--%>
                                    <%--</button>--%>
                                <%--</div>--%>
                                <%--<div class="collapse" id="attendance-collapse" style="">--%>
                                    <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
                                        <%--<li><a href="#" class="link-dark">Посещаемость студентов </a></li>--%>
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
                                    <%--<button class="btn btn-toggle align-items-center"--%>
                                            <%--data-bs-toggle="collapse"--%>
                                            <%--data-bs-target="#education-collapse" aria-expanded="true">--%>
                                        <%--Обучение--%>
                                    <%--</button>--%>
                                <%--</div>--%>
                                <%--<div class="collapse show" id="education-collapse">--%>
                                    <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
                                        <%--<li><a href="/branch" class="link-dark  active_page">Филиалы </a></li>--%>
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

        <%--<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">--%>
            <%--<div class="tab-content" id="v-pills-tabContent">--%>

                <div class="row">
                    <div class="col-xl-4">
                        <div class="main_card_add_branch shadow">
                            <h5>Добавить оплату</h5>
                            <form id="add_payment" action="/add_payment" method="post">
                                <div class="row">
                                    <span>Причина оплаты <sup>*</sup></span><br>
                                    <div class="reason">
                                        <input type="radio" id="mounth"
                                               name="reason" value="mounth" onchange="handleChange();">
                                        <label for="mounth">За месяц</label>
                                        <br>
                                        <input type="radio" id="own"
                                               name="reason" value="own" onchange="handleChange();">
                                        <label for="own">Своя</label>
                                    </div>
                                    <div class="mounts_select none">
                                        <select name="reason_mounth">
                                            <option>Сентябрь</option>
                                            <option>Октябрь</option>
                                            <option>Ноябрь</option>
                                            <option>Декабрь</option>
                                            <option>Январь</option>
                                            <option>Февраль</option>
                                            <option>Март</option>
                                            <option>Апрель</option>
                                            <option>Май</option>
                                        </select>
                                    </div>
                                    <input class="own_input none" type="text" name="reason_own"
                                           placeholder="Своя причина">
                                    <span>Номер оплаты <sup>*</sup></span><br>
                                    <input type="number" name="number" placeholder="Номер" required>
                                    <span>Сумма оплаты <sup>*</sup></span><br>
                                    <input type="number" name="amount" placeholder="Сумма" required>
                                    <span>Дата оплаты <sup>*</sup></span><br>
                                    <input type="date" name="date_pay" required>
                                    <span>Комментарий </span><br>
                                    <input type="text" name="remark" placeholder="Комментарий">
                                    <input id="student_id" class="none" type="text" name="student_id" readonly>
                                    <input type="submit" value="Добавить">
                                </div>
                            </form>
                        </div>

                    </div>

                    <div class="col-xl-8">

                        <div class="main_card_info shadow">
                            <h5>Список оплат</h5>
                            <%--<div class="input_group">--%>
                            <%--<span class="main_card_info_search_icon">--%>
                            <%--<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"--%>
                            <%--fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">--%>
                            <%--<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>--%>
                            <%--</svg>--%>
                            <%--</span>--%>

                            <%--<input class="main_card_info_search" type="text" placeholder="Поиск..."--%>
                            <%--aria-label="Search">--%>
                            <%--</div>--%>
                            <%--<div class="row student_info">--%>
                            <%--<div class="col-md-1 text-center">#</div>--%>
                            <%--<div class="col-md-2 text-center">Дата оплаты</div>--%>
                            <%--<div class="col-md-2 text-center">Причина</div>--%>
                            <%--<div class="col-md-2 text-center">Сумма</div>--%>
                            <%--<div class="col-md-5 text-center">Комментарий</div>--%>
                            <%--</div>--%>
                            <%--<div id="payment_row">--%>

                            <%--</div>--%>
                            <div class="table-responsive-xl">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Дата оплаты</th>
                                        <th scope="col">Причина</th>
                                        <th scope="col">Сумма</th>
                                        <th scope="col">Комментарий</th>
                                    </tr>
                                    </thead>
                                    <tbody class="list_payments">
                                    </tbody>
                                </table>
                            </div>
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
<script type="text/javascript" src="resources/js/get_payments.js"></script>
<script type="text/javascript" src="resources/js/add_payment.js"></script>

<%--<script type="text/javascript" src="resources/js/get_student_info.js"></script>--%>

<script>
    function handleChange() {
        if ($('#mounth').is(':checked')) {
            $('.own_input').addClass('none');
            $('.mounts_select').removeClass('none');
        } else {
            $('.mounts_select').addClass('none');
            $('.own_input').removeClass('none');
        }
    }
</script>

</body>
</html>