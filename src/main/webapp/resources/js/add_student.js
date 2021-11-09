$('#add_student').submit(function (event) {
    event.preventDefault();
    let formData = new FormData(event.target);
    let obj = {};

    // var types3 = [];
    // var eventTypes3 = document.forms['add_student'].elements['branches'];
    //
    // for (var i = 0; i < eventTypes3.length; i++) {
    //     if (eventTypes3[i].checked) {
    //         types3.push($(eventTypes3[i]).val());
    //         console.log($(eventTypes3[i]).val());
    //     }
    // }

    // event.preventDefault();
    // let formData = new FormData(event.target);
    // let obj = {};

    // var types = [];
    // var eventTypes = document.forms['add_student'].elements['days'];
    //
    // console.log(eventTypes.length);
    //
    // for (var i = 0; i < eventTypes.length; i++) {
    //     if (eventTypes[i].checked) {
    //         types.push($(eventTypes[i]).val());
    //         console.log($(eventTypes[i]).val());
    //     }
    // }
    //
    // var types2 = [];
    // var eventTypes2 = document.forms['add_student'].elements['times'];
    //
    // // console.log(eventTypes2.length);
    //
    // for (var i = 0; i < eventTypes2.length; i++) {
    //     if (eventTypes2[i].disabled === false) {
    //         types2.push($(eventTypes2[i]).val());
    //         // console.log($(eventTypes2[i]).val());
    //     }
    // }

    var val1=[];
    var val2=[];
    var val3=[];

    $('select[name="branches"] option:selected').each(function() {
        val1.push($(this).val());
    });

    $('select[name="days"] option:selected').each(function() {
        val2.push($(this).val());
    });

    $('select[name="times"] option:selected').each(function() {
        val3.push($(this).val());
    });



    formData.forEach((value, key) => obj[key] = value);

    obj['branches'] = val1;
    obj['days'] = val2;
    obj['times'] = val3;

    // formData.forEach((value, key) => obj[key] = value);

    // obj['groups'] = types;

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
            }
        }
    });
});