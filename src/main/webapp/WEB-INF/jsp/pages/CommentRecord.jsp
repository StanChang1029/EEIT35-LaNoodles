<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>編輯紀錄</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/carousel/">

    

    <!-- Bootstrap core CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">   
<!-- <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet"> -->

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
h4   {margin:50px color: rgb(25, 25, 95);}
body {background-color: rgba(176, 224, 230, 0.733);}
a.pe-auto, table,th, td { padding: 10px}

  </style> 
  <script src="/js/templ/jquery-3.6.0.min.js"></script>  
  <script src="/js/templ/jquery.min.js"></script>
  <script src="/js/templ/popper.js"></script>
  <script src="/js/templ/bootstrap.min.js"></script>
  <script src="/js/templ/main.js"></script>
    <!-- Custom styles for this template -->
<!--     <link href="/carousel.css" rel="stylesheet"> -->
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,500;1,400;1,500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/css/CommentView.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    
    <script type="text/javascript">
       
       const urlParams = new URLSearchParams(window.location.search);
       const urlParams2 = new URLSearchParams(window.location.search);
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

        var indexPage = 1; 
        var count = 1;
        var meal;
        var editScore = 0;
        var editId;
        var memberId;
        var username;
        
        $(document).ready(function(){
		<c:choose>
 			<c:when test="${empty memberProfile}">
 	      	  username = "guest";
 	          memberId = -1;
 			</c:when>
 			<c:otherwise>
 	      	  username = "${memberProfile.memberName}";
 	          memberId = ${memberProfile.memberProfileId};
 			</c:otherwise>
 		</c:choose>
/*  	    <c:if test="${memberProfile.memberProfileId == 1}">
    	meal = "檢舉專區";
        <option selected="selected" value="檢舉專區">檢舉專區</option>
        <option value="會員編號">會員編號</option>
        <option value="評論編號">評論編號</option>    	
    </c:if> */

          //meal = "最新";
          //$("#meal").prop("selectedIndex",2);
		  //getmenu();
          loadPage2(urlParams.get('comment_id'));
          
          //$("#meal").change(function(){
          //  meal = $(this).val(); //讀取option的值
          //    loadPage();
          //  });
        });
        
        </script>
        <script src="/js/CommentView1.js"></script> 
        <script src="/js/CommentView3.js"></script>
        <script src="/js/CommentView4.js"></script>
        <script src="/js/Getmenu.js"></script>

</head>
<body>
<div class="wrapper d-flex align-items-stretch">
 <%@ include file="../Sidebar_back.jsp"%> 
 <!-- 相對路徑喔 folder內的 ../Sidebar.jsp； 沒在folder內的 Sidebar.jsp-->
 
  <div id="content" class="p-4 p-md-5"  >
  <%@ include file="../Navbar.jsp"%> 
 <!-- 相對路徑喔 folder內的 ../Navbar.jsp； 沒在folder內的 Navbar.jsp-->
 
  <div class="wrapper d-flex align-items-stretch">
  

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5">

      
      
<!--大家的內容-->

<div>    
 
<c:choose>
	<c:when test="${empty memberProfile}">
	</c:when>
    <c:when test="${memberProfile.memberProfileId == 1}">
	</c:when>
	<c:otherwise>
		<button id="OpenInsertCommentModalBox"  name="OpenInsertCommentModalBox" 
		        type="button" data-toggle="modal" data-target="#myModal">新增評論</button><BR>
	</c:otherwise>
</c:choose>

    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-body">
        
  <label>餐點:</label>
  <select id="InsertCommentMeal" name="InsertCommentMeal" ></select><BR>
   
  <label>姓名:</label><span id="spanInsertCommentName" name="spanInsertCommentName"></span><BR>
  <!-- <input type="hidden" id="InsertCommentName" name="InsertCommentName"></input>-->   

  評分:<input type="hidden" id="InsertCommentScore" name="InsertCommentScore"></input>
  <div><img class="bearhand" id="idimg1" src="/images/star.gif" />
     <img class="bearhand" id="idimg2" src="/images/star.gif" />
     <img class="bearhand" id="idimg3" src="/images/star.gif" />
     <img class="bearhand" id="idimg4" src="/images/star.gif" />
     <img class="bearhand" id="idimg5" src="/images/star.gif" /></div>
  <script src="/js/Scoring.js"></script>
  <label>意見:</label><BR>
  <label for="memo" value="memo"></label>
  <textarea cols="40" rows="5" id="InsertCommentWord" name="InsertCommentWord" ></textarea><BR>
  <label>分享照片:</label>
  <input type="file" id="InsertCommentMyFile" name="InsertCommentPhoto"><BR>
  <button id="InsertCommentSend" class="btn btn-default" data-dismiss="modal">送出評論</button>
  <button id="JustOnePressInsertComment">一鍵送出</button>
  <script src="/js/JustOnePressInsertComment.js"></script>
        </div>
      </div>
    </div>
  </div>
  
    <div class="modal fade OpenEditCommentModalBox" id="myModal" role="dialog">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-body">

        
   <label>餐點:</label><span id="spanEditCommentMeal" name="spanEditCommentMeal"></span>
   <input type="hidden" id="EditCommentMeal" name="EditCommentMeal"></input><BR>
  
  <label>姓名:</label><span id="spanEditCommentName" name="spanEditCommentName"></span><BR>
   <input type="hidden" id="EditCommentName" name="EditCommentName"></input>
  評分:<input type="hidden" id="EditCommentScore" name="EditCommentScore"></input>
  <div><img class="bearhand" id="editIdimg1" src="/images/star.gif" />
     <img class="bearhand" id="editIdimg2" src="/images/star.gif" />
     <img class="bearhand" id="editIdimg3" src="/images/star.gif" />
     <img class="bearhand" id="editIdimg4" src="/images/star.gif" />
     <img class="bearhand" id="editIdimg5" src="/images/star.gif" /></div>
  <script src="/js/EditScoring.js"></script>
  <label>意見:</label><BR>
  <label for="memo" value="memo"></label>
  <textarea cols="40" rows="5" id="EditCommentWord" name="EditCommentWord" ></textarea><BR>
  <label>分享照片:</label>
  <input type="file" id="EditCommentPhoto" name="EditCommentPhoto"><BR>
  <button id="EditCommentSend" class="btn btn-default" data-dismiss="modal">送出評論</button>
  <button id="JustOnePressEditComment">一鍵送出</button>
  <script src="/js/JustOnePressEditComment.js"></script>
        </div>
      </div>
    </div>
  </div>
  
  <div class="modal fade OpenReportCommentModalBox" id="myModal" role="dialog">	
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-body">
        
  <label>檢舉原因:</label><BR>
  <label for="memo" value="memo"></label>
  
  <textarea cols="40" rows="5" id="ReportCommentWord" name="ReportCommentWord" ></textarea><BR>
  <button id="ReportCommentSend" class="btn btn-default" data-dismiss="modal">送出檢舉</button>
  <button id="JustOnePressReportComment">一鍵送出</button>
  <script src="/js/JustOnePressReportComment.js"></script>
        </div>
      </div>
    </div>
  </div>


<!--     <label>篩選:</label>
    <select name="meal" id="meal">
        <option selected="selected" value="檢舉專區">檢舉專區</option>
        <option value="會員編號">會員編號</option>
        <option value="評論編號">評論編號</option>    	
    </select>
    
    <label>   進階條件:</label>
    <select name="condition" id="condition">
        <option selected="selected" value="檢舉專區">檢舉專區</option>
        <option value="會員編號">會員編號</option>
        <option value="評論編號">評論編號</option>    	
    </select> -->
    <BR>
    
    <BR><BR>
    <table id="showproduct2" border="1" class="flatTable"></table>
     <br>
    		<button  class="btn btn-secondary"  
    		onclick="javascript:window.location.href='http://localhost:8080/comment/CommentReport'">回上一頁</button><BR>

  <script src="/js/InsertComment.js"></script> 
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


  
  <!-- FOOTER -->
<!--   <footer class="container">
    <p class="float-end"><a href="#">Back to top</a></p>
    <p>&copy; 2017–2021 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer> -->




      
     
    </div>
  </div>
  <!-- <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  <!-- <script src="/js/jquery-3.6.0.min.js"></script>   -->
<!--   <script src="/js/jquery.min.js"></script> -->
  <script src="/js/popper.js"></script>
  <!--  <script src="/js/bootstrap.min.js"></script>-->
  <script src="/js/main.js"></script>
  <script src="/js/Scoring.js"></script>
  <script src="/js/EditComment.js"></script>
  <script src="/js/ReportComment.js"></script>

  
  <script>
    $("#OpenInsertCommentModalBox").click(function(){
console.log("H1");
	$("#InsertCommentMeal").prop("selectedIndex",0);
	tinymce.get("InsertCommentWord").setContent("");
	$('input[name="InsertCommentPhoto"]').val("");
	scoring();
	  });
  </script>
    
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    
</body>

</html>