//Загрузка
$(document).ready(function () {
    getPayments();
});

function getPayments() {
    var _id = getUrlParameter('id');

    let obj = {
        id: _id
    };

    $.ajax({
        type: 'post',
        url: '/get_payments_by_id',
        data: JSON.stringify(obj),
        dataType: 'json',
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            var arr = data;

            if (arr.length > 0) {
                $('.list_payments').html("");
            }

            $.each(arr, function (index) {
                var date_pay = new Date(data[index].date_pay);

                // $('#payment_row').append(
                //     '<div class="row student_info">' +
                //     '<div class="col-md-1">' + data[index].number + '</div>' +
                //     '<div class="col-md-2 text-center">' + formatDate(date_pay) + '</div>' +
                //     '<div class="col-md-2 text-center">' + data[index].reason + '</div>' +
                //     '<div class="col-md-2 text-center">' + data[index].amount + '</div>' +
                //     '<div class="col-md-5 text-center">' + data[index].remark + '</div>' +
                //     '</div>');

                $('.list_payments').append(
                    '<tr>' +
                    '<td>' + data[index].number + '</td>' +
                    '<td>' + formatDate(date_pay) + '</td>' +
                    '<td>' + data[index].reason + '</td>' +
                    '<td>' + data[index].amount + '</td>' +
                    '<td>' + data[index].remark + '</td>' +
                    '</tr>'
                );
            });
        }
    });
}