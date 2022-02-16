

<%@page import="tw.fooddemo.model.FoodBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="tw.fooddemo.model.FoodBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="./css/FirstFood.css" />




<link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script> -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查詢資料</title>
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
	<c:choose>
		<c:when test="${backstage == 1}">
			<%@ include file="../Sidebar_back.jsp"%> 
		</c:when>
		<c:otherwise>
			 <%@ include file="../Sidebar.jsp"%> 
		</c:otherwise>
	</c:choose>
		<!-- 相對路徑喔 folder內的 ../Sidebar.jsp； 沒在folder內的 Sidebar.jsp-->

		<div id="content" class="p-4 p-md-5">
			<%@ include file="../Navbar.jsp"%>
			<!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
			<!-- 大家的內容 START-->

	
	
<h2 class="text-center" style="color:#800000;">查詢資料</h2>
	<hr>
   <div class="text-center" style="width:1200px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:55px;border-radius:3em">
	<form action="./delect.controller" method="post">

		<!--<table cellspacing="2" cellpadding="1" border="1" width="100%">-->


			<div>
				<table id="main">
					<thead>
					<tr>
						<th>姓名:</th>
						<th>預約日期</th>
						<th>預約時段</th>
						<th>聯絡電話</th>
						<th>電子信箱</th>
						<th>人數</th>
						<th>刪除以及更改</th>
					</tr>
					</thead>

			<%
			//FoodBean1 food=(FoodBean1)request.getAttribute("reg_food");

			ArrayList<FoodBean> List = (ArrayList<FoodBean>) request.getAttribute("reg_food");

			for (FoodBean f : List) {
			%>
					<tr>
						<td><%=f.getName()%></td>
						<td><%=f.getDate()%></td>
						<td><%=f.getTime()%></td>
						<td><%=f.getPhone()%></td>
						<td><%=f.getMail()%></td>
						<td><%=f.getQuantity()%></td>


						<td><input style="border-width:0.01px;border-radius:0.3em;color:white;background-color:#E00000"  type="button" name="deleteFood" value="刪除"
							onclick="location.href='http://localhost:8080/ThankDel?DeleteFood=1&id=<%=f.getId()%>'">
							<input style='border-width:0.01px;border-radius:0.3em;color:white;background-color:#0066FF'  type="button" name="UpdateFood" value="更改"
							onclick="location.href='http://localhost:8080/Update?UpdateFood=1&id=<%=f.getId()%>'">
						</td>

					</tr>
			<%
			}
			%>
					</tbody>
			</table>	
			</div>
			
			<div>


				<p></p>
				<p></p>
				<p></p>
			</div>
			</form>
		</div>	
			<div class="container my-5">
				<br> <br> <br> <br> <br> <br> <br>
				<br>
				<%@ include file="../Footer.jsp"%>
				<!-- 相對路徑喔 folder內的 ../Footer.jsp； 沒在folder內的 Footer.jsp-->
			</div>
			<!-- End of .container -->

		</div>
	</div>
		  <!--</table>-->
		<!--<center>
			<a href="Inquire"><input type="button" name=""query" value="依日期查詢"></a>
			<button class="form-btn" type="button" id="submit-btn" >圖表</button>
		</center>-->
		
		<!--<canvas id="myChart" width="800" height="600"></canvas>-->
		
<script>
var a 

$("#submit-btn").click(function() {
     $.ajax({
                type : "Get",
                url  : "/foodquerytdq.controller",
           //     data : "&date="+date+"&time"+time,
		//		data : {
			//	 time:time,
			//	 quantity:quantity
		//		},
              dataType:"Json",
            contenttype:"application/json",   
       //      success : function() {
      //       };
            success: function(Jdata) {
            	console.log(Jdata);
            	bar(Jdata);
    	
        },    	
     });        	
            	var ctx = document.getElementById("myChart").getContext('2d');

            	var myChart = new Chart(ctx, {
            		    type: 'pie',
            		    data: {
            		        labels: ["2022-01-08","2022-01-09"],
            		        
            		        datasets: [{
            		            label: '預約日期',
            		            
            		            data: [1,2] ,
            		            
            		            backgroundColor: [
            		                'rgba(255, 99, 132, 0.2)',
            		                'rgba(54, 162, 235, 0.2)',
            		                'rgba(255, 206, 86, 0.2)',
            		                'rgba(75, 192, 192, 0.2)',
            		                'rgba(153, 102, 255, 0.2)',
            		                'rgba(255, 159, 64, 0.2)'
            		            ],	
            		            borderColor: [
            		                'rgba(255,99,132,1)',
            		                'rgba(54, 162, 235, 1)',
            		                'rgba(255, 206, 86, 1)',
            		                'rgba(75, 192, 192, 1)',
            		                'rgba(153, 102, 255, 1)',
            		                'rgba(255, 159, 64, 1)'
            		            ],
            		            borderWidth: 1
            		        }]
            		    },
            		    options: {
            		        scales: {
            		            yAxes: [{
            		                ticks: {
            		                    beginAtZero:true
            		                }
            		            }]
            		        }
            		    }
            		});
     
    

  
}); 
     

 </script>

<script src="/js/datatable/jquery.dataTables.min.js"></script>
<script>
var table = $('#main').DataTable();


$(document).ready(function() {
	$('#main').DataTable();
});
	
	    
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