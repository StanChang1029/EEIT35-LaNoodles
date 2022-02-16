<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
h2   {margin:50px color:rgb(35,130,139);}
h4   {margin:50px color: rgb(25, 25, 95);}
body {background-color: rgba(176, 224, 230, 0.733); margin:100px}
a.pe-auto, table,th, td { margin:50px; padding: 10px}
</style>

<meta charset="UTF-8">
<title>Form</title><!-- 這個要加 -->
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
</style>
<!--   <script src="/js/templ/jquery-3.6.0.min.js"></script>   -->
<script src="/js/jquery/jquery-3.6.0.min.js"></script>
<!--   <script src="/js/templ/jquery.min.js"></script> -->
  <script src="/js/templ/popper.js"></script>
  <script src="/js/templ/bootstrap.min.js"></script>
  <script src="/js/templ/main.js"></script>
 <script type="text/javascript">
      $(function(){
    	  var dcode = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35"];
    	  $("#dishcode1").autocomplete({
    		  source: dcode
    	  });
      });
  </script>   
  
   <script type="text/javascript">
      $(function(){
    	  var dname = ["爆走次郎拉麵","巴東牛雜拉麵","大蔥鴨醬油拉麵","老母雞湯醬油拉麵","魚介豚骨沾麵","濃厚豚骨拉麵","麻辣魚介沾麵","濃厚麻辣豚骨拉麵","香味牛醬油沾麵","黑蒜豚骨拉麵"];
    	  $("#dishname1").autocomplete({
    		  source: dname
    	  });
      });
  </script>
 
    <script type="text/javascript">
      $(function(){
    	  var dphoto = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"];
    	  $("#dishphoto1").autocomplete({
    		  source: dphoto
    	  });
      });
  </script>
   <script type="text/javascript">
      $(function(){
    	  var dprice = ["100","110","120","130","140","150","170","180","190","200","210","220","230","240","250","260","270","280","290","300","310","320","330","340","350"];
    	  $("#dishprice1").autocomplete({
    		  source: dprice
    	  });
      });
  </script>
  <script type="text/javascript">
      $(function(){
    	  var dprice = ["最早發源自九州，使用豬骨長期熬燉出白色的濃湯。也可加醬油成為「豚骨醬油味」。加以特製的醬料，再把煮好的麵放進湯中端給食用者。麵上通常會放上的配料包括：叉燒肉、海苔、豆芽、白菜、雞蛋、蒜末、筍、魚板、玉米粒、雪菜、馬鈴薯、燉肉、酸梅等等。最後可以再加一些香油或者香辛料。",
    		  "使用魚類和豬骨、雞肉等熬製的醬油風味。因為發源自寒冷的地區，因此為了避免熱度快速流失，添加了豬油。口味較為清淡。麵條為水含量較低的捲曲細麵，很容易將湯汁附著於麵上。"];
    	  $("#dishfeature1").autocomplete({
    		  source: dprice
    	  });
      });
  </script>

<script type="text/javascript">
	$(document).ready(function(){
	   $("#id1").click(function(){
		   alert("成功寄送給消費者");
		   console.log('menuDish='+$("#dishname1").val()+'&menuPrice='+$("#dishprice1").val());
		   $.ajax({
	   		type:'post',
	   		url:'/menu/menumail.controller',
	   		data:'menuDish='+$("#dishname1").val()+'&menuPrice='+$("#dishprice1").val(),	   	
	    		success: function(data){
	    			console.log("老師收信");
	    		}
	   		});
	   }); 
		
	});
 </script>
 
</head>
<body>

<div class="wrapper d-flex align-items-stretch">
 <%@ include file="../Sidebar_back.jsp"%> 
 
  <div id="content" class="p-4 p-md-5"  >
  <%@ include file="../Navbar.jsp"%> 

<br><h2 class="text-center" style="color:#800000;">新增拉麵菜單</h2>
	<hr>
<div style="font-size:1.2rem;width:1000px;margin:auto;background:#F5F5F5;border-width:4.5px;border-style:outset;border-color:#880000;padding:20px;border-radius:3em">

<form action="menuinsert.controller" method="post" enctype="multipart/form-data">
     <table  class="table table-hover" style="width:900px;">
        <tr>
         <td><h4>新增菜單:</h4></td>      
            </tr>
            <tr>
            <td>拉麵名稱:</td>             
           <td><input id="dishname1" type="text" name="menuDish"></td>
            </tr>
            <tr>
            <td>拉麵圖片:</td>
           <td><input id="dishphoto1" type="file" name="menuPhoto"></td>
            </tr>
            <tr>
           <td>拉麵價格:</td>
           <td><input id="dishprice1" type="text" name="menuPrice"></td> 
            </tr>
            <tr>          
           <td>拉麵配料:</td>
           	<td><img src='/images/type.jpg'border=0 height=80 width=370><br> 口味:&nbsp;&nbsp;	<br> 
           	<input type="checkbox" name="menuItem" value="味噌">味噌&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="麻辣">麻辣&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="豚骨">豚骨&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="魚介">魚介&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="醬油">醬油</td>                    
            </tr>
            <tr>  
            <td></td>                
             <td><img src='/images/type3.jpg'border=0 height=80 width=370> <br>  主餐:&nbsp;&nbsp;<br>
             <input type="checkbox" name="menuItem" value="牛肉">牛肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="雞肉">雞肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="豬肉">豬肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="鴨肉">鴨肉&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="海鮮">海鮮</td> 
             </tr>
            <tr>  
            <td></td>    
             <td><img src='/images/type4.jpg'border=0 height=80 width=370> <br> 配料:&nbsp;&nbsp;<br>
             <input type="checkbox" name="menuItem" value="海苔">海苔&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="糖心蛋">糖心蛋&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="蔥花">蔥花&nbsp;&nbsp;
             <input type="checkbox" name="menuItem" value="筍甘">筍甘&nbsp;&nbsp;
            <input type="checkbox" name="menuItem" value="玉米">玉米</td>  
                  
            </tr>
            <tr>
           <td>拉麵介紹:</td>
           <td><textarea id="dishfeature1" style="resize:none;width:500px;height:100px;" id="dishfeature1" name="menuFeature"></textarea></td>         
        </tr>
        <tr> 
           <td><input id="input1" type="button" class="btn btn-primary" value="一鍵輸入" >
           <button type="submit" class="btn btn-primary" value="Send" >新增</button> 
          
         </td>
           <td> </td>
        </tr>
    </table>
</form>
 <button id = "id1" class="btn btn-warning" style="margin-left:50px" value="Send2" >將新品廣告寄給消費者</button>
</div>
 

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
    </div>
	<!-- End of .container -->
    
    </div> 
 </div>	
 
 
 
 <script >
 $("#input1").click(function () {
	 console.log("AAA");
$("#dishname1").val("松露豚骨特濃拉麵");
$("#dishprice1").val("260");
$("#dishfeature1").val("將豬骨長時間熬製而成的湯底，萃取出骨頭內的精華，使其擁有獨特且濃厚的香氣，依照火候的大小不同，創造出多種不同類型的白色湯頭，為台灣人最喜歡也最常見的拉麵，可以在每口湯之中感受到濃醇的風味。");
})
 </script>
 
   <!-- 這個要加 -->
  <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<!--   <script src="/js/templ/jquery-3.6.0.min.js"></script>   -->
<!--   <script src="/js/templ/jquery.min.js"></script> -->
<!--   <script src="/js/templ/popper.js"></script> -->
<!--   <script src="/js/templ/bootstrap.min.js"></script> -->
<!--   <script src="/js/templ/main.js"></script> -->
 
</body>
</html>