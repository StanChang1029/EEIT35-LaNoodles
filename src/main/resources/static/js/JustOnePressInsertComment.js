$("#JustOnePressInsertComment").click(function(){
	$("#InsertCommentMeal").prop("selectedIndex",2);
	//$("#InsertCommentName").val("MJ Lee");
	$("#InsertCommentScore").attr("value", 4);
	    document.getElementById("idimg1").src="/images/chngstar.gif";
	    document.getElementById("idimg2").src="/images/chngstar.gif";   
	    document.getElementById("idimg3").src="/images/chngstar.gif";
	    document.getElementById("idimg4").src="/images/chngstar.gif"; 
		tinymce.get("InsertCommentWord").setContent("湯頭濃郁,麵條Q彈,有種獨特的香氣,另外建議以後可以增加調整濃度的選項,相當期待之後回訪!!");
	//$('#InsertCommentPhoto').attr("value","/images/ramen1.png");
});