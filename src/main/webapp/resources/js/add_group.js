$('#add_group').submit(function (event) {
    event.preventDefault();
    let formData = new FormData(event.target);
    let obj = {};

    var types = [];
    var eventTypes = document.forms['add_group'].elements['days'];



    for (var i = 0, len = eventTypes.length; i < len; i++) {
        if (eventTypes[i].checked) {
            types.push($(eventTypes[i]).val());
        }
    }

    var types2 = [];
    var eventTypes2 = document.forms['add_group'].elements['times'];

    console.log(eventTypes2.length);

    for (var i = 0; i < eventTypes2.length; i++) {
        if (eventTypes2[i].disabled === false) {
            types2.push($(eventTypes2[i]).val());
            console.log($(eventTypes2[i]).val());
        }
    }

    formData.forEach((value, key) => obj[key] = value);

    obj['days'] = types;
    obj['times'] = types2;


    console.log(JSON.stringify(obj));

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
                getGroups();
            }
        }
    });
});