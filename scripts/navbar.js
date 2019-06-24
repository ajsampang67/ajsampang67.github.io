$(document).ready(function() {
    $(window).on("scroll", function() {
        if ($(window).scrollTop() >= 200) {
            $(".navbar").addClass("compressed");
            document.getElementById("me").style.maxWidth="5%";
            $('#navbar-header-text').hide();

        } else {
            $(".navbar").removeClass("compressed");
            document.getElementById("me").style.maxWidth="30%";
            $('#navbar-header-text').show();
        }
    });
});
