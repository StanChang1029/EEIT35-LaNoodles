$("#keyInPassword").on("click", function(e) {
    $("input#memberAccount").val("eeit350401");
    $("input#memberPassword").val("eeit350401");
    $("input#checkPassword").val("eeit350401");

    account_check = false;
    password_check = false;
    null_check = false;
});

$("#memberAccount").on("change", function(e) {
    account = $("#memberAccount").val();
    // console.log(account);
    if (account == "") {
        $("#noticeAccount").text("帳號不可填空");
    } else {
        $.ajax({
            type: 'get',
            url: '/member/' + account,
            success: function(data) {
                if (data != "") { //用!= null 抓不到
                    $("#noticeAccount").text("帳號已存在");
                    account_check = true;
                } else {
                    $("#noticeAccount").text("");
                    account_check = false;
                }
            }
        });
    }


    // if (account == 'aaa') {
    //     $("#noticeAccount").text("帳號已存在");
    //     account_check = true;
    // } else {
    //     $("#noticeAccount").text("");
    //     account_check = false;
    // }

});

$("#checkPassword,#memberPassword").on("change", function(e) {
    password = $("input#memberPassword").val();
    checkPassword = $("input#checkPassword").val();

    if (password != checkPassword) {
        $("#noticeCheckPassword").text("輸入的兩個密碼並不相符，請再試一次。");
        password_check = true;
    } else {
        $("#noticeCheckPassword").text("");
        password_check = false;
    }
});