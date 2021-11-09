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


        <%--<div class="navigation_collapse">--%>
        <%--<ul class="list-unstyled ps-0">--%>
        <%--<li class="mb-1">--%>
        <%--<div class="d-grid gap-2">--%>
        <%--<button class="btn btn-toggle align-items-center"--%>
        <%--data-bs-toggle="collapse"--%>
        <%--data-bs-target="#students-collapse" aria-expanded="true">--%>
        <%--Студенты--%>
        <%--</button>--%>
        <%--</div>--%>
        <%--<div class="collapse show" id="students-collapse" style="">--%>
        <%--<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">--%>
        <%--<li><a href="/add-student" class="link-dark active_page">Добавить студента </a>--%>
        <%--</li>--%>
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
        <%--<li><a href="/visits" class="link-dark">Посещаемость студентов </a></li>--%>
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

        <%--<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">--%>
        <%--<div class="tab-content" id="v-pills-tabContent">--%>

        <div class="row main_block">
            <div class="main_card_add_student shadow">
                <h5>Добавить студента</h5>

                <form id="add_student" action="/add_student" method="post">
                    <div class="row">
                        <div class="col-xl-3">
                            <span>Фамилия <sup>*</sup></span><br>
                            <input value="Surname" type="text" placeholder="Фамилия" autocomplete="off" name="surname" required>
                        </div>
                        <div class="col-xl-3">
                            <span>Имя <sup>*</sup></span><br>
                            <input value="Name" type="text" placeholder="Имя" autocomplete="off" name="name" required>
                        </div>
                        <div class="col-xl-3">
                            <span>Отчество</span><br>
                            <input value="Otchestvo" type="text" placeholder="Отчество" autocomplete="off" name="patronymic">
                        </div>
                        <div class="col-xl-3">
                            <span>Пол <sup>*</sup></span><br>
                            <select class="visit_select_header" name="sex" required>
                                <option disabled>Выбрать</option>
                                <option selected>Мужской</option>
                                <option>Женский</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3">
                            <span>Дата рождения <sup>*</sup></span><br>
                            <input value="2020-02-01" type="date" placeholder="Дата рождения" name="date_birday" autocomplete="off"
                                   required>
                        </div>
                        <div class="col-xl-3">
                            <span>Мобильный телефон</span><br>
                            <input value="+7(999) 999-99-99" id="phone_student" class="phone" type="text" placeholder="+7(___) ___-__-__"
                                   autocomplete="off"
                                   name="phone">
                        </div>
                        <div class="col-xl-3">
                            <span>Специальность <sup>*</sup></span><br>
                            <select class="visit_select_header" name="speciality" required>
                                <option  disabled>Выбрать</option>
                                <option selected>Программист</option>
                                <option>Дизайнер</option>
                            </select>
                        </div>
                        <div class="col-xl-3">
                            <span>Курс <sup>*</sup></span><br>
                            <input value="1" type="number" min="1" max="4" placeholder="Курс" name="course" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3">
                            <span>Дата поступления <sup>*</sup></span><br>
                            <input value="2020-02-01" type="date" placeholder="Дата поступления" autocomplete="off"
                                   name="date_receipt" required>
                        </div>
                        <div class="col-xl-3">
                            <span>Учитель <sup>*</sup></span><br>
                            <select id="teacher" name="teacher_id" required>
                            </select>
                        </div>


                        <%--<div class="col-xl-3">--%>
                        <%--<span>Филиалы <sup>*</sup></span><br>--%>
                        <%--<div id="branch" class="list-group mx-0">--%>

                        <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col-xl-3">--%>
                        <%--<span>День недели <sup>*</sup></span><br>--%>
                        <%--<div id="days" class="">--%>
                        <%--</div>--%>
                        <%--</div>--%>


                    </div>
                    <div id="branches" class="row" style="margin: auto;">

                    </div>
                    <div class="col-xl-3 offset-xl-9">
                        <button class="add_row_branch" type="button" onclick="addRowBranch()">
                            <span style="float: left;">Добавить филиал</span><img
                                width="15%" src="resources/ico/icons8-plus-64.png" alt=""></button>
                    </div>
                    <br>
                    <div class="row">
                        <h5>Родитель</h5>
                    </div>
                    <div class="row">
                        <div class="col-xl-3">
                            <span>Фамилия и имя родителя <sup>*</sup></span><br>
                            <input value="NameParent" type="text" placeholder="Фамилия и имя родителя" autocomplete="off"
                                   name="name_parent" required>
                        </div>
                        <div class="col-xl-3">
                            <span>Номер телефона <sup>*</sup></span><br>
                            <input value="+7(999) 999-99-99" id="phone_parent" class="phone" type="text" placeholder="+7(___) ___-__-__"
                                   autocomplete="off"
                                   name="phone_parent">
                        </div>
                    </div>
                    <div class="col-xl-3 offset-xl-9">
                        <input type="submit" value="Добавить">
                    </div>
                </form>
            </div>

        </div>
        <%--</div>--%>
        <%--</main>--%>
    </div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
<script type="text/javascript" src="resources/js/phone.js"></script>
<script type="text/javascript" src="resources/js/options.js"></script>

<%--<script type="text/javascript" src="resources/js/get_students_teacher.js"></script>--%>

<script>
    function deleteRowBranch(obj) {

        $(obj).parent().parent().slideUp("normal", function () {
            $(this).remove();
        });

        // $(obj).parent().parent()
    }
</script>

<script>

    function addRowBranch() {


        $('<div class="row pane" style="display: none;">' +

            '<div class="col-xl-3">' +
            '<span>Филиал <sup>*</sup></span><br>' +
            '<select id="branch" class="branch" name="branches" required>' +
            '</select>' +
            '</div>' +

            '<div class="col-xl-3">' +
            '<span>День <sup>*</sup></span><br>' +
            '<select id="days" class="days" name="days" required>' +
            '</select>' +
            '</div>' +

            '<div class="col-xl-3">' +
            '<span>Время занятия <sup>*</sup></span><br>' +
            '<select class="times" name="times" required>' +
            '</select>' +
            '</div>' +

            '<div class="col-xl-3">' +
            '<br>' +
            '<button id="remove" class="remove_button" onclick="deleteRowBranch(this)" type="button" >' +
            '<span style="float: left;">Удалить филиал</span><img width="15%" src="resources/ico/icons8-minus-48.png" alt="">' +
            '</button>' +
            '</div>' +

            '</div>' +
            '</div>'

        ).appendTo($('#branches')).slideDown("normal");

        // $('#branches').prepend(
        //     '<div class="row pane none" style="margin: auto; margin-bottom: 20px; border: 1px solid #000; border-radius: 5px; padding-bottom: 30px; padding-top: 10px;">' +
        //
        //     '<div class="col-xl-3">' +
        //     '<span>Филиал <sup>*</sup></span><br>' +
        //     '<select id="branch" name="branch_id" required>' +
        //     '</select>' +
        //     '</div>' +
        //
        //     '<div class="col-xl-3">' +
        //     '<span>День <sup>*</sup></span><br>' +
        //     '<select id="days" name="days" required>' +
        //     '</select>' +
        //     '</div>' +
        //
        //     '<div class="col-xl-3">' +
        //     '<span>Время занятия <sup>*</sup></span><br>' +
        //     '<select class="time" name="time" required>' +
        //     '</select>' +
        //     '</div>' +
        //
        //     '<div class="col-xl-3">' +
        //     '<br>' +
        //     '<button id="remove" class="remove-button" onclick="deleteRowBranch(this)" type="button" style="float: right; text-align: right; background: transparent; border: none;">' +
        //     '<span style="float: left;">Удалить филиал</span><img width="15%" src="resources/ico/icons8-minus-48.png" alt="">' +
        //     '</button>' +
        //     '</div>' +
        //
        //     '</div>' +
        //     '</div>'
        // );
        getBranches();
        getDays();
        getTime();


    }
</script>

<script type="text/javascript" src="resources/js/getWeekDay.js"></script>
<script type="text/javascript" src="resources/js/get_groups.js"></script>
<script type="text/javascript" src="resources/js/add_student.js"></script>

</body>
</html>