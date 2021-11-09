function getMe() {
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
                // console.log(data);
                // $('#loginUser').attr("value", "" + data.id);
                console.log(data.name);
                $('#name_user').text("Пользователь: " + data.name);
            }
        }
    });
}

//Загрузка
$(document).ready(function () {
    getMe();
});