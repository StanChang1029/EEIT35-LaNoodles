  function loadPage(){
  var mealUrl;
     mealUrl='/cmtreport/selectByTime/'; 
   
  indexPage=1;
  
      $.ajax({
       type:'post',
       url:mealUrl + indexPage +'?meal=' + meal,
       dataType:'JSON',
       contentType:'application/json',
       success: function(data){
	      $("#showproduct2").empty("");
	      var table = $('#showproduct2');
	      table.append("<tr class=\"titleTr\">"+
	                  "<th class=\"titleTd2\" width=2%>時間</th>"+
	                  "<th class=\"titleTd2\" width=4%>名字</th>"+
	                  "<th class=\"titleTd2\" width=7%>檢舉內容</th>"+
	                   //"<th class=\"titleTd\" width=5%>時間</th>"+
	                                     "<th width=4%>名字</th>"+
	                                     "<th width=6%>餐點</th>"+
	                                     //"<th width=5%>評分</th>"+
	                                     "<th width=15%>評論</th>"+
	                                     "<th width=1%>圖片</th>"+
	                                     "<th width=3%></th>"+
	                                     "<th width=3%></th>"+
	                                     "<th width=3%></th></tr>");
        indexPage++;

        if(data.length==0){
         $('#showproduct2').append("<tr class=\"TableTr\"><td colspan='12'>暫無資料</td></tr>");
        }else{
         $.each(data, function(a,n){
       
       var tr1 ="<tr class=\"TableTr\"><td>"+n.reportcomment_time+"</td>"+
                                      "<td>"+n.reportname+"</td>"+
                                      "<td>"+n.reportcomment_word+"</td>"+
                                      //"<td>"+n.comment_time+"</td>"+
                                      "<td>"+n.name+"</td>"+
                                      "<td>"+n.meal+"</td>"+
                                      //"<td>"+n.score+"/5</td>"+
                                      "<td>"+n.comment_word+"</td>";
       var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td><button class=\"btn btn-success\" id=\"deleting\" onclick=\"DeletingReport("+n.id+")\">移除檢舉</button></td>";
       var tr4 ="<td><button class=\"btn btn-info\" id=\"deleting\" onclick=\"ViewingCommentRecord("+n.comment_id+")\">編輯紀錄</button></td>";
       var tr5 ="<td><button class=\"btn btn-danger\" id=\"OpenReportCommentModalBox\""+  
          " type=\"button\" onclick=\"deletingOringinalComment("+n.id+")\">移除評論</button></td>";
       var tr6 ="<td></td>";

       if(n.photo!=null){
           var tr = tr1 + tr2 + tr3 + tr4 + tr5 ;
       }else{
           var tr = tr1 + tr6 + tr3 + tr4 + tr5 ;
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

function nextPage(indexPage){
  var curl;
  var mealUrl;
     mealUrl='/cmtreport/selectByTime/'; 
   
  $.ajax({
      type:'post',
      url: curl + indexPage +'?meal=' + meal,
      dataType:'JSON',
      contentType:'application/json',
      success: function(data){
	      $("#showproduct2").empty("");
	      var table = $('#showproduct2');
	      table.append("<tr class=\"titleTr\">"+
	                  "<th class=\"titleTd2\" width=8%>檢舉時間</th>"+
	                  "<th class=\"titleTd2\" width=5%>檢舉者名字</th>"+
	                  "<th class=\"titleTd2\" width=5%>檢舉內容</th>"+
	                   //"<th class=\"titleTd\" width=8%>時間</th>"+
	                                     "<th width=5%>名字</th>"+
	                                     "<th width=7%>餐點</th>"+
	                                     //"<th width=4%>評分</th>"+
	                                     "<th width=15%>評論</th>"+
	                                     "<th width=1%>圖片</th>"+
	                                     "<th width=3%></th>"+
	                                     "<th width=3%></th>"+
	                  "<th width=3%></th></tr>");
        indexPage++;

        if(data.length==0){
         $('#showproduct2').append("<tr class=\"TableTr\"><td colspan='12'>暫無資料</td></tr>");
        }else{
         $.each(data, function(a,n){
       
       var tr1 ="<tr class=\"TableTr\"><td>"+n.reportcomment_time+"</td>"+
                                   "<td>"+n.reportname+"</td>"+
                                   "<td>"+n.reportcomment_word+"</td>"+
                 				   //"<td>"+n.comment_time+"</td>"+
                                   "<td>"+n.name+"</td>"+
                                   "<td>"+n.meal+"</td>"+
                                   //"<td>"+n.score+"/5</td>"+
                                   "<td>"+n.comment_word+"</td>";
       var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td><button class=\"btn btn-success\" id=\"deleting\" onclick=\"DeletingReport("+n.id+")\">移除檢舉</button></td>";
       var tr4 ="<td><button class=\"btn btn-info\" id=\"deleting\" onclick=\"ViewingCommentRecord("+n.comment_id+")\">編輯紀錄</button></td>";
       var tr5 ="<td><button class=\"btn btn-danger\" id=\"OpenReportCommentModalBox\""+  
          " type=\"button\" onclick=\"deletingOringinalComment("+n.id+")\">移除評論</button></td>";
       var tr6 ="<td></td>";

       if(n.photo!=null){
           var tr = tr1 + tr2 + tr3 + tr4 + tr5 ;
       }else{
           var tr = tr1 + tr6 + tr3 + tr4 + tr5 ;
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
















