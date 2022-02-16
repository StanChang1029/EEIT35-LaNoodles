<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>外帶</title>

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
	
<!-- sweetalert2 -->	
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	
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
	h3   {color:#A42D00;}
	
	a.pe-auto, table,th, td { margin:50px; padding: 10px}
	</style>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			loadPage();
		});
		
		function loadPage(){
	    	$.ajax({
	    		type:'post',
	    		url:'/shop/shopall.controller',
	    		dataType:'JSON',
	    		contentType:'application/json',
	    		success: function(data){
	    			$("#showshop").empty("");
	    			
	    			if(data==null){
	    				$('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
	    			}else{
	    				var table = $('#showshop');
	    				
	    				table.append("<tr class='table-active'><td align='center' width=180 ><h3>商品縮圖</h3></td><td align='center' width='350'>" +
	    						"<h3>商品摘要</h3></td><td align='center' width='200'><h3>在線購買</h3></td></tr>");
	    				
	    				$.each(data, function(i,n){
	      				  var tr = "<tr>" + "<td><img src=/images/" + n.sPic + "'border=0 height=150 width=180 ></td>" +
	      				           "<td>" +
	      				           "商品名稱:" + n.sName + "<br/>" +
	      				       	   "商品價格: $ " + n.sPrice + "<br/>" +
	      				           "商品簡介:" + n.info + "<br/>" +
	      				           "商品庫存:" + n.sQuantity + "<br/></td>" +
	      	    			       "<td>" + 
	  	       					   "<button class='btn btn-primary' type='button' value='加入到購物車' onclick='sendOrder(" + n.sId + ")'>加入到購物車</button>" + 
	  	       					   "</td>" +
	      				           "</tr>";
	      				  table.append(tr);
	      				});
	    			}
	    		}
	    	});
	    }
		
		function sendOrder(sid) {
			const Toast = Swal.mixin({
  			  toast: true,
  			  position: 'top-right',
  			  iconColor: 'white',
  			  customClass: {
  			    popup: 'colored-toast'
  			  },
  			  showConfirmButton: false,
  			  timer: 1500,
  			  timerProgressBar: true
  			})
			
			$.ajax({
				type:'post',
				url:'/shop/shopbyid.controller?sid='+ sid,
			    dataType:'JSON',
			    contentType:'application/json',
				success: function(data) {
					var json = JSON.stringify(data);
		    	    var jsonArray = JSON.parse(json);
		    	    var user = '${memberProfile.memberAccount}';
		    	    
		    	    var params = {
		    	    		"account":user,
		    	            "name":jsonArray.sName,
		    	            "cPrice":jsonArray.sPrice,
		    	            "num":1,
		    	            "count":jsonArray.sPrice
		    	        }
		    	    if(user == null || user.length==0 ){
		    	    	Swal.fire(
		    	    		    '請先登入會員'
		    	    	).then(function(){ 
		    	    		window.location.href = '/login/page';
		    	    	})
		    	    }else{
			    	    $.ajax({
			    	    	type:'post',
			    	    	url:'/cart/cartinsert.controller',
			    	    	dataType:'JSON',
			    	    	contentType:'application/json',
			    	    	data: JSON.stringify(params),
			    	    	complete: function(){
			    	    		Toast.fire({
								  icon: 'success',
								  title: '已加入購物車！'
								})
			    		    }
			    	    });
		    	    }
				}
			});
		}
	</script>
 
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
	
	<div id="content" class="p-4 p-md-5"  >
	<%@ include file="../Navbar.jsp"%> 
	<!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
	<!-- 大家的內容 START-->
	<h1 class="text-center" style="color:#800000;">外帶菜單</h1>
	<hr>
  <div class="text-center" style="width:900px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:55px;border-radius:3em">
	<table class="table table-striped" id="showshop" border="1" style="width:800px;margin:auto;"></table>
	<br>
  </div>
	<!-- 大家的內容 END-->
	<div class="container my-5">
	
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
	<script src="/js/templ/popper.js"></script>
	<script src="/js/templ/bootstrap.min.js"></script>
	<script src="/js/templ/main.js"></script>
 
</body>
</html>