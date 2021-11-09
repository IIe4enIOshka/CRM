//Загрузка
$(document).ready(function () {
    getBranches();
});

function getBranches() {
    $.ajax({
        type: 'get',
        url: '/get_branches',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            if (arr.length > 0) {
                $('.list_branches').html("");
            }

            $.each(arr, function (index) {
                $('.list_branches').append(
                    '<tr>' +
                    '<td>' + data[index].name + '</td>' +
                    '<td><a href="#">Список студентов</a></td>' +
                    '<td><a href="#"><img class="icon" src="resources/ico/pen-52.png" alt=""></a>' +
                    '<a href="#"><img class="icon" src="resources/ico/garbage-52.png" alt=""></a></td>' +
                    '</tr>');
            });
        }
    });
}