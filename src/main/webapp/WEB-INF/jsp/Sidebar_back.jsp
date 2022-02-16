<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <nav id="sidebar">
      <div class="p-4 pt-5">             
        <a href="#" class="img logo rounded-circle mb-5" style="background-image: url(/images/logo_back.jpg);"></a>
		        <ul class="list-unstyled components mb-5">
					<c:choose>
						<c:when test="${empty memberProfile}">
						  <li>
				            <a aria-expanded="false" style="font-size:20px">歡迎，訪客</a>
				          </li>
						</c:when>
						<c:otherwise>
						  <li>
				            <a aria-expanded="false" style="font-size:20px">歡迎，${memberProfile.memberName}</a>
				          </li>
						</c:otherwise>
					</c:choose>
		       <li>
		<!--        <li class="active"> -->
		            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="font-size:20px">菜單管理</a>
		            <ul class="collapse list-unstyled" id="homeSubmenu">
		              <li>
		                <a href="/menu/Menuuser.controller" style="font-size:18px">顧客版菜單</a>
		              </li>
		              <li>
		                <a href="/menu/menumain.controller" style="font-size:18px">管理菜單</a>
		              </li>
		              <li>
		                <a href="/menu/Menu.controller" style="font-size:18px">新增菜單</a>
		              </li>
		              <li>
		                <a href="/menu/Menuquery.controller" style="font-size:18px">查詢菜單</a>
		              </li>
		            </ul>
		          </li>
		        <li>
		            <a href="#informSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="font-size:20px">使用者管理</a>
		            <ul class="collapse list-unstyled" id="informSubmenu">
		               <li>
		            	<a href="/admin/member" style="font-size:18px">檢視使用者</a>
		         	 </li>
		            </ul>
		          </li>  
		         <li>
		            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="font-size:20px">購物車管理</a>
		            <ul class="collapse list-unstyled" id="pageSubmenu">
				     <li>
		            	<a href="/shop/shop.controller"style="font-size:18px">外帶菜單</a>
		         	 </li>
		             <li>
		            	<a href="/cart/cart.controller"style="font-size:18px">購物車</a>
		         	 </li>
		             <li>
		                <a href="/order/orderrecord.controller"style="font-size:18px">訂單總覽</a>
		             </li>
		            </ul>
		          </li>  
		          <li>
		            <a href="#bookingSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"style="font-size:20px">預約管理</a>
		            <ul class="collapse list-unstyled" id="bookingSubmenu">
		              <li>
		                <a href="/Inquire" style="font-size:18px">預約查詢</a>
		              </li>
		              <li>
		                <a href="/food/foodselectall.controller"style="font-size:18px">盤點操作</a>
		              </li>
		              <li>
		                <a href="/food/foodselectinquire.controller"style="font-size:18px">查詢出入庫</a>
		              </li>
		            </ul>
		          </li> 
		           <li>
		            <a href="#judgeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"style="font-size:20px">評論管理</a>
		            <ul class="collapse list-unstyled" id="judgeSubmenu">
		                <li>
		            		<a href="/comment/CommentView"style="font-size:18px">評論</a>
		         	 	</li>
		         	 	<li>
        	    			<a href="/comment/CommentReport"style="font-size:18px">檢舉專區</a>
    	     	 		</li>
		            </ul>
		          </li>
		          <!--             
		         <li>
		            <a href="#">---</a>
		          </li>
		          <li>
		            <a href="#">---</a>
		          </li>-->    
		        </ul>
       <div>
       <br>
       <br>
       <br>
       <br>
       </div>
        <div class="footer">
          <p id=footer1 >
            <script >document.write(new Date().getFullYear());</script> 麵屋豚介 <br> 🎏營業時間🎏<br> 中午11:00-14:00<br>
            晚上17:00-20:00提前售完。 <br> 🐖聯絡電話🐖<br> 0973-510-320<br>
            <i class="icon-heart" aria-hidden="true"></i> by <a href="https://www.facebook.com/web1031/"
              target="_blank">PAMAN</a>

          </p>
        </div>

      </div>
    </nav>
