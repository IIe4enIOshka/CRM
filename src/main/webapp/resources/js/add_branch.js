$('#add_branch').submit(function (event) {
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
                console.log(result.message);
            }
            if (result.status === 'success') {
                console.log(result.message);
                getBranches();
            }
        }
    });
});