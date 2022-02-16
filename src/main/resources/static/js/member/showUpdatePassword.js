$("#eyeOldPassword").on({
    mouseenter: showOldPassword,
    mouseleave: showOldPassword
})

function showOldPassword() {
    var txtPassword = $("#oldPassword");

    if (txtPassword.attr("type") == "text") {
        //hide
        // console.log("hide");
        $("#eyeOldPassword").attr('class', 'bi bi-eye-slash')
        txtPassword.attr("type", "password");
    } else {
        //show
        // console.log("show");
        $("#eyeOldPassword").attr('class', 'bi bi-eye')
        txtPassword.attr("type", "text");
    }
}

$("#eyeNewPassword").on({
    mouseenter: showNewPassword,
    mouseleave: showNewPassword
})

function showNewPassword() {
    var txtPassword = $("#newPassword");

    if (txtPassword.attr("type") == "text") {
        //hide
        // console.log("hide");
        $("#eyeNewPassword").attr('class', 'bi bi-eye-slash')
        txtPassword.attr("type", "password");
    } else {
        //show
        // console.log("show");
        $("#eyeNewPassword").attr('class', 'bi bi-eye')
        txtPassword.attr("type", "text");
    }
}

$("#eyeCheckPassword").on({
    mouseenter: showCheckPassword,
    mouseleave: showCheckPassword
})

function showCheckPassword() {
    var txtPassword = $("#checkNewPassword");

    if (txtPassword.attr("type") == "text") {
        //hide
        // console.log("hide");
        $("#eyeCheckPassword").attr('class', 'bi bi-eye-slash')
        txtPassword.attr("type", "password");
    } else {
        //show
        // console.log("show");
        $("#eyeCheckPassword").attr('class', 'bi bi-eye')
        txtPassword.attr("type", "text");
    }
}