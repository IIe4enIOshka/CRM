//Загрузка
$(document).ready(function () {
    getTeacherId();
});

var Id;

function getTimes(id) {
    var day_now = $('#date_now').text();

    let obj = {
        id: id,
        day: day_now
    };

    $.ajax({
        type: 'post',
        url: '/get_times_teacher',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            var arr = data;

            $('#times').html('');
            $('#times').append('<option selected>Выберите время</option>');

            $.each(arr, function (index) {
                $('#times').append(
                    '<option value="' + data[index].id + '">' + data[index].time + '</option>');
            });
        }
    });
}

function getStudent() {
    let obj = {
        id: Id,
        time_id: $('#times').val()
    };

    $.ajax({
        type: 'post',
        url: '/get_students_teacher_time',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            // list_student = data;

            if (arr.length > 0) {
                $('.list_students').html("");
            }

            $.each(arr, function (index) {
                $('.list_students').append(
                    '<tr>' +
                    '<td>' +
                    '<a href="/student-info?id=' + data[index].id + '">' +
                    '<span>' + data[index].surname + ' ' + data[index].name + '</span>' +
                    '</a>' +
                    '</td>' +
                    '<td>' +
                    '<select class="visit_input">' +
                    '<option>Присутствует</option>' +
                    '<option>Отсутствует</option>' +
                    '<option>Предупредил</option>' +
                    '</select>' +
                    '</td>' +
                    '<td><input type="text"></td>' +
                    '<td><form action="/payments" method="GET">' +
                    '<input id="form_payments" class="none" type="text" name="id" value="' + data[index].id + '" readonly>' +
                    '<input class="input_add_pay"  type="submit" value="Добавить оплату">' +
                    '</form></td>' +
                    '</tr>');
            });
        }
    });
}

function getStudentsTeacherId(id) {
    let obj = {
        id: id
    };

    $.ajax({
        type: 'post',
        url: '/get_students_teacher',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {

            var arr = data;

            if (arr.length > 0) {
                $('.list_students').html("");
            }

            $.each(arr, function (index) {
                $('.list_students').append(
                    '<tr>' +
                    '<td>' +
                    '<a href="/student-info?id=' + data[index].id + '">' +
                    '<span>' + data[index].surname + ' ' + data[index].name + '</span>' +
                    '</a>' +
                    '</td>' +
                    '<td>' +
                    '<select class="visit_input">' +
                    '<option>Присутствует</option>' +
                    '<option>Отсутствует</option>' +
                    '<option>Предупредил</option>' +
                    '</select>' +
                    '</td>' +
                    '<td><input type="text"></td>' +
                    '<td><form action="/payments" method="GET">' +
                    '<input id="form_payments" class="none" type="text" name="id" value="' + data[index].id + '" readonly>' +
                    '<input class="input_add_pay"  type="submit" value="Добавить оплату">' +
                    '</form></td>' +
                    '</tr>');
            });
        }
    });
}

function getTeacherId() {
    let obj = {'username': $('#loginUser').val()};
    $.ajax({
        url: '/get_me',
        type: 'POST',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            if(data != null){
                Id = data.id;
                getStudentsTeacherId(data.id);
                getTimes(data.id);
            }
        }
    });
}