function getStudent() {
    var group = $('#groups').val();

    let obj = {
        group: group
    };

    $.ajax({
        type: 'post',
        url: '/get_students_group_branch',
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
                    '<td><input class="visit_input_add_payment" type="button" value="Добавить оплату"></td>' +
                    '</tr>');
            });
        }
    });
}