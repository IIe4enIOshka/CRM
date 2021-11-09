/*Регистрация*/
$(document).ready(function () {
    $('#registration').submit(function (event) {
        event.preventDefault();
        // $(`input`).removeClass('error2');
        // event.target — это HTML-элемент form
        let formData = new FormData(event.target);
        // Собираем данные формы в объект
        let obj = {};
        formData.forEach((value, key) => obj[key] = value);
        $.ajax({
            type: $(this).attr('method'),
            url: $(this).attr('action'),
            data: JSON.stringify(obj),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData: false,
            success: function (result) {
                if (result.status === 'error') {
                    $('.msg').slideDown();
                    $('.msg').text(result.message);
                }
                if (result.message === 'success') {
                    $(location).attr('href', "/login");
                }
            }
        });
    });
});