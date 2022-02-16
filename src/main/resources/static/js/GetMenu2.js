function getmenu2(){
    $.ajax({ 
        type:'post', 
        url:'QueryAllMenu2', 
        contentType:'application/json', 
		dataType:'JSON',
        success: function(data) { 
			$.each(data, function(a,n){
				$("#meal").append("<option value=\""+n.dish+"\">"+n.dish+"</option>");
				$("#InsertCommentMeal").append("<option value=\""+n.dish+"\">"+n.dish+"</option>");
			});
        },
        error: function(e) { 
            console.log(e); //
		} 
   });   
}