       $(document).ready(function(){
			   var spanInsertCommentName = document.getElementById("spanInsertCommentName");
			   spanInsertCommentName.innerHTML = " "+username;
       $("#InsertCommentSend").click(function(){
          	   var InsertCommentName = username;
        	   var InsertCommentMeal = $("#InsertCommentMeal").val();
        	   var InsertCommentScore = $("#InsertCommentScore").val();
        	   var InsertCommentWord = tinymce.get("InsertCommentWord").getContent();
        	   var InsertCommentPhoto = $('input[name="InsertCommentPhoto"]').get(0).files[0];
               var formData = new FormData();

               formData.append('name',username);
               formData.append('member_id',memberId);
               formData.append('meal',InsertCommentMeal);
               formData.append('score',InsertCommentScore);
               formData.append('comment_word',InsertCommentWord);
               formData.append('photo', InsertCommentPhoto);

		   	   $("#InsertCommentName").val("");
			   $("#InsertCommentMeal").prop("selectedIndex",0);
			   $("#InsertCommentScore").attr("value", "");
			   tinymce.get("InsertCommentWord").setContent("");
			   $('input[name="InsertCommentPhoto"]').val("");

               document.getElementById("idimg1").src="/images/star.gif";
               document.getElementById("idimg2").src="/images/star.gif";
               document.getElementById("idimg3").src="/images/star.gif";
               document.getElementById("idimg4").src="/images/star.gif";
               document.getElementById("idimg5").src="/images/star.gif";

			   meal = "最新";
			   $("#meal").prop("selectedIndex",2);

              $.ajax({ 
                  type:'post', 
                  url:'InsertComment', 
                  contentType:false,
                  processData:false,
                  cache: false,
                  data: formData,
                  success: function(data) { 
                      loadPage();

			    		Toast.fire({
						  icon: 'success',
						  title: '新增成功!'
						})
						
                  }, 
                  error: function(e) { 
                      console.log(e);

			    		Toast.fire({
						  icon: 'error',
						  title: '新增時發生了點失誤,請重新新增!'
						})
						
					} 
             });   
        });
    }); 

$("#OpenInsertCommentModalBox").click(function(){

	$("#InsertCommentMeal").prop("selectedIndex",0);
	tinymce.get("InsertCommentWord").setContent("");
	$('input[name="InsertCommentPhoto"]').val("");
	scoring();
	document.querySelector('#InsertCommentSend').disabled = true;
	if(insert_robot_id != null)
		grecaptcha.reset(insert_robot_id);
	else
	{
		insert_robot_id = grecaptcha.render('insertex', {
		    'sitekey': '6LdiYnMeAAAAADP8zCvw-Et-lBR5cVNqrK-XJ6mD',
		    'theme': 'light',
		    'size': 'normal',
		    'callback': insert_valid,
		    'expired-callback': insert_expired,
		});
	}

});

function insert_valid(){
	document.querySelector('#InsertCommentSend').disabled = false;
}

function insert_expired(){
	document.querySelector('#InsertCommentSend').disabled = true;
}