  function loadPage(){
  var mealUrl;
  if(meal=="最高分"){
  	mealUrl='/comment/selectByScoreDESC/'; 
  }else if(meal=="最低分"){
    mealUrl='/comment/selectByScoreASC/';
  }else if(meal=="最新"){
    mealUrl='/comment/selectByTime/';
  }else{
    mealUrl = "/comment/selectbyMeal/";
  }
   
 	  indexPage=1;
      $.ajax({
       type:'post',
       url:mealUrl + indexPage +'?meal=' + meal,
       dataType:'JSON',
       contentType:'application/json',
       success: function(data){
  
        $("#showproduct").empty("");
        var table = $('#showproduct');
        table.append("<tr class=\"titleTr\">"+
				   "<th class=\"titleTd\" width=8%>時間</th>"+
                                     "<th width=5%>名字</th>"+
                                     "<th width=7%>餐點</th>"+
                                     "<th width=4%>評分</th>"+
                                     "<th width=15%>評論</th>"+
                                     "<th width=13%>圖片</th>"+
                                     "<th width=3%></th>"+
                                     "<th width=3%></th>"+
          							 "<th width=3%></th></tr>");
        indexPage++;
        if(data.length==0){
         $('#showproduct').append("<tr class=\"TableTr\"><td colspan='9'>暫無資料</td></tr>");
        }else{
         $.each(data, function(a,n){
  
       var tr1 ="<tr class=\"TableTr\"><td>"+n.comment_time+"</td>"+
	                                  "<td>"+n.name+"</td>"+
	                                  "<td>"+n.meal+"</td>"+
	                                  "<td>"+n.score+"/5</td>"+
	                                  "<td>"+n.comment_word+"</td>";
       var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td><button class=\"btn btn-success\" id=\"OpenEditCommentModalBox\""+  
          " type=\"button\" data-toggle=\"modal\" data-target=\".OpenEditCommentModalBox\""+
             " onclick=\"editing("+n.id+")\">編輯</button></td>";
       var tr4 ="<td><button class=\"btn btn-primary\" id=\"deleting\" onclick=\"deleting("+n.id+")\">移除</button></td>";
       var tr5 ="<td><button class=\"btn btn-danger\" id=\"OpenReportCommentModalBox\""+  
          " type=\"button\" data-toggle=\"modal\" data-target=\".OpenReportCommentModalBox\""+
             " onclick=\"reporting("+n.id+")\">檢舉</button></td>";
       var tr6 ="<td></td>";

          if(n.photo!=null){
        if(username=="guest"){
         var tr = tr1 + tr2 + tr6 + tr6 + tr6 ;
        }else if(username=="管理員"){
         var tr = tr1 + tr2 + tr6 + tr4 + tr5 ;
        }else if(username=="MJLee"){
         var tr = tr1 + tr2 + tr3 + tr4 + tr5 ;
        }else{
         if(n.member_id == memberId){
          var tr = tr1 + tr2 + tr3 + tr4 + tr6 ;
         }
         else{
          var tr = tr1 + tr2 + tr6 + tr6 + tr5 ;
         }
        }
          }else{
        if(username=="guest"){
         var tr = tr1 + tr6 + tr6 + tr6 + tr6 ;
        }else if(username=="管理員"){
         var tr = tr1 + tr6 + tr6 + tr4 + tr5 ;
        }else if(username=="MJLee"){
         var tr = tr1 + tr6 + tr3 + tr4 + tr5 ;
        }else{
         if(n.member_id == memberId){
          var tr = tr1 + tr6 + tr3 + tr4 + tr6 ;
         }
         else{
          var tr = tr1 + tr6 + tr6 + tr6 + tr5 ;
         }
        }
          }     
             table.append(tr);
         });
        }

          $('[data-fancybox="images"]').fancybox({
            beforeLoad : function(instance, current) {
 
           if (current.src=== '#') {
             current.src = current.opts.$orig.find('img').attr('src');
            }
          }
         });
       }
      });
      
     
    }
 function nextPage(indexPage)
 {
  var curl;
  if(meal=="最新")
   curl = "/comment/selectByTime/";
  else if(meal=="最低分")
   curl = "/comment/selectByScoreASC/";
  else if(meal=="最高分")
   curl = "/comment/selectByScoreDESC/";
  else
   curl = "/comment/selectbyMeal/";
   
  $.ajax({
      type:'post',
      url: curl + indexPage +'?meal=' + meal,
      dataType:'JSON',
      contentType:'application/json',
      success: function(data){

       if(data==null){
        //$('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
       }else{
        var table = $('#showproduct');
        
        $.each(data, function(a,n){
    
    var tr1 ="<tr class=\"TableTr\"><td>"+n.comment_time+"</td>"+
                         "<td>"+n.name+"</td>"+
                         "<td>"+n.meal+"</td>"+
                         "<td>"+n.score+"/5</td>"+
                         "<td>"+n.comment_word+"</td>";
    var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td><button class=\"btn btn-success\" id=\"OpenEditCommentModalBox\""+  
          " type=\"button\" data-toggle=\"modal\" data-target=\".OpenEditCommentModalBox\""+
             " onclick=\"editing("+n.id+")\">編輯</button></td>";
       var tr4 ="<td><button class=\"btn btn-primary\" id=\"deleting\" onclick=\"deleting("+n.id+")\">移除</button></td>";
       var tr5 ="<td><button class=\"btn btn-danger\" id=\"OpenReportCommentModalBox\""+  
          " type=\"button\" data-toggle=\"modal\" data-target=\".OpenReportCommentModalBox\""+
             " onclick=\"reporting("+n.id+")\">檢舉</button></td>";
       var tr6 ="<td></td>";

    if(n.photo!=null){
     if(username=="guest"){
      var tr = tr1 + tr2 + tr6 + tr6 + tr6 ;
     }else if(username=="管理員"){
      var tr = tr1 + tr2 + tr6 + tr4 + tr5 ;
     }else if(username=="MJLee"){
      var tr = tr1 + tr2 + tr3 + tr4 + tr5 ;
     }else{
      if(n.member_id == memberId){
       var tr = tr1 + tr2 + tr3 + tr4 + tr6 ;
      }
      else{
       var tr = tr1 + tr2 + tr6 + tr6 + tr5 ;
      }
     }
    }else{
     if(username=="guest"){
      var tr = tr1 + tr6 + tr6 + tr6 + tr6 ;
     }else if(username=="管理員"){
      var tr = tr1 + tr6 + tr6 + tr4 + tr5 ;
     }else if(username=="MJLee"){
      var tr = tr1 + tr6 + tr3 + tr4 + tr5 ;
     }else{
      if(n.member_id == memberId){
       var tr = tr1 + tr6 + tr3 + tr4 + tr6 ;
      }
      else{
       var tr = tr1 + tr6 + tr6 + tr6 + tr5 ;
      }
     }
    }          
            table.append(tr);
        });
       }
      $('[data-fancybox="images"]').fancybox({
       beforeLoad : function(instsance, current) {
      if (current.src=== '#') {
        current.src = current.opts.$orig.find('img').attr('src');
      }
     }
    })
    
      }
     });
 }

 $(window).scroll(function() {
    if ($(window).scrollTop() >= $(document).height() - $(window).height() - 700) {
   console.log("here"+indexPage);
      nextPage(indexPage);
   indexPage++;
    }
 });