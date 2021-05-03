$(document).ready(function () {
    
    // like and unlike click
    $(".like",".unlike").click(function () {
        alert('hi ajax')
        var id = this.id;   // Getting Button id
        
        var split_id = id.split("_");
        var user_id = split_id[1];
        var article_id = split_id[2];
        var user_status = split_id[3];
        
    
        // AJAX Request
        $.ajax({
            url: 'Apis/likes.php',
            type: "POST",
            data: {
                article_id:article_id,
                user_id:user_id,
                user_status: user_status
                },
            dataType: 'json',
            success: function (data) {
                var likes = data['likes'];
                var user_status = data['user_status'];
                $("#likes").text(likes); 
                $("#user_status").text(user_status);        
            },
            error: function (data) {
                console.log('error')
    
            }
          

        });

    });

});