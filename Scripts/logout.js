$(document).ready(function () {


    $("#logout").click(function () {
        $.ajax({
            url: 'Apis/logout.php',
            type: "GET",
            data: {},
            dataType: 'json',
            success: function (data) {
                if (data['status'] == 200) {
                    var location = data['Location'];
                    window.location.href = location;
                } else {
                    if (data['status'] == 500) {
                        var message = data['message'];
                        alert(message);

                    }
                }


            },
            error: function (data) {
                console.log('error')

            }


        });



    });

});