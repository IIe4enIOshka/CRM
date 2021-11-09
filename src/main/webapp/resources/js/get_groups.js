//Загрузка
$(document).ready(function () {
    getBranches();
    getTeachers();
    // getGroups();
});

function getTeachers() {
    $.ajax({
        type: 'get',
        url: '/get_teachers',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            if (arr.length > 0) {
                $('#teacher').html("");
            }

            $('#teacher').append('<option selected disabled>Выберите учителя</option>');

            $.each(arr, function (index) {
                $('#teacher').append(
                    '<option value="' + data[index].id + '">' + data[index].user.name + '</option>');
            });
        }
    });
}

function getBranches() {
    $.ajax({
        type: 'get',
        url: '/get_branches',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            // if (arr.length > 0) {
            //     $('.branch').html("");
            // }

            $.each(arr, function (index) {
                $('.branch').append(
                    '<option value="' + data[index].id + '">' + data[index].name + '</option>');

                // $('.branch').append(
                //     '<label class="list-group-item d-flex gap-2">' +
                //     '<input class="form-check-input flex-shrink-0" name="groups" type="checkbox" value="' + data[index].id + '">' +
                //     '<span>' + data[index].name + '</span>' +
                //     '</label>'
                // )
            });
        }
    });
}

function getGroups() {
    $.ajax({
        type: 'get',
        url: '/get_groups',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            if (arr.length > 0) {
                $('.list_groups').html("");
            }

            $.each(arr, function (index) {
                $('.list_groups').append(
                    '<tr>' +
                    '<td>' + data[index].branch.name + '</td>' +
                    '<td>' + data[index].name + '</td>' +
                    '<td>' + data[index].teacher.user.name + '</td>' +
                    '</tr>');
            });
        }
    });
}

