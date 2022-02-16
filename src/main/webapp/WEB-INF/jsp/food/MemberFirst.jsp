<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<head>

<link rel="stylesheet" type="text/css" href="../css/food/FirstFood.css" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<meta charset="UTF-8">
<title>預約頁面</title>

<!-- 這個要加 -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/templ/style.css">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/carousel/">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../css/templ/carousel.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,500;1,400;1,500&display=swap"
	rel="stylesheet">

<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="./resources/demos/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
<!--
影片 -->.embed-container {
	position: relative;
	padding-bottom: 56.25%;
	height: 0;
	overflow: hidden;
	max-width: 100%;
}

.embed-container iframe, .embed-container object, .embed-container embed
	{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

html {
	height: 100%;
}

body {
	background-image: url(/images/test.jpg);
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: 100%;
}

.mb-4 {
	color: bisque;
}

.i {
	display: block;
	margin: auto;
	width: 400px;
	border-radius: 1em;
	opacity: 60%;
}

.isel {
	display: block;
	margin: auto;
	width: 440px;
	border-radius: 20px;
}

h4 {
	color: rgba(255, 246, 246, 0.952);
}

figcaption {
	background-color: rgba(155, 24, 24, 0.452);
	color: rgba(255, 246, 246, 0.952);
	font-style: oblique;
	text-align: center;
	border-radius: 3em;
}

.pmenu {
	padding: 20px;
	margin: 20px;
	border-radius: 1.5em;
	background-color: rgba(255, 228, 196, 0.849);
	font-style: normal;
	color: rgb(150, 4, 4);
	font-size: 1.5em;
}

#footer1 {
	font-family: 'Ubuntu', sans-serif;
	font-size: 1.2rem;
	text-anchor: middle;
	color: white;
}

.c {
	font-family: 'Ubuntu', sans-serif;
}

@import
	url('https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,500;1,400;1,500&display=swap')
	;

body {
	background-color: rgba(176, 224, 230, 0.733);	
}

a.pe-auto, table, th, td {	
	padding: 10px
}
</style>

</head>
<body>



	<div class="wrapper d-flex align-items-stretch">
		<%@ include file="../Sidebar.jsp"%>
		<!-- 相對路徑喔 folder內的 ../Sidebar.jsp； 沒在folder內的 Sidebar.jsp-->

		<div id="content" class="p-4 p-md-5">
			<%@ include file="../Navbar.jsp"%>
			<!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
			<!-- 大家的內容 START-->
			
<h2 class="text-center" style="color:#800000;">餐廳預約</h2>
	<hr>
	<div style="font-size: 1.2rem; color:#3B3B3B; ">
		<form class="test-form" method="Post"
				action="./foodinsert.controller">
				<div class="form-container" style="background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:55px;border-radius:3em">
					<div class="form-group">
						<label>姓名:</label>
						<div class="input-container">
							<div class="input-group">
								<input type="text" name="name" size="10" maxlength="10"
									id="name_input" placeholder="請輸入姓名">
							</div>
							<span class="error-text" id="name-desc"></span>
						</div>
					</div>
					<div class="form-group">
						<label>預約時間:</label>
						<div class="input-container">
							<div class="input-group">
								<input type="date" name="date" id="date">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>時段:</label>
						<div class="input-container">
							<div class="radio-group">
								<select name="time" id="time">
									<option value="11:00">11:00</option>
									<option value="12:00">12:00</option>
									<option value="13:00">13:00</option>
									<option value="14:00">14:00</option>
									<option value="18:00">18:00</option>
									<option value="19:00">19:00</option>
									<option value="20:00">20:00</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>手機號碼:</label>
						<div class="input-container">
							<div class="input-group">
								<input type="text" name="phone" size="10" maxlength="10"
									id="phone_input" placeholder="請輸入手機號碼">
							</div>
							<span class="error-text" id="phone-desc"></span>
						</div>
					</div>
					<div class="form-group">
						<label>電子信箱:</label>
						<div class="input-container">
							<div class="input-group">
								<input type="email" name="mail" size="10" maxlength="30"
									id="mail_input" placeholder="請輸入電子信箱">
							</div>
							<span class="error-text" id="mail-desc"></span>
						</div>
					</div>
					<div class="form-group">
						<label>人數:</label>
						<div class="input-container">
							<div class="input-group">
								<input type="text" name="quantity" size="2" maxlength="10"
									id="quantity_input" placeholder="請輸入人數">
							</div>
							<span class="error-text" id="quantity-desc"></span> <span
								class="error-text" id="Sum"></span>
						</div>
					</div>
				</div>
				<div class="form-footer">
				    <button class="btn btn-primary mr-3" type="button" id="membeone" >一鍵輸入</button>

					<button class="btn btn-primary" type="submit" id="submit-btn" disabled>預約確認</button>
				</div>
			</form>
	</div>			
			<!-- 大家的內容 END-->
			<div class="container my-5">
				<br> <br> <br> <br> <br> <br> <br>
				<br>
				<%@ include file="../Footer.jsp"%>
				<!-- 相對路徑喔 folder內的 ../Footer.jsp； 沒在folder內的 Footer.jsp-->
			</div>
			<!-- End of .container -->

		</div>
	</div>


	<!-- 這個要加 -->
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<script src="/js/templ/popper.js"></script>
	<script src="/js/templ/bootstrap.min.js"></script>
	<script src="/js/templ/main.js"></script>


<script type="text/javascript">
$("#membeone").on("click", function(e) {
    $("input#name_input").val("李世麒");
    $("input#date").val("2022-02-15");
    $("input#time").val("11:00");
    $("input#phone_input").val("0972950626");
    $("input#mail_input").val("eeit35teamno4@gmail.com");
    $("input#quantity_input").val("2");
});


</script>

	<script>
		document.getElementById("name_input").addEventListener("blur",
				checkName);
		document.getElementById("phone_input").addEventListener("blur",
				checkphone);
		document.getElementById("quantity_input").addEventListener("blur",
				checkquantity);
		let submitBtn = document.getElementById("submit-btn");

		var verifyName = false;
		var verifyPhone = false;
		var verifyQuantity = false;

		function allcheck() {
	//		console.log(verifyName);
	//		console.log(verifyPhone);
	//		console.log(verifyQuantity);

			if (verifyName == true && verifyPhone == true
					&& verifyQuantity == true) {
				$("#submit-btn").attr("disabled", false);
			} else {
				$("#submit-btn").attr("disabled", true);
			}

		}

		function checkName() {
			let theidObj = document.getElementById("name_input")
			let theidObjVal = theidObj.value;
			let theidObjValLen = theidObjVal.length;
			let sp = document.getElementById("name-desc");
			if (theidObjVal == '')
				sp.innerHTML = "不可為空白";
			else if (theidObjValLen >= 3) {
				for (let i = 0; i < theidObjValLen; i++) {
					var reg = /^[\u4E00-\u9FA5]+$/
					ch = theidObjVal.charAt(i);
					console.log(ch)
					if (!reg.test(theidObj.value)) {
						sp.innerHTML = "只能輸入中文"
						break;
					} else {
						sp.innerHTML = "";
						verifyName = true;
					}
				}
			} else {
				sp.innerHTML = "姓名長度需大於等於3";
			}
		}
		function checkphone() {
			let thePwdObj = document.getElementById("phone_input");
			let thePwdObjVal = thePwdObj.value;
			let thePwdObjValLen = thePwdObjVal.length;
			let sp = document.getElementById("phone-desc");

			if (thePwdObjVal == '') {
				sp.innerHTML = "不能為空白";
				return false;
			} else if (thePwdObjValLen >= 10) {
				for (let i = 0; i < thePwdObjValLen; i++) {
					ch = thePwdObjVal.charAt(i);
					if (ch >= "0" && ch <= "9") {
						sp.innerHTML = ""
						verifyPhone = true;
					}
				}
			} else {
				sp.innerHTML = "手機號碼需為10位數字"
				return false;
			}

		}

		function checkquantity() {
			let thePwdObj = document.getElementById("quantity_input");
			let thePwdObjVal = thePwdObj.value;
			let thePwdObjValLen = thePwdObjVal.length;
			let sp = document.getElementById("quantity-desc");

			if (thePwdObjVal == '') {
				sp.innerHTML = "不能為空白";
				return false;
			} else if (thePwdObjValLen <= 1) {
				for (let i = 0; i < thePwdObjValLen; i++) {
					ch = thePwdObjVal.charAt(i);
					if (ch >= "0" && ch <= "9") {
						sp.innerHTML = "";
						verifyQuantity = true;
					}
				}
			} else {
				sp.innerHTML = "人數過多,請電話通知店家"
				return false;
			}

		}

		re = window.setInterval(allcheck, 500);
		window.setInterval(checkquantity,500);
		window.setInterval(checkphone,500);
		window.setInterval(checkName,500)

		
	</script>
	<script>
		$("#quantity_input").click(
				function a() {

					var date = $("#date").val();
					var time = $("#time").val();
////					console.log(date);
					console.log(time);
					$.ajax({
						type : "Get",
						url : "/food/foodquerysum.controller",
						//               data : "&date="+date+"&time"+time,
						data : {
							date : date,
							time : time
						},
						dataType : "Json",
						contenttype : "application/json",
						success : function(data) {
							let sp = document.getElementById("Sum");
							if(data==0){
								sp.innerHTML = "<span>" + "目前人數" + "0" + "/20"
								+ "</span>";	
							}else{
							sp.innerHTML = "<span>" + "目前人數" + data + "/20"
									+ "</span>";
							}
						}
					})

				});
	</script>
</body>
</html>