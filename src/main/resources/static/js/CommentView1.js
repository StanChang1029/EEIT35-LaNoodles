function deleting(id){
    var params = {"pid":id,}
    $.ajax({ 
        type:'post', 
        url:'DeletingComment?pid='+id, 
        contentType:'application/json', 
        //data: JSON.stringify(params),
        success: function(data) { 
			loadPage();
	
    		Toast.fire({
			  icon: 'success',
			  title: '刪除成功!'
			})
        }, 
        error: function(e) { 
		
    		Toast.fire({
			  icon: 'error',
			  title: '刪除失敗,請稍後再試!'
			})

		} 
   });   
}

function DeletingReport(id){
    var params = {"pid":id,}
    $.ajax({ 
        type:'post', 
        url:'/cmtreport/DeletingReport?pid='+id,
        contentType:'application/json', 
        //data: JSON.stringify(params),
        success: function(data) { 
			
    		Toast.fire({
			  icon: 'success',
			  title: '移除成功!'
			})
			
			loadPage();
        }, 
        error: function(e) { 
            console.log(e);
	
    		Toast.fire({
			  icon: 'error',
			  title: '移除失敗,請稍後再試!'
			})

		} 
   });   
}

function hidingOringinalComment(id){
/*
	   var formData = new FormData();   	   

       formData.append('id',editId);
       formData.append('name',EditCommentName);
       formData.append('meal',EditCommentMeal);
       formData.append('score',EditCommentScore);
       formData.append('comment_word',EditCommentWord);
       formData.append('photo', EditCommentPhoto);

       $.ajax({ 
           type:'post', 
           url:'EditComment', 
           contentType:false,
           processData:false,
           cache: false,
           data: formData,
           success: function(data) { 
console.log("E1+");
	     	   meal = "最新";
			   $("#meal").prop("selectedIndex",2);	
               loadPage(indexPage);	
			   alert("更新成功!");	
           }, 
           error: function(e) { 
               console.log(e);
			   alert("更新失敗,請稍後在試!");
	 		} 
      }); 
*/
}


function deletingOringinalComment(id){
    $.ajax({ 
        type:'post', 
        url:'/cmtreport/DeletingOriginComment?pid='+id, 
        contentType:'application/json', 
        success: function(data) { 
				
    		Toast.fire({
			  icon: 'success',
			  title: '移除成功!'
			})

			loadPage();
        }, 
        error: function(e) { 
		
    		Toast.fire({
			  icon: 'error',
			  title: '移除失敗,請稍後再試!'
			})

            console.log(e);
		} 
   });   
}


function ViewingCommentRecord(comment_id){
console.log("comment_id:"+comment_id);
	window.location.href = "/comment/CommentRecord?comment_id="+comment_id;

}