function editing(id){	console.log("B1");
	document.querySelector('#EditCommentSend').disabled = true;
	if(edit_robot_id != null)
		grecaptcha.reset(edit_robot_id);
	else
	{
		edit_robot_id = grecaptcha.render('editex', {
		    'sitekey': '6LdiYnMeAAAAADP8zCvw-Et-lBR5cVNqrK-XJ6mD',
		    'theme': 'light',
		    'size': 'normal',
		    'callback': edit_valid,
			'expired-callback': edit_expired,
		});
	}
	scoring();
	editId = id;
	$('input[name="EditCommentPhoto"]').val("");
	
	  var cid=id;
	  var params = {"cid":id,}
	  var spanEditCommentMeal = document.getElementById("spanEditCommentMeal");
	  var spanEditCommentName = document.getElementById("spanEditCommentName");
	  $.ajax({ 
	      type:'post',
	      url:'SelectbyId?cid='+cid, 
	      contentType:'application/json', 
	      success: function(data) { 
			
	      var comment = data;

		$("#EditCommentMeal").attr("value", comment.meal);
		$("#EditCommentName").attr("value", comment.name);
		$("#EditCommentScore").attr("value", comment.score);

console.log("B2+"+comment.score);
			spanEditCommentMeal.innerHTML = " "+comment.meal;
			spanEditCommentName.innerHTML = " "+comment.name;
			editScore = comment.score;

	        editScoring();
var test = $("#EditCommentScore").val();
console.log("B3+"+test);
			tinymce.get("EditCommentWord").setContent(comment.comment_word);
	      },
	      error: function(e) {  
	        console.log(e);

		    Toast.fire({
			  icon: 'error',
			  title: '編輯失敗!'
			})

		  } 
  });
}

$("#EditCommentSend").click(function(){
 	   var EditCommentName = $("#EditCommentName").val();
 	   var EditCommentMeal = $("#EditCommentMeal").val();
 	   var EditCommentScore = $("#EditCommentScore").val();
 	   var EditCommentWord = tinymce.get("EditCommentWord").getContent();
console.log("B5+"+editId+"/"+EditCommentName+"/"+EditCommentMeal+"/"+EditCommentScore+"/"+EditCommentWord);
	   var EditCommentPhoto = $('input[name="EditCommentPhoto"]').get(0).files[0]; 
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
               loadPage();	

    		Toast.fire({
			  icon: 'success',
			  title: '更新成功!'
			})

           }, 
           error: function(e) { 
               console.log(e);

    		Toast.fire({
			  icon: 'error',
			  title: '更新失敗,請稍後再試!'
			})
			
	 		} 
      }); 
 });

function edit_valid(){
	document.querySelector('#EditCommentSend').disabled = false;
}

function edit_expired(){
	document.querySelector('#EditCommentSend').disabled = true;
}