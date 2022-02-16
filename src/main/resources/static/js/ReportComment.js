function reporting(comment_id){

	tinymce.get("ReportCommentWord").setContent("");
	report_comment_id = comment_id;
	document.querySelector('#ReportCommentSend').disabled = true;
	if(report_robot_id != null)
		grecaptcha.reset(report_robot_id);
	else
	{
		report_robot_id = grecaptcha.render('reportex', {
		    'sitekey': '6LdiYnMeAAAAADP8zCvw-Et-lBR5cVNqrK-XJ6mD',
		    'theme': 'light',
		    'size': 'normal',
		    'callback': report_valid,
			'expired-callback': report_expired,
		});
	}

}

$("#ReportCommentSend").click(function(){
   var formData = new FormData();
   var ReportCommentWord = tinymce.get("ReportCommentWord").getContent();

   formData.append('memberId',memberId);
   formData.append('comment_id',report_comment_id);
   formData.append('username',username);
   formData.append('ReportCommentWord',ReportCommentWord);
   console.log("12345");
   $.ajax({ 
       type:'post', 
       url:'ReportComment',
       contentType:false,
       processData:false,
       cache: false,
       data: formData,
       success: function(data) { 
	
    		Toast.fire({
			  icon: 'success',
			  title: '檢舉成功!'
			})
			
		   loadPage();
		   
       }, 
       error: function(e) { 
	       console.log(e);
			
    		Toast.fire({
			  icon: 'success',
			  title: '檢舉失敗,請稍後在試!'
			})
	
	   } 
   });
});

function report_valid(){
	document.querySelector('#ReportCommentSend').disabled = false;
}

function report_expired(){
	document.querySelector('#ReportCommentSend').disabled = true;
}