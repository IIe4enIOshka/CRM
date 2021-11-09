$(document).ready(function () {
    // getGroups();
    getBranches();
    $('#datePicker').val(new Date().toDateInputValue());
});

Date.prototype.toDateInputValue = (function () {
    var local = new Date(this);
    local.setMinutes(this.getMinutes() - this.getTimezoneOffset());
    return local.toJSON().slice(0, 10);
});

function getBranches() {
    $.ajax({
        type: 'get',
        url: '/get_branches',
        dataType: 'json',
        success: function (data) {
            var arr = data;

            $.each(arr, function (index) {
                $('#branch').append(
                    '<option value="' + data[index].name + '">' + data[index].name + '</option>');
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

            $('#groups').html('');
            $('#groups').append('<option selected>Выберите группу</option>');

            $.each(arr, function (index) {
                $('#groups').append(
                    '<option value="' + data[index].name + '">' + data[index].name + '</option>');
                console.log(data[index].teacher)
            });
        }
    });
}

function getGroupsBranch() {

    var branch = $('#branch').val();

    let obj = {
        branch: branch
    };

    if (branch !== "") {
        $.ajax({
            type: 'post',
            url: '/get_groups_branch',
            data: JSON.stringify(obj),
            dataType: 'json',
            contentType: false,
            cache: false,
            processData: false,
            success: function (data) {
                var arr = data;

                $('#groups').html('');
                $('#groups').append('<option selected>Выберите группу</option>');

                $.each(arr, function (index) {
                    $('#groups').append(
                        '<option value="' + data[index].name + '">' + data[index].name + '</option>');
                });
            }
        });
    } else {
        getGroups();
    }

}