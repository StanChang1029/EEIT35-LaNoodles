
<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

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
      color: #930000;
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
a.pe-auto, table,th, td { margin:50px; padding: 10px}
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
 
  <div id="content" class="p-4 p-md-5"  >
  <%@ include file="../Navbar.jsp"%> 
 <!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
  <!-- 大家的內容 START-->
  
<br><h2 class="text-center" style="color:#800000;">查詢拉麵菜單</h2>
	<hr>
	
<div style="font-size:1.2rem;width:800px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:20px;border-radius:3em">
	
<form action="menuqerybyid.controller" method="post">

    <table class="table table-hover" style="width:650px;">
        <tr>
         <td><h4>以商品代碼查詢菜單:</h4></td>
          </tr>
            <tr>            
            <td>拉麵代碼:</td>
            </tr>
            <tr> 
           <td><input id="dishcode1" type="text" name="mid">
            <span id="passwordHelpInline" class="form-text">商品代碼請輸入1~100</span>
           </td>                    
        </tr>
        <tr>
           <td><input id="input1" type="button" class="btn btn-primary" value="一鍵輸入" >
           <button type="submit" class="btn btn-primary" value="Submit">查詢</button> </td>
        </tr>
    </table>
</form>
</div>
<br><br>
<div style="font-size:1.2rem;width:800px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:20px;border-radius:3em">
	
<form action="menuqerybypricebetween.controller" method="post">
    <table class="table table-hover" style="width:650px;">
        <tr>
         <td><h4>以價格區間查詢菜單:</h4></td>
          </tr>
            <tr>            
            <td>價格區間:</td>
             </tr>
              <tr>  
           <td><input id="dishprice1" type="text" name="menuPrice1">
           <span id="passwordHelpInline" class="form-text">請輸入大於0</span>
           </td>
            </tr>
              <tr> 
           <td><input id="dishprice2" type="text" name="menuPrice2">
           <span id="passwordHelpInline" class="form-text">請輸入小於500</span>
           </td>                     
        </tr>
        <tr>
           <td><input id="input2" type="button" class="btn btn-primary" value="一鍵輸入" >
           <button type="submit" class="btn btn-primary" value="Submit">查詢</button> </td>
        </tr>
    </table>
</form>
</div>
<br><br>
<div style="font-size:1.2rem;width:800px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:20px;border-radius:3em">

<form action="menuqerybyitemlike.controller" method="post">
    <table class="table table-hover" style="width:650px;">
        <tr>
         <td><h4>以配料查詢菜單:</h4></td>
          </tr>
            <tr>            
             <td>拉麵配料:		<span id="passwordHelpInline" class="form-text">請任選一項</span> </td>
             </tr>
              <tr>
           	<td><img src='/images/type.jpg'border=0 height=80 width=370><br>
           	口味:	&nbsp;&nbsp;   <br>        	
           	<input id="checked1" type="checkbox" name="menuItem" value="味噌">味噌&nbsp;&nbsp;
            <input id="checked1"  type="checkbox" name="menuItem" value="麻辣">麻辣&nbsp;&nbsp;
            <input id="checked1"  type="checkbox" name="menuItem" value="豚骨">豚骨&nbsp;&nbsp;
            <input id="checked1"  type="checkbox" name="menuItem" value="魚介">魚介&nbsp;&nbsp;
            <input id="checked1"  type="checkbox" name="menuItem" value="醬油">醬油</td>                    
            </tr>
            <tr>                         
             <td><img src='/images/type3.jpg'border=0 height=80 width=370><br>
             主餐:&nbsp;&nbsp;<br>	 
            <input type="checkbox" name="menuItem" value="牛肉">牛肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="雞肉">雞肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="豬肉">豬肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="鴨肉">鴨肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="海鮮">海鮮</td> 
             </tr>
            <tr>               
             <td><img src='/images/type4.jpg'border=0 height=80 width=370><br>
             配料:&nbsp;&nbsp;<br>	 
             <input type="checkbox" name="menuItem" value="海苔">海苔&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="糖心蛋">糖心蛋&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="蔥花">蔥花&nbsp;&nbsp;
             <input type="checkbox" name="menuItem" value="筍甘">筍甘&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="玉米">玉米</td>  
                  
            </tr>
        <tr>
           <td>
           <button type="submit" class="btn btn-primary" value="Submit">查詢</button> </td>
        </tr>
    </table>
</form>
</div>
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
  <script src="/js/templ/jquery.min.js"></script>
  <script src="/js/templ/popper.js"></script>
  <script src="/js/templ/bootstrap.min.js"></script>
  <script src="/js/templ/main.js"></script>
<script >
 $("#input1").click(function () {	
$("#dishcode1").val("3");
})
 </script>
 <script >
 $("#input2").click(function () {
$("#dishprice1").val("100");
$("#dishprice2").val("250");
})
 </script>


</body>
</html>