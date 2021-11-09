//Загрузка
$(document).ready(function () {
    getStudentInfo();
    // getGroupsStudentId();
});

function getGroupsStudentId() {
    var _id = getUrlParameter('id');

    let obj = {
        id: _id
    };

    $.ajax({
        type: 'post',
        url: '/get_groups_student_id',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            var arr = data;

            if (arr.length > 0) {
                $('#groups').html("");
            }

            $.each(arr, function (index) {
                $('#groups').append(
                    '<div class="row">' +
                    '<a href="/branch-info?id=' + data[index].id + '">' + data[index].name + '</a>' +
                    '</div>');
            });
        }
    });
}

function getStudentInfo() {
    var _id = getUrlParameter('id');

    let obj = {
        id: _id
    };

    $.ajax({
        type: 'post',
        url: '/get_student_info',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            $('#name').html(data.surname + " " + data.name);
            $('#id').html(data.id);
            // $('#branch').html(data.branch.name);
            $('#speciality').html(data.speciality);
            $('#sex').html(data.sex);
            $('#age').html(data.age);

            $('#form_payments').attr('value', data.id);



            var date_receipt = new Date(data.date_receipt);
            var date_birday = new Date(data.date_birday);

            $('#date_receipt').html(formatDate(date_receipt));
            $('#date_birday').html(formatDate(date_birday));
            $('#phone').html(data.phone);

            $('#course').html(data.course);


            $('#name_parent').html(data.parent.name);
            $('#phone_parent').html(data.parent.phone);




            var arr = data.payments;

            if (arr.length > 0) {
                $('#payment_row').html("");
            }

            $.each(arr, function (index) {
                var date_pay = new Date(data.payments[index].date_pay);

                $('#payment_row').append(
                    '<div class="row student_info">' +
                    '<div class="col-md-1">' + data.payments[index].number + '</div>' +
                    '<div class="col-md-2 text-center">' + formatDate(date_pay) + '</div>' +
                    '<div class="col-md-2 text-center">' + data.payments[index].reason + '</div>' +
                    '<div class="col-md-2 text-center">' + data.payments[index].amount + '</div>' +
                    '<div class="col-md-5 text-center">' + data.payments[index].remark + '</div>' +
                    '</div>');
            });

            arr = data.branches;

            if (arr.length > 0) {
                $('#branches').html("");
            }

            $.each(arr, function (index) {
                $('#branches').append(
                    '<div class="row">' +
                    '<a href="/branch-info?id=' + data.branches[index].id + '">' + data.branches[index].name + '</a>' +
                    '</div>');
            });
        }
    });
}