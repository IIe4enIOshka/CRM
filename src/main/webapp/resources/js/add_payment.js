$('#add_payment').submit(function (event) {
    event.preventDefault();

    var _id = getUrlParameter('id');
    $('#student_id').attr('value', _id);

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
                console.log(result.message);
            }
            if (result.status === 'success') {
                console.log(result.message);
                getPayments();
            }
        }
    });
});