//Загрузка
$(document).ready(function () {

    var _id = getUrlParameter('id');

    let obj = {
        id: _id
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

        }
    });
});