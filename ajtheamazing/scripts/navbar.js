$(document).ready(function() {
    $(window).on("scroll", function() {
        if ($(window).scrollTop() >= 250) {
            $(".navbar").addClass("compressed");
            document.getElementById("me").style.maxWidth="7%";
            $('#navbar-header-text').hide();
            $('#navbarNav').show();

        } else {
            $(".navbar").removeClass("compressed");
            document.getElementById("me").style.maxWidth="30%";
            $('#navbar-header-text').show();
            $('#navbarNav').hide();
        }
    });
});
