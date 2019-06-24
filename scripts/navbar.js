$(document).ready(function() {
    $(window).on("scroll", function() {
        if ($(window).scrollTop() >= 20) {
            $(".navbar").addClass("compressed");
            //$(".img-fluid").addClass("float-left");
            document.getElementById("me").style.maxWidth="10%";
        } else {
            $(".navbar").removeClass("compressed");
            //$(".img-fluid").removeClass("float-left");
            document.getElementById("me").style.maxWidth="30%";
        }
    });
});
