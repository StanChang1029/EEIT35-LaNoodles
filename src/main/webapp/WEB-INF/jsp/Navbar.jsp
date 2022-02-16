<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Page Content -->
    
   
    
      <nav class="navbar navbar-expand-lg navbar-light bg-light" >
        <div class="container-fluid" style="background-color: 	#880000">
         <div class="container-fluid" style="background-color: 	#5B5B5B">
          <div class="container-fluid" style="background-color: 	#880000">					

          <div class="collapse navbar-collapse" id="navbarSupportedContent"> 
          <br>         
          <button type="button" id="sidebarCollapse" class="btn btn-secondary"  >
            <i class="fa fa-bars" ></i>
            <span class="sr-only">Toggle Menu</span>
          </button>
          <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <i class="fa fa-bars"></i>
          </button>
            <ul class="nav navbar-nav ml-auto">           
              <li class="nav-item active">
                <a class="nav-link" href="/home"  style="font-size:20px; color:white">首頁</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://www.facebook.com/web1031/"style="font-size:20px; color:white">關於</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/menu/menumain.controller" style=" font-size:20px;color:white">菜單</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/cart/cart.controller" style=" font-size:20px;color:white">購物車</a>
              </li>
			<c:choose>
				<c:when test="${empty memberProfile}">
              <li class="nav-item">
                <a class="nav-link" href="/login/page" style="font-size:20px; color:white">會員登入</a>
              </li>  
				</c:when>
				<c:otherwise>
              <li class="nav-item">
                <a class="nav-link" href="/logout" style="font-size:20px; color:white">會員登出</a>
              </li>  
				</c:otherwise>
			</c:choose>           
            </ul>  
            <br>
             <br>             
               <br>
             </div>          
          	</div>     
          </div>      
        </div>
      </nav>
   