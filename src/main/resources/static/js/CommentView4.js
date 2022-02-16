function loadPage2(comment_id){

  var mealUrl='/cmtrecord/selectByCommentOrderByComment_timeDESC/'; 
              //cmtrecord/selectByCommentOrderByComment_timeDESC
console.log("K1+"+comment_id);
  indexPage=1;
  
      $.ajax({
       type:'post',
       url:mealUrl + indexPage +'?comment_id=' + comment_id,
       dataType:'JSON',
       contentType:'application/json',
       success: function(data){
	      $("#showproduct2").empty("");
	      var table = $('#showproduct2');
	      table.append("<tr class=\"titleTr\">"+
	                   "<th class=\"titleTd\" width=8%>時間</th>"+
	                                     "<th width=5%>名字</th>"+
	                                     "<th width=7%>餐點</th>"+
	                                     "<th width=4%>評分</th>"+
	                                     "<th width=15%>評論</th>"+
	                                     "<th width=1%>圖片</th></tr>");







        indexPage++;

        if(data.length==0){
         //$('#showproduct2').append("<tr class=\"TableTr\"><td colspan='12'>暫無資料</td></tr>");
        }else{
         $.each(data, function(a,n){
       
       var tr1 ="<tr class=\"TableTr\"><td>"+n.comment_time+"</td>"+
	                                  "<td>"+n.name+"</td>"+
	                                  "<td>"+n.meal+"</td>"+
	                                  "<td>"+n.score+"/5</td>"+
	                                  "<td>"+n.comment_word+"</td>";
       var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td></td>";

       






       if(n.photo!=null){
           var tr = tr1 + tr2 ;
       }else{
           var tr = tr1 + tr3;
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
	   console.log("flag1");
	   showOriginalRecord(comment_id);
	   console.log("flag10");
       }
      });
    }

 function nextPage2(indexPage){
  var curl='/cmtrecord/selectByCommentOrderByComment_timeDESC/'; 









  $.ajax({
      type:'post',
      url: curl + indexPage +'?meal=' + meal,
      dataType:'JSON',
      contentType:'application/json',
      success: function(data){

       if(data==null){//這行絕對run不到
        //$('table').prepend("<tr><td colspan='2'>暫無資料</td></tr>");
       }else{
		var table = $('#showproduct2');
       
         $.each(data, function(a,n){

       var tr1 ="<tr class=\"TableTr\"><td>"+n.comment_time+"</td>"+
	                                  "<td>"+n.name+"</td>"+
	                                  "<td>"+n.meal+"</td>"+
	                                  "<td>"+n.score+"/5</td>"+
	                                  "<td>"+n.comment_word+"</td>";
       var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td></td>";






       if(n.photo!=null){
           var tr = tr1 + tr2 ;
       }else{
           var tr = tr1 + tr3;
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



	
//=================================================================================================================
//=================================================================================================================
//=================================================================================================================
//=================================================================================================================
//=================================================================================================================
	


function showOriginalRecord(comment_id){
		   console.log("flag2,comment_id="+comment_id);

    var originalCommentUrl;
     originalCommentUrl='/comment/SelectbyId'; 
   
  indexPage=1;
  
      $.ajax({
       type:'post',
       url: originalCommentUrl + '?comment_id=' + comment_id,
       dataType:'JSON',
       contentType:'application/json',
       success: function(data){
	   console.log("flag3,comment_id="+comment_id);

        indexPage++;

        if(data.length==0){
         //$('#showproduct2').append("<tr class=\"TableTr\"><td colspan='12'>暫無資料</td></tr>");
        }else{
         $.each(data, function(a,n){
       
       var tr1 ="<tr class=\"TableTr\"><td>"+n.comment_time+"</td>"+
                                      "<td>"+n.name+"</td>"+
                                      "<td>"+n.meal+"</td>"+
                                      "<td>"+n.score+"/5</td>"+
                                      "<td>"+n.comment_word+"</td>";
       var tr2 ="<td><div class=\"pic\"><a data-fancybox=\"images\" data-type=\"image\" data-src=\"#\">"+ 
                      "<img class=\"img-thumbnail\" src=\"data:image/png;base64,"+n.photo+"\"></a></div></td>";
       var tr3 ="<td></td>";

       if(n.photo!=null){
           var tr = tr1 + tr2 ;
       }else{
           var tr = tr1 + tr3;
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


 

 $(window).scroll(function() {
    if ($(window).scrollTop() >= $(document).height() - $(window).height() - 700) {
   console.log("here"+indexPage);
      nextPage2(indexPage);
   indexPage++;
    }
 });











