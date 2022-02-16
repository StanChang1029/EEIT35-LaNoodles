$("#eyePassword").on({
    mouseenter: showPassword,
    mouseleave: showPassword
})

function showPassword() {
    var txtPassword = $("#memberPassword");

    if (txtPassword.attr("type") == "text") {
        //hide
        // console.log("hide");
        $("#eyePassword").attr('class', 'bi bi-eye-slash')
        txtPassword.attr("type", "password");
    } else {
        //show
        // console.log("show");
        $("#eyePassword").attr('class', 'bi bi-eye')
        txtPassword.attr("type", "text");
    }
}