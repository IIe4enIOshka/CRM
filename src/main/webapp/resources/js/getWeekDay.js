// let days = ['Воскресенье', 'Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота'];
//
// function getWeekDay(date) {
//     return days[date.getDay()];
// }

function getTime() {
    $.ajax({
        type: 'get',
        url: '/get_times',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            // if (arr.length > 0) {
                $('.times').html("");
            // }

            $.each(arr, function (index) {
                $('.times').append(
                    '<option value="' + data[index].id + '">' + data[index].time + '</option>');
            });
        }
    });
}

function timeShow() {
    $('input:checkbox:not(:checked)').each(function () {
        $(this).parent().parent().parent().children(".time").addClass("none");
    });
    $('input:checkbox:checked').each(function () {
        $(this).parent().parent().parent().children(".time").removeClass("none");
        $(this).parent().parent().parent().children(".time").children("select").attr("disabled", false);
    });
}

function getDays() {
    $('.days').html("");
    for (var i = 1; i < days.length; i++) {
        // $('.dropdown-menu').append(
        //     // '<div class="row">' +
        //     // '<div class="col-xl-6">' +
        //     // '<label class="list-group-item d-flex gap-2">' +
        //     // '<input class="form-check-input flex-shrink-0 check_box" onchange="timeShow()" name="days" type="checkbox" value="' + (i) + '">' +
        //     // '<span>' + days[i] + '</span>' +
        //     // '</label>' +
        //     // '</div>' +
        //     // '<div class="col-xl-6 time none">' +
        //     // '<span>Время занятия <sup>*</sup></span><br>' +
        //     // '<select disabled class="times" name="times">' +
        //     // '</select>' +
        //     // '</div>' +
        //     // '</div>'
        //
        //     // '<li class="dropdown-item">' +
        //     // '<input class="form-check-input flex-shrink-0 check_box" name="days" type="checkbox" value="' + i + '">' +
        //     // '<span>' + days[i] + '</span>' +
        //     // '</li>'
        //
        //
        // );
        $('.days').append(
            '<option value="' + i + '">' + days[i] + '</option>');
    }
    // $('.dropdown-menu').append(
    //     // '<div class="row">' +
    //     // '<div class="col-xl-6">' +
    //     // '<label class="list-group-item d-flex gap-2">' +
    //     // '<input class="form-check-input flex-shrink-0" name="days" type="checkbox" value="' + 7 + '">' +
    //     // '<span>' + days[0] + '</span>' +
    //     // '</label>' +
    //     // '</div>' +
    //     // '<div class="col-xl-6 none time">' +
    //     // '<span>Время занятия <sup>*</sup></span><br>' +
    //     // '<select disabled class="times" name="times">' +
    //     // '</select>' +
    //     // '</div>' +
    //     // '</div>'
    //
    //
    //
    //     // '<li class="dropdown-item">' +
    //     // '<input class="form-check-input flex-shrink-0" name="days" type="checkbox" value="' + 7 + '">' +
    //     // '<span>' + days[0] + '</span>' +
    //     // '</li>'
    //
    //
    //     // '<span>Время занятия <sup>*</sup></span><br>' +
    //     // '<select disabled class="times" name="times">' +
    //     // '</select>'
    // );
    $('.days').append(
        '<option value="' + 7 + '">' + days[0] + '</option>');
}

$(document).ready(function () {
    getDays();
    getTime();
});