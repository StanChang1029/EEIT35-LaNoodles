<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>確認訂單</title>
<meta charset="UTF-8">

<!-- 這個要加 -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/css/templ/style.css">
	<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">
    <!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">   
	<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
	<link href="carousel.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,500;1,400;1,500&display=swap" rel="stylesheet">
    
<!-- bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script> 
	
	 <style>
	   <!-- 影片 -->
	   .embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }
	    
	     .bd-placeholder-img {
	       font-size: 1.125rem;
	       text-anchor: middle;
	       -webkit-user-select: none;
	       -moz-user-select: none;
	       user-select: none;
	     }
	
	     @media (min-width: 768px) {
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
	   #footer1{
	   font-family: 'Ubuntu', sans-serif;
	    font-size: 1.2rem;
	       text-anchor: middle;      
	       color:white;
	   }
	 .c{ font-family: 'Ubuntu', sans-serif;
	 }
	@import url('https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,500;1,400;1,500&display=swap');
	  
	h2   {margin:50px color:rgb(35,130,139);}
	h4   {margin:50px color: rgb(25, 25, 95);}
	body {background-color: rgba(176, 224, 230, 0.733);}
	</style>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
	
		$(document).ready(function () {
			var oid = localStorage.getItem("oid")
			
			loadPage(oid)
		});
	
		
		function loadPage(oid){
			$.ajax({
		    		type:'post',
		    		url:'/order/orderbyid.controller?oid='+ oid,
		    		dataType:'JSON',
		    		contentType:'application/json',
		    		success: function(data){
		    			$("#showconfim").empty("");
		    			
		     			var table = $('#showconfim');
		    			
		     			table.append("<tr><td align='center' width='100'>訂單編號 : </td><td>" + data.oid + "</td></tr>");
		    			
		     			var sum = data.amount;
		     			
		     			var total = data.oprice;
		     			
		     			var date = data.odate;
		     			
		     			var names = "";
		     			
		     			$.ajax({
				    		type:'get',
				    		url:'/orderdetail/orderdetailbyorderid.controller?orderid='+ oid,
				    		dataType:'JSON',
				    		contentType:'application/json',
				    		success: function (data){
				    			$.each(data, function(i,n){
									var name = n.name;
									names += name;
								});
				    			table.append("<tr><td align='center' width='100'>商品名稱 : </td><td>" + names + "</td></tr>" +
				    					"<tr><td align='center' width='100'>商品總數 : </td><td>" + sum + "</td></tr>" +
				    					"<tr><td align='center' width='100'>商品總價 : </td><td>" + total + "</td></tr>" +
				    					"<tr><td align='center' width='100'>訂餐時間 : </td><td>" + date + "</td></tr>");
				    		}
				    	});
		     			
		     			
		     			
		    		}
			});
		}
	
	</script>
</head>
<body>

	<div class="wrapper d-flex align-items-stretch">
	<%@ include file="../Sidebar.jsp"%> 
	<!-- 相對路徑喔 folder內的 ../Sidebar.jsp； 沒在folder內的 Sidebar.jsp-->
	
	<div id="content" class="p-4 p-md-5"  >
	<%@ include file="../Navbar.jsp"%> 
	<!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
	<!-- 大家的內容 START-->
	<h2 class="text-center" style="color:#800000;">已接收到您的訂單</h2>
	<hr>
	<div class="text-center" style="width:700px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:55px;border-radius:3em">
	<table id="showconfim" border="1" class="table table-striped" style="width:600px;margin:auto;"></table>
	<br>
	</div>
	<br>
	<form  class="text-center"  style="margin:auto;" name="ContinueForm" action="../shop/shop.controller" method="GET">
		<input class="btn btn-primary" type="submit" value="返回訂餐">
	</form>
	
	<!-- 大家的內容 END-->
	<div class="container my-5">
	<br>
		<br>
			<br>
				<br>
				<br>
			<br>
		<br>
	<br>
	<%@ include file="../Footer.jsp"%> 
	<!-- 相對路徑喔 folder內的 ../Footer.jsp； 沒在folder內的 Footer.jsp-->
	</div>
	<!-- End of .container -->
	    
	</div> 
	</div>	


	<!-- 這個要加 -->
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script src="/js/templ/jquery-3.6.0.min.js"></script>  
<!-- 	<script src="/js/templ/jquery.min.js"></script> -->
	<script src="/js/templ/popper.js"></script>
	<script src="/js/templ/bootstrap.min.js"></script>
	<script src="/js/templ/main.js"></script>
	
</body>
</html>