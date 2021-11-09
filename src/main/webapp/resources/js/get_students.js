//Загрузка
$(document).ready(function () {
    $.ajax({
        type: 'get',
        url: '/get_students',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            if (arr.length > 0) {
                $('.list_students').html("");
            }

            $.each(arr, function (index) {
                // $('.students').append(
                //     '<div class="row main_card_info_body">' +
                //     '<div class="col-xl-1">' +
                //     '<span>' + (index + 1) + '</span>' +
                //     '</div>' +
                //     '<div class="col-xl-2">' +
                //     '<a href="/student-info?id=' + data[index].id + '">' +
                //     '<span>' + data[index].surname + ' ' + data[index].name + '</span>' +
                //     '</a>' +
                //     '</div>' +
                //     '<div class="col-xl-2">' +
                //     '<span>' + data[index].groups.branch.name + '</span>' +
                //     '</div>' +
                //     '<div class="col-xl-2">' +
                //     '<span>' + data[index].speciality + '</span>' +
                //     '</div>' +
                //     '<div class="col-xl-1">' +
                //     '<span>' + data[index].age + '</span>' +
                //     '</div>' +
                //     '<div class="col-xl-1">' +
                //     '<span>' + data[index].sex + '</span>' +
                //     '</div>' +
                //     '<div class="col-xl-2">' +
                //     '<span>' + data[index].phone + '</span>' +
                //     '</div>' +
                //     '<div class="col-xl-1">' +
                //     '<span><a href="#"><img class="icon" src="resources/ico/pen-52.png" alt=""></a>' +
                //     '<a href="#"><img class="icon" src="resources/ico/garbage-52.png" alt=""></a></span>' +
                //     '</div>' +
                //     '</div>');

                var string = "";

                // for (var i = 0; i < data[index].groups.length; i++) {
                //     string += data[index].groups[i].name + '<br>';
                // }

                $('.list_students').append(
                    '<tr>' +
                    '<td>' + data[index].id + '</td>' +
                    '<td><a href="/student-info?id=' + data[index].id + '">' +
                    '<span>' + data[index].surname + ' ' + data[index].name + '</span>' +
                    '</a></td>' +
                    // '<td>' +
                    // string +
                    // '</td>' +
                    '<td>' + data[index].speciality + '</td>' +
                    '<td>' + data[index].age + '</td>' +
                    '<td>' + data[index].sex + '</td>' +
                    '<td>' + data[index].phone + '</td>' +
                    '</tr>');
            });
        }
    });
});