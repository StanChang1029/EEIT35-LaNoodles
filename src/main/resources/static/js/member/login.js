// function loginAdmin() {
//     $("#account").text("admin");
//     $("#password").text("admin");
// }

// function loginTest() {
//     $("#account").text("test");
//     $("#password").text("test");
// }

$("#keyInAdmin").on("click", function(e) {
    // console.log("admin");
    $("input#account").val("admin");
    $("input#memberPassword").val("admin");
    // console.log($("#account").value());
    // console.log($("#password").text());
});

$("#keyInMember1").on("click", function(e) {
    $("input#account").val("eeit350401");
    $("input#memberPassword").val("eeit350401");
});

$("#keyInMember2").on("click", function(e) {
    $("input#account").val("eeit350402");
    $("input#memberPassword").val("eeit350402");
});

$("#keyInMember3").on("click", function(e) {
    $("input#account").val("eeit350403");
    $("input#memberPassword").val("eeit350403");
});

$("#keyInMember4").on("click", function(e) {
    $("input#account").val("eeit350404");
    $("input#memberPassword").val("eeit350404");
});

$("#keyInMember5").on("click", function(e) {
    $("input#account").val("eeit350405");
    $("input#memberPassword").val("eeit350405");
});