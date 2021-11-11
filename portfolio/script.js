//add hvr-skew class to buttons
$(document).ready(function(){
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
        $("#project" + random).show();
    }, 2000);
}
);