//add hvr-skew class to buttons
$(document).ready(function(){
    //prevent page from growing and shrink the jumbotron so that you can see the entire project div
    $('body').css('height', '100%');
    $('body').css('overflow', 'hidden');

    //hide project1 through project 9 and every second display a random one again
    $("#project1").hide();
    $("#project2").hide();
    $("#project3").hide();
    $("#project4").hide();
    $("#project5").hide();
    $("#project6").hide();
    $("#project7").hide();
    $("#project8").hide();
    $("#project9").hide();

    setInterval(function(){
        $("#project1").hide();
        $("#project2").hide();
        $("#project3").hide();
        $("#project4").hide();
        $("#project5").hide();
        $("#project6").hide();
        $("#project7").hide();
        $("#project8").hide();
        $("#project9").hide();
        var random = Math.floor(Math.random() * 9) + 1;
        //give it a random background color before showing
        $("#project" + random).css("background-color", randomColor());
        function randomColor(){
            var r = Math.floor(Math.random() * 256);
            var g = Math.floor(Math.random() * 256);
            var b = Math.floor(Math.random() * 256);
            return "rgb(" + r + ", " + g + ", " + b + ")";
        }
        $("#project" + random).show();
        
    }, 2000);

   
});