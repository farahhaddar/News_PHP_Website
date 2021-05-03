$(document).ready(function () {
    
    
    $(".like, .unlike").click(function () {
        var id = this.id;

        $.ajax({
            url: 'Apis/auth.php',
            type: "GET",
            data: {},
            dataType: 'json',
            success: function (data) {
             if(data['status']==200){
            
                 var split_id = id.split("_");
                 var text = split_id[0];
                 var user_id = data['user_id'];
                 var article_id = split_id[1];
            
    
                 // inding click type
                 var type = 0;
                 if (text == "like") {
                     type = 1;
                 } else {
                     type = 0;
                 }

                 // AJAX Request
                 $.ajax({
                     url: 'Apis/likes.php',
                     type: "POST",
                     data: {
                         article_id: article_id,
                         user_id: user_id,
                         type: type
                     },
                     dataType: 'json',
                     success: function (data) {
                         var likes = data['likes'];
                         var unlikes = data['unlikes'];
                         $("#likes").text(likes);
                         $("#unlikes").text(unlikes);
                         if (type == 1) {
                             $("#like_" + article_id).css("color", "#008ad3");
                             $("#unlike_" + article_id).css("color", "black");


                         }
                         if (type == 0) {
                             $("#unlike_" + article_id).css("color", "#ff0b37");
                             $("#like_" + article_id).css("color", "black");

                         }
                     },
                     error: function (data) {
                         console.log('error')

                     }


                }
                 
                 
                 );
             }else{
                 if (data['status'] == 302) {

                  var location= data['Location'];
                   window.location.href =location;

                 }
             }

                
            },
            error: function (data) {
                console.log('error')

            }


        });

        

    });

});