		
<%@page import="java.io.Console"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="tw.fooddemo.model.Menu"%>


<%
response.setContentType("text/html;charset=UTF-8");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", -1); // Prevents caching at the proxy server
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/Inquire.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查詢資料</title>

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
h4   {color:#A42D00;}
h5   {color:white;}
body {background-color: rgba(176, 224, 230, 0.733);}
a.pe-auto, table,th, td {  padding: 10px}
th {background-color:#800000;}
.h55  {color:#800000;}
</style>
</head>
<body>

<div class="wrapper d-flex align-items-stretch">
 <%@ include file="../Sidebar.jsp"%> 
 <!-- 相對路徑喔 folder內的 ../Sidebar.jsp； 沒在folder內的 Sidebar.jsp-->
 
  <div id="content" class="p-4 p-md-5"  >
  <%@ include file="../Navbar.jsp"%> 
 <!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
  <!-- 大家的內容 START-->
<br><h2 class="text-center" style="color:#800000;">以價格區間查詢商品</h2>	
			<br>
			<hr>
<div style="font-size:1.2rem;width:1200px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:40px;border-radius:3em">
	<form action="menuqerybypricebetween.controller" method="post">

		<table  cellspacing="2" cellpadding="1" border="1" width="90%">

			<div>
				<table id="main" >
					<th  align=center width=100 ><h5>商品代碼</h5></th>
						<th align=center width=100 ><h5>商品名稱</h5></th>
						<th align=center width=50 ><h5>商品照片</h5></th>
						<th align=center width=100 ><h5>商品價格</h5></th>
						<th align=center width=100 ><h5>商品配料</h5></th>
						<th align=center width=350 ><h5>商品特色</h5></th>			
			<%		

			ArrayList<Menu> List = (ArrayList<Menu>) request.getAttribute("reg_price");

			for (Menu f : List) {				
			%>			
					<tr>
						<td align=center width=100 ><%=f.getId()%></td>
						<td  width=100 ><h5 class='h55'><%=f.getDish()%></h5></td>															
						<td align=center width=50 ><img src='/images/<%=f.getPhoto()%>'border=0 height=150 width=180></td>
						<td  width=100 ><%=f.getPrice()%></td>
						<td  width=100 ><%=f.getItem()%></td>
						<td  width=250 ><%=f.getFeature()%></td>						
					</tr>
			<%
			}
			%>
					</tbody>
				</table>	
		</table>
	</form>
	<br>
		<center>
			<a href="/menu/Menuquery.controller"><input type="button" class="btn btn-primary" name="back" value="返回查詢">
			</a>
		</center>
 <div class="container my-5">
    </div>
		</div>	
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
	<!-- End of .container -->			
      </div> 
</div>
  <!-- 這個要加 -->
  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  <script src="/js/templ/jquery-3.6.0.min.js"></script>  
  <script src="/js/templ/jquery.min.js"></script>
  <script src="/js/templ/popper.js"></script>
  <script src="/js/templ/bootstrap.min.js"></script>
  <script src="/js/templ/main.js"></script>
</body>
</html>