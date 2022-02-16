
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>LaNoodles</title>
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
h1{
  text-align: center;
  width: 350px;
  font-family: "Arial Black", sans-serif;
  letter-spacing: -1px;
  background-color: #880000;
  color: white;
  border-radius:3em
 }  
h2   {margin:20px ;color:#880000;}
h4   {margin:20px ;color:white;}
body {background-color: rgba(176, 224, 230, 0.733);}
a.pe-auto, table,th, td {
/* margin:50px;  */
padding: 10px}
</style>
 
    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,500;1,400;1,500&display=swap" rel="stylesheet">
</head>
<body>

  <div class="wrapper d-flex align-items-stretch">
   
 <%@ include file="Sidebar.jsp"%>

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5">

     <%@ include file="Navbar.jsp"%> 

<div id="carouselExampleDark"  class="carousel carousel-dark slide" data-bs-ride="carousel">
<h1> 品牌精神  </h1>
<br>
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="5000">
      <img src="/images/13.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
         <h4 class="c" style="background-color:#4D0000;">源自日本，從而進軍世界的「拉麵」<br>在世界為數眾多的料理之中，沒有一項料理如「拉麵」這般獨特。</h4>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="/images/11.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h4 class="c" style="background-color:#4D0000;">醬汁與湯頭可說是左右拉麵滋味的"重要關鍵"。<br>拉麵師傅往往必須經過漫長的修行期間，才能被任命為匠人.</h4>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/images/12.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
     	<h4 class="c" style="background-color:#4D0000;">長時間熬湯，燉煮、燒烤叉燒肉，自製麵條。<br>日本拉麵因為製造成本較高，售價自然也相對較高。</h4>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<br>
<br>
<br>
  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->
<hr class="featurette-divider">
  <div class="container marketing">
  
<h1> 精選熱銷菜品  </h1>
<br>
    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
      
       <img  src="/images/1.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2> 爆走次郎拉麵 </h2>
        <p>將以味噌調味的醬汁作為湯頭使用。味噌拉麵的最大特色為濃厚且深層的濃密口感。據說是1961年時，由北海道札幌市的人氣拉麵店「味之三平」的店主最先研發而成的。</p>
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
           <img  src="/images/2.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2> 巴東牛雜拉麵 </h2>
        <p>由廚師手工現場將麵團拉抻製成麵條後下鍋煮熟，出鍋後加入牛肉老湯，撒上小塊牛肉、辣椒油、香菜、蒜苗而完成，用老湯加水烹煮牛肉、羊肝，再加入傳統佐料，熬製而成。 </p>
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
 			<img  src="/images/3.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2>大蔥鴨醬油拉麵 </h2>
        <p>將以鹽進行調味所製的醬汁作為湯頭使用。與其他的拉麵相比，較能直接突顯出高湯本身的美味。由於味道清爽且容易入口，因此深受大眾喜愛。                                                                                                                                        </p>
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
<br>

<!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
      
       <img  src="/images/4.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2> 老母雞湯醬油拉麵         </h2>
        <p>醬油拉麵 是日本拉麵最經典口味，加入大豆、小麥等調味料製作出深色系湯底，帶來看似重口味卻散發清香的傳統日式風味。    
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>                                                      
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
           <img  src="/images/5.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>
        <h2> 魚介豚骨沾麵  </h2>
        <p>將採用乾燥過後的柴魚、昆布及小魚乾等各式各樣海鮮所萃取出的醬汁作為高湯使用。其特徵為有著深層的美味及風味。    <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
 			<img  src="/images/6.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>
        <h2>濃厚豚骨拉麵 </h2>
        <p>採用將豚骨長時間燉煮後萃取出的高湯作為湯頭使用。最大的特徵是有著獨特的香氣及濃厚的口感。最具代表性的是九州博多拉麵，最常可見的是白濁的湯頭。                                                                                                                                          
  <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
<br>
<!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
      
       <img  src="/images/7.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2> 麻辣魚介沾麵  </h2>
        <p>此系列拉麵最大的特徵為，以雞、豚骨、海鮮等高湯做基底，並添加味噌、辣椒、蒜頭等調味而成的辣口味湯頭。其中也有能指定辣度的店家。</p>
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
           <img  src="/images/8.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2> 濃厚麻辣豚骨拉麵  </h2>
        <p>此系列拉麵最大的特徵為，以雞、豚骨、海鮮等高湯做基底，並添加味噌、辣椒、蒜頭等調味而成的辣口味湯頭。其中也有能指定辣度的店家。        </p>
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
 			<img  src="/images/9.jpg" class="bd-placeholder-img rounded-circle" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text>

        <h2>香味牛醬油沾麵 </h2>
        <p>將麵條水煮過後再過冷水，並沾著放入別的器碗中的沾汁後享用。依照店鋪不同，也有會使用將過冷水後的麵再一次放入熱水中稍微攪拌加熱的麵條。沾汁會比一般的拉麵湯頭的味道還要濃厚。                                                                                                                                      </p>
        <p><a class="btn btn-secondary" href="/menu/menumain.controller">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
<br>
<br>
<br>
<hr class="featurette-divider">
<h1>智慧客服</h1>
<!-- 影片 <div class='embed-container'><iframe width='560' height='315' src='https://www.youtube-nocookie.com/embed/esql7hHrVHE?rel=0' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe></div>-->
<div  align="center"><img src="/images/qrcode.png"  width="200" height="200" ><br><br><iframe width='450' height='500' src='https://www.youtube-nocookie.com/embed/h8j2P2G41Is?rel=0'></iframe><br></div>
<br>  	
<hr class="featurette-divider">
<h1>品牌故事</h1>
<!-- 影片 <div class='embed-container'><iframe width='560' height='315' src='https://www.youtube-nocookie.com/embed/esql7hHrVHE?rel=0' frameborder='0' allow='accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe></div>-->
<br> <div  align="center"><iframe width='700' height='395' src='https://www.youtube-nocookie.com/embed/esql7hHrVHE?rel=0'></iframe></div>

    <!-- START THE FEATURETTES -->
<br>
    <hr class="featurette-divider">
<h1>快速連結</h1><br>
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">你需要的拉麵美食 <span class="text-muted">第一口美味最對味，訂購您喜愛的拉麵.</span></h2>
        <p class="lead"><a class="btn btn-secondary" href="/shop/shop.controller">&raquo;</a>超過百人排隊人氣拉麵美食都在豚介，想吃就點！在這裡訂購你最喜歡的餐點不用出門輕鬆預定!</p>
      </div>
      <div class="col-md-5">
        <img src="/images/cart.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="350" height="350" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text>

      </div>
    </div>
<br>
    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">訂位立即確認！24 小時客戶服務 <span class="text-muted">安全訂位，快速又方便！每天都有推薦菜品</span></h2>
        <p class="lead"><a class="btn btn-secondary" href="/food/foodmember.controller">&raquo;</a>預訂立即確認。免手續費。免預訂手續費。安全預訂。免費取消。</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img src="/images/booking.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="350" height="350" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text>

      </div>
    </div>
<br>
    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">提供實用資訊，讓你的消費體驗分享出去。 <span class="text-muted">看看店家的評價，參考其他消費者的心得。</span></h2>
        <p class="lead"><a class="btn btn-secondary" href="/comment/CommentView">&raquo;</a>「這家店的評價很高耶！我們就選這一家吧！」</p>
      </div>
      <div class="col-md-5">
        <img src="/images/say.jpg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="350" height="350" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text>

      </div>
    </div>
<br>
    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->
  
  <!-- Footer -->
  <%@ include file="Footer.jsp"%> 
  <!-- Footer -->
     
    </div>
  </div>
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