<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="tw.fooddemo.model.FoodBeanquantity"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<head>

<link rel="stylesheet" type="text/css" href="../css/food/FirstFoodStockSelect.css" />
<link rel="stylesheet" href="../js/fontawesome/css/all.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>


<meta charset="UTF-8">
<title>盤點系統</title>
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

h2 {
	margin: 50px color:rgb(35, 130, 139);
}

h4 {
	margin: 50px color: rgb(25, 25, 95);
}

body {
	background-color: rgba(176, 224, 230, 0.733);
}

a.pe-auto, table, th, td {
	margin: 50px;
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
			<h2 class="text-center" style="color:#800000;">食材盤點系統</h2>
	<hr>
			<div class="text-center" style="width:1000px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:55px;border-radius:3em">
		
			<form method="Post" action="./foodselectall.controller" id="From">
				<div class="mt-4">
					<div class="table-title active fs-5 fw-bold mb-2">配菜類<i class="fal fa-angle-down"></i></div>
					<div class="table-container">
						<table class="m-0">
							<thead>
								<tr>
									<th>編號</th>
									<th>名稱</th>
									<th>圖片</th>
									<th>庫存數量</th>
									<th>數量</th>
									<th>庫存警示</th>
								</tr>
							</thead>
							<tbody id="ta"></tbody>
						</table>
					</div>
				</div>
				<div class="mt-4">
					<div class="table-title active fs-5 fw-bold mb-2">調味料<i class="fal fa-angle-down"></i></div>
					<div class="table-container">
						<table class="m-0">
							<thead>
								<tr>
									<th>編號</th>
									<th>名稱</th>
									<th>圖片</th>
									<th>庫存數量</th>
									<th>數量</th>
									<th>庫存警示</th>
								</tr>
							</thead>
							<tbody id="tb"></tbody>
						</table>
					</div>
				</div>
				<div class="mt-4">
					<p class="table-title active fs-5 fw-bold mb-2">主食、肉類<i class="fal fa-angle-down"></i></p>
					<div class="table-container">
						<table class="m-0">
							<thead>
								<tr>
									<th>編號</th>
									<th>名稱</th>
									<th>圖片</th>
									<th>庫存數量</th>
									<th>數量</th>
									<th>庫存警示</th>
								</tr>
							</thead>
							<tbody id="tc"></tbody>
						</table>
					</div>
				</div>

				<div class="p-3 d-flex align-items-center justify-content-end">
				<button class="btn btn-primary mr-3" type="button" id="membeone" >一鍵輸入</button>
				<button class="btn btn-primary mr-3" type="button" id="submit-in">入庫</button>
				<button class="btn btn-primary" type="button" id="submit-out">出庫</button>
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
	
	<script type="text/javascript">
$("#membeone").on("click", function(e) {
    $("input#text0").val("35");
    $("input#text1").val("15");
    $("input#text2").val("20");
    $("input#text3").val("25");
    $("input#text4").val("37");    
    $("input#text5").val("33");
    $("input#text6").val("15");
    $("input#text7").val("15");
    $("input#text8").val("23");
    $("input#text9").val("26");
    $("input#text10").val("12");
    $("input#text11").val("16");
    $("input#text12").val("50");
    $("input#text13").val("27");
    $("input#text14").val("29");
    $("input#text15").val("35");
    $("input#text16").val("40");   
    $("input#text17").val("10");  
});

</script>
	
	
	<script>
	$(document).ready(function(){
	  $('.table-title').bind('click', function(){
		  $(this).toggleClass('active');
		  $(this).siblings('.table-container').slideToggle('show');
	  })
	});

</script>
<script>

	
</script>
	<script>
	$("#submit-in").click(function() {
		$.ajax({
			type : "Post",
			url  : "/food/foodstockinput.controller",
			data :new FormData($("#From")[0]),
			processData:false,
			contentType:false,
			success:function(json){
			Swal.fire({
			
			icon:'success',
			title:'入庫成功',
			}).then(function(){
				window.location.href="/food/foodselectall.controller"
			})        
			},error:function(json){
				Swal.fire({
					icon:'error',
					title:'入庫異常,請重新輸入',
				}).then(function(){
					window.location.href="/food/foodselectall.controller"
				})
			}
			});              
	});

$("#submit-out").click(function() {
	
	
	let asdf = true ;
	
cols=$("tr").has("input[disabled]");
$.each(cols,function(index,col){
	initVal = $(col).find("input[disabled]").val();
	insertVal = $(col).find("input").eq(1).val();
	console.log(index);
	console.log(initVal);
	console.log(insertVal);
	console.log(initVal-insertVal);
	if(initVal-insertVal<0){
		asdf = false;
		Swal.fire({
			icon:'error',
			title:'庫存數量不可為負值',
		})
	}
	
});
	
	
	 if(asdf){
		 $.ajax({
			type : "Post",
			url  : "/food/foodstockoutput.controller",
			data :new FormData($("#From")[0]),
			processData:false,
			contentType:false,
			success:function(json){
			Swal.fire({
			icon:'success',
			title:'出庫成功',
			}).then(function(){
				window.location.href="/food/foodselectall.controller"
			})        
			},error:function(json){
				Swal.fire({
					icon:'error',
					title:'出庫異常,請重新輸入',
				}).then(function(){
					window.location.href="/food/foodselectall.controller"
				})
			}
			});
	 }
		
	
	
	});
	</script>

	<script>
			
	    
</script>


<script>
				
$(document).ready(function(){
	loadPage();

});
function loadPage(){
	$.ajax({
		type:"GET",
		url:"/food/foodselectalltest",
		dataType:"JSON",
		contentType:"appliction/json",
		success:function(data){		
			if(data==null){
				$("#tb1").append("<tr><td>no<tr><td>");				
			}else{
					$.each(data,function(i,n){
					if(n.classification=="A"){
							let asdf="<tr>"+
							"<td>"+n.id+"</td>"+"<td style='width: 80px;'>"+n.namech+"</td>"+
							"<td>"+"<img src='/images/"+n.img+"'height='50' width='50'/>"+"</td>"+"<td>"+"<input type='text' value='"+n.quantity+"'SIZE=5 disabled>"+n.itn+"</td>"+
							"<td>"+ "<input type='text' class='form-control' name='"+n.name+"' value=0 id='text"+i+"'>"+"<td id= "+n.name+">"+"</td >"+"</tr>"
							$("#ta").append(asdf);
					}
					if(n.classification=="B"){
						
						let asdf="<tr>"+
						"<td>"+n.id+"</td>"+"<td style='width: 80px;'>"+n.namech+"</td>"+
						"<td>"+"<img src='/images/"+n.img+"'height='50' width='50'/>"+"</td>"+"<td>"+"<input type='text' id='map"+i+"' value='"+n.quantity+"'SIZE=5 disabled>"+n.itn+"</td>"+
						"<td>"+ "<input type='text' class='form-control' name='"+n.name+"' value=0 id='text"+i+"'>"+"<td id= "+n.name+">"+"</td>"+"</tr>"
						$("#tb").append(asdf);
				}	
					if(n.classification=="C"){ 
						
						let asdf="<tr>"+
						"<td>"+n.id+"</td>"+"<td style='width: 80px;'>"+n.namech+"</td>"+
						"<td>"+"<img src='/images/"+n.img+"'height='50' width='50'/>"+"</td>"+"<td>"+"<input type='text' id='map"+i+"' value='"+n.quantity+"'SIZE=5 disabled>"+n.itn+"</td>"+
						"<td>"+ "<input type='text' class='form-control' name='"+n.name+"' value=0 id='text"+i+"'>"+"<td id= "+n.name+">"+"</td>"+"</tr>"
						$("#tc").append(asdf);
				}
					if (n.quantity <= n.low){
						$("#"+n.name).append('<div class="text-danger d-flex align-items-center"><div style="width: 30px;" class="text-center"><i class="fas fa-times mr-2"></i></div>不足</div>');
						//<img src="../images/wor.jpg" height="50" width="50"/>
					} else {
						$("#"+n.name).append('<div class="text-success d-flex align-items-center"><div style="width: 30px;" class="text-center"><i class="fas fa-check-circle mr-2"></i></div>充足</div>');
						//<img src="../images/ok.jpg"height="50" width="50"/>
					}
					
		      });
					
				}				
		}
	
	})
}




</script>
<script>

</script>

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


</body>
</html>