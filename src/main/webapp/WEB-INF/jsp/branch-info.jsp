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
<header class="header_navbar bg shadow">
    <a class="col-md-2" href="/">НАДиП</a>
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
                <div class="d-flex align-items-start">


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
                                        <li><a href="/add-student" class="link-dark">Добавить студента </a></li>
                                        <li><a href="/list-students" class="link-dark">Список студентов </a></li>
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
                                        <li><a href="/visits" class="link-dark">Посещаемость студентов </a></li>
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
                                    <button class="btn btn-toggle align-items-center"
                                            data-bs-toggle="collapse"
                                            data-bs-target="#education-collapse" aria-expanded="true">
                                        Обучение
                                    </button>
                                </div>
                                <div class="collapse show" id="education-collapse">
                                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                        <li><a href="/branch" class="link-dark  active_page">Филиалы </a></li>
                                        <li><a href="/groups" class="link-dark">Группы </a></li>
                                        <li><a href="#" class="link-dark">Преподаватели </a></li>
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
            </div>
        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">
            <div class="tab-content" id="v-pills-tabContent">



                <div class="row">
                    <div class="col-xl-3">
                        <div class="main_card_add_branch shadow">

                            <%--<div class="row">--%>
                            <%--<div class="col-md-2">--%>
                            <%--<form action="javascript:history.back()" method="get">--%>
                            <%--&lt;%&ndash;<input class="button_back" type="submit" name="search" value="&#8592;">&ndash;%&gt;--%>
                            <%--<button class="button_back shadow">--%>
                            <%--<img src="resources/ico/arrow-left-52.png" alt="">--%>
                            <%--</button>--%>
                            <%--</form>--%>
                            <%--&lt;%&ndash;<a class="button_back" href="javascript:history.back()">&#8592;</a>&ndash;%&gt;--%>
                            <%--</div>--%>

                            <%--<div class="col-md-10">--%>
                            <h5 class="text-center">Информация о студенте</h5>
                            <%--</div>--%>
                            <%--</div>--%>

                            <div class="row student_info text-center">
                                <h4 id="name"></h4>
                            </div>
                            <div class="row student_info">
                                <div class="col-md-8"><b>Номер поступления</b></div>
                                <div class="col-md-4 text_right" id="id"></div>
                            </div>
                            <div class="row student_info">
                                <div class="col-md-6"><b>Группы</b></div>
                                <div class="col-md-6 text_right" id="groups">

                                </div>
                            </div>
                            <div class="row student_info">
                                <div class="col-md-6"><b>Направление</b></div>
                                <div class="col-md-6 text_right" id="speciality"></div>
                            </div>
                            <div class="row student_info">
                                <div class="col-md-6"><b>Пол</b></div>
                                <div class="col-md-6 text_right" id="sex"></div>
                            </div>
                            <div class="row student_info">
                                <div class="col-md-6"><b>Возраст</b></div>
                                <div class="col-md-6 text_right" id="age"></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-9">
                        <div class="row main_card_add_branch shadow">
                            <%--<div class="row">--%>
                            <%--<div class="col-md-1 offset-11">--%>
                            <%--<form action="javascript:history.back()" method="get">--%>
                            <%--&lt;%&ndash;<input class="button_back" type="submit" name="search" value="&#8592;">&ndash;%&gt;--%>
                            <%--<button class="button_back shadow">--%>
                            <%--<img src="resources/ico/arrow-left-52.png" alt=""> Назад--%>
                            <%--</button>--%>
                            <%--</form>--%>
                            <%--&lt;%&ndash;<a class="button_back" href="javascript:history.back()">&#8592;</a>&ndash;%&gt;--%>
                            <%--</div>--%>
                            <%--</div>--%>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link active" id="profile-tab" data-bs-toggle="tab"
                                            data-bs-target="#profile" type="button" role="tab" aria-controls="profile"
                                            aria-selected="true">Профиль
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="payment-tab" data-bs-toggle="tab"
                                            data-bs-target="#payment" type="button" role="tab" aria-controls="payment"
                                            aria-selected="false">Взносы
                                    </button>
                                </li>
                                <li class="nav-item" role="presentation">
                                    <button class="nav-link" id="attendance-tab" data-bs-toggle="tab"
                                            data-bs-target="#attendance" type="button" role="tab"
                                            aria-controls="attendance" aria-selected="false">Посещаемость
                                    </button>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="profile" role="tabpanel"
                                     aria-labelledby="profile-tab">
                                    <div class="row student_info">
                                        <div class="col-md-6">Дата поступления</div>
                                        <div class="col-md-6" id="date_receipt"></div>
                                    </div>
                                    <div class="row student_info">
                                        <div class="col-md-6">Дата рождения</div>
                                        <div class="col-md-6" id="date_birday"></div>
                                    </div>
                                    <div class="row student_info">
                                        <div class="col-md-6">Мобильный номер</div>
                                        <div class="col-md-6" id="phone"></div>
                                    </div>

                                    <br>
                                    <h5>Родитель / Детали родителя</h5>
                                    <div class="row student_info">
                                        <div class="col-md-6">Имя</div>
                                        <div class="col-md-6" id="name_parent"></div>
                                    </div>
                                    <div class="row student_info">
                                        <div class="col-md-6">Телефон</div>
                                        <div class="col-md-6" id="phone_parent"></div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="payment" role="tabpanel" aria-labelledby="payment-tab">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <form action="/payments" method="GET">
                                                <input id="form_payments" class="none" type="text" name="id" value="" readonly>
                                                <input class="input_add_pay"  type="submit" value="Добавить оплату">
                                            </form>
                                        </div>
                                    </div>
                                    <div class="row student_info">
                                        <div class="col-md-1 text-center">#</div>
                                        <div class="col-md-2 text-center">Дата оплаты</div>
                                        <div class="col-md-2 text-center">Причина</div>
                                        <div class="col-md-2 text-center">Сумма</div>
                                        <div class="col-md-5 text-center">Комментарий</div>
                                    </div>
                                    <div id="payment_row">
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="attendance" role="tabpanel"
                                     aria-labelledby="attendance-tab">
                                    <div id="datepicker"></div>
                                    <input type="hidden" id="datepicker_value">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </main>
    </div>
</div>

<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/get_me.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
    /* Локализация datepicker */
    $.datepicker.regional['ru'] = {
        closeText: 'Закрыть',
        prevText: 'Предыдущий',
        nextText: 'Следующий',
        currentText: 'Сегодня',
        monthNames: ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'],
        monthNamesShort: ['Янв', 'Фев', 'Мар', 'Апр', 'Май', 'Июн', 'Июл', 'Авг', 'Сен', 'Окт', 'Ноя', 'Дек'],
        dayNames: ['воскресенье', 'понедельник', 'вторник', 'среда', 'четверг', 'пятница', 'суббота'],
        dayNamesShort: ['вск', 'пнд', 'втр', 'срд', 'чтв', 'птн', 'сбт'],
        dayNamesMin: ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'],
        weekHeader: 'Не',
        dateFormat: 'dd.mm.yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
    };
    $.datepicker.setDefaults($.datepicker.regional['ru']);
</script>
<script>
    // window.your_dates = [new Date(2021, 10, 6).toString()];
    window.your_dates = [new Date("2021-11-6").toString()];
    $(function () {
        $("#datepicker").datepicker({
            onSelect: function (date) {
                $('#datepicker_value').val(date)
            },
            dateFormat: 'yy-mm-dd',
            beforeShowDay: function (date) {
                if ($.inArray(date.toString(), your_dates)) {
                    return [true, '', ''];
                } else {
                    return [true, 'css-class-to-highlight', 'tooltip text'];
                }
            }
        });
        $("#datepicker").datepicker("setDate", $('#datepicker_value').val());
    });
</script>
<script type="text/javascript" src="resources/js/formatDate.js"></script>
<script type="text/javascript" src="resources/js/getUrlParam.js"></script>
<script type="text/javascript" src="resources/js/get_student_info.js"></script>

</body>
</html>