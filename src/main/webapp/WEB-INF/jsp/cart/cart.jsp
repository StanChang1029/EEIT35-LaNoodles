<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>我的購物車</title>
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
    
    	<script src="/js/templ/jquery-3.6.0.min.js"></script>  
	<script src="/js/templ/jquery.min.js"></script>
	<script src="/js/templ/popper.js"></script>
	<script src="/js/templ/bootstrap.min.js"></script>
	<script src="/js/templ/main.js"></script>
    
<!-- bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script> 
	<script src="/js/templ/jquery-3.6.0.min.js"></script>  
	<script src="/js/templ/jquery.min.js"></script>
	<script src="/js/templ/popper.js"></script>
	<script src="/js/templ/bootstrap.min.js"></script>
	<script src="/js/templ/main.js"></script>
	
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
	h4   {color:#A42D00;}
	body {background-color: rgba(176, 224, 230, 0.733);}
	a.pe-auto, table,th, td { margin:50px; padding: 10px}
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		
		var user = '${memberProfile.memberAccount}';
		
		$(document).ready(function () {
			loadPage(user);
		});
	
		function updateNum(id,num,price,name){
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
			    	url:'/menu/menubyname.controller?name='+ name,
			    	dataType:'JSON',
			    	contentType:'application/json',
			    	success: function(data){
			    		var q = data.quantity
			    		var reg=/^[0-9]*[1-9][0-9]*$/;//只能輸入正整數的正則表達式
						if(!reg.test(num)){
							Swal.fire(
			    	    		    '只能输入正整数！'
			    	    	).then(function(){
			    	    		window.location.href = '/cart/cart.controller';
			    	    	})
						}else if(num > q){
							Swal.fire(
			    	    		    '商品庫存不足！'
			    	    	).then(function(){
			    	    		window.location.href = '/cart/cart.controller';
			    	    	})
						}else{
							var user = '${memberProfile.memberAccount}';
							
							var count = parseInt(num)*parseInt(price);
							
							var params = {
									"cId":id,
									"account":user,
									"name":name,
						            "cPrice":price,
						            "num":num,
						            "count":count
							       }
							$.ajax({
								type:'post',
						    	url:'/cart/cartupdate.controller',
						    	dataType:'JSON',
						    	contentType:'application/json',
						    	data: JSON.stringify(params),
						    	complete: function(){
							    	window.location.href = '/cart/cart.controller';
							    }
							});
						}
					}
				});
		}  
	
		function del(cid) {
			const result = Swal.fire({
			    title: '您確定是否刪除這筆商品?',
			    icon: 'warning',
			    showCancelButton: true,
			    confirmButtonColor: '#3085d6',
			    cancelButtonColor: '#d33',
			    confirmButtonText: '確定',
			    cancelButtonText : '取消', 
			  }).then(function(result){ 
				if (result.value) {
					$.ajax({
					type:'post',
					url:'/cart/cartdeletebyid.controller?cid='+ cid,
				    dataType:'JSON',
				    contentType:'application/json',
				    complete: function(){
				    	window.location.href = '/cart/cart.controller';
				    	}
					});
				}
  	    	})
		}
	
		function delAll(user) {
			const result = Swal.fire({
			    title: '您確定是否清空購物車?',
			    icon: 'warning',
			    showCancelButton: true,
			    confirmButtonColor: '#3085d6',
			    cancelButtonColor: '#d33',
			    confirmButtonText: '確定',
			    cancelButtonText : '取消', 
			  }).then(function(result){ 
				  if (result.value) {
					$.ajax({
					type:'get',
					url:'/cart/cartdeletebyall.controller?cAccount='+ user,
				    dataType:'JSON',
				    contentType:'application/json',
				    complete: function(){
				    	window.location.href = '/cart/cart.controller';
				    	}
					});
				  }
			  })
		}
		
		function orders(user,qty,total) {
			
			var params = {
			   		"userid":user,
			        "amount":qty,
			        "oprice":total
			}
			
			$.ajax({
		    	type:'post',
		    	url:'/order/orderinsert.controller',
		    	dataType:'JSON',
		    	contentType:'application/json',
		    	data: JSON.stringify(params),
		    	success: function(data){
					
		    		var oid = data.oid
		    		
		    		localStorage.setItem("oid", oid);
		    		
		    		$.ajax({
						type:'get',
						url:'/cart/cartbyaccount.controller?cAccount='+ user,
						dataType:'JSON',
						contentType:'application/json',
						success: function(data){
							
							$.each(data, function(i,n){
								
								var sum = parseInt(n.cPrice)*parseInt(n.num)
								
								var num = n.num
								
								var params2 = {
								   		"orderid":oid,
								        "name":n.name,
								        "price":n.cPrice,
								        "quantity":n.num,
								        "psum":sum
								}
								
								$.ajax({
							    	type:'post',
							    	url:'/orderdetail/orderdetailinsert.controller',
							    	dataType:'JSON',
							    	contentType:'application/json',
							    	data: JSON.stringify(params2),
							    	success: function(){
							    	}
								});
								
								$.ajax({
									type:'post',
							    	url:'/menu/menubyname.controller?name='+ n.name,
							    	dataType:'JSON',
							    	contentType:'application/json',
							    	success: function(data){
							    		
							    		var quantity = parseInt(data.quantity)-parseInt(num)
							    		
							    		var params3 = {
							    				"id":data.id,
							    				"dish":data.dish,
							    				"photo":data.photo,
							    				"price":data.price,
							    				"item":data.item,
							    				"feature":data.feature,
							    				"quantity":quantity
							    		}
							    		$.ajax({
											type:'post',
									    	url:'/menu/menuupdateqty.controller',
									    	dataType:'JSON',
									    	contentType:'application/json',
									    	data: JSON.stringify(params3),
									    	success: function(){
										    }
										});
							    	}
								});
							})
			    		$.ajax({
			    			type:'get',
			    			url:'/cart/cartdeletebyall.controller?cAccount='+ user,
			    		    dataType:'JSON',
			    		    contentType:'application/json',
			    		    complete: function(){
			    		    	window.location.href = '../orderdetail/confim.controller';
			    		    	}
			    			});
						}
		    	    });
		    	}
		    });
		}
		
		function loadPage(user){
			if(user == null || user.length==0 ){
				Swal.fire(
    	    		    '請先登入會員'
    	    	).then(function(){ 
    	    		window.location.href = '/login/page';
    	    	})
		    }else{
		    	$.ajax({
				type:'get',
				url:'/cart/cartbyaccount.controller?cAccount='+ user,
				dataType:'JSON',
				contentType:'application/json',
				success: function(data){
					$("#showcart").empty("");
					
					if(data==null || data.length==0){
						$('table').prepend("<tr><td colspan='2' align='center'><h4>您還沒將餐點加入至購物車哦!</h4></td></tr>");
					}else{
						var table = $('#showcart');
						var total = 0;
						var qty = 0;
						
						table.append("<tr bgcolor='#dddddd'><td align='center' width=150 ><h4>商品名稱</h4></td><td align='center'>" +
								"<h4>商品單價</h4></td><td align='center' width='100'><h4>購買數量</h4></td><td align='center' width=180><h4>購買金額</h4></td>" + 
								"<td align='center' width='100'><h4>編輯</h4></td></tr>");
						
						$.each(data, function(i,n){
						  var tr = "<tr>" + "<td align='center'>" + n.name + "</td>" +
						           "<td align='center'>" + "$ " + n.cPrice + "</td>" +
						           "<td align='center'><input type='text' style=\"text-align:center\" value=" + n.num + " onchange='updateNum(" + n.cId + ", this.value, " + n.cPrice + ",\"" + n.name + "\")'></td>" +
						           "<td align='center'>" + "$ " + n.count + "</td>" +
			    			       "<td align='center'>" + 
		       					   "<button style='border-width:0.01px;border-radius:0.3em;color:white;background-color:#E00000	' type='button' value='刪除' onclick='del(" + n.cId + ")'>刪除</button>" + 
		       					   "</td>" +
						           "</tr>";
						  table.append(tr);
						});
						$.each(data, function(i,n){
							var v = parseInt(n.count);
							total += v;
						});
						$.each(data, function(i,n){
							var q = parseInt(n.num);
							qty += q;
						});
						table.append("<tr><td colspan='2'></td><td align='center'>總金額:</td><td colspan='2' align='center'>" + "$ " + total + "</td></tr>" +
								"<tr><td colspan='2' align='center'>" +		
								"<button  style='border-width:0.01px;border-radius:0.3em;color:white;background-color:#0066FF' type='button' value='清空購物車' onclick='delAll(\"" + user + "\")'>清空購物車</button>" + 
								"</td><td colspan='2' align='center'>" +
								"<button style='border-width:0.01px;border-radius:0.3em;color:white;background-color:#0066FF'  type='button' value='確認訂餐' onclick='orders(\"" + user + "\"," + qty + "," + total + ")'>確認訂餐</button></td></tr>");
						}
					}
				});
		    }
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
	
	<h2 class="text-center" style="color:#800000;">我的購物車</h2>
	<hr>
	<div class="text-center" style="width:1000px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:55px;border-radius:3em">
	
	<table class="table table-striped"style="width:850px;margin:auto;"id="showcart" ></table>	
  </div>
  <br>
	<form class="text-center"  style="margin:auto;"name="ContinueForm" action="../shop/shop.controller" method="GET">
		<input class="btn btn-primary" type="submit" value="返回訂餐">
	</form>
	<br>
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

</body>
</html>
