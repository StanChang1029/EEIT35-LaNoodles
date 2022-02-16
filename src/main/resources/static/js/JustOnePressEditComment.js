$("#JustOnePressEditComment").click(function(){
	$("#EditCommentScore").attr("value", 2);
	    document.getElementById("editIdimg1").src="/images/chngstar.gif";
	    document.getElementById("editIdimg2").src="/images/chngstar.gif";   
	    document.getElementById("editIdimg3").src="/images/star.gif";
	    document.getElementById("editIdimg4").src="/images/star.gif"; 
	    document.getElementById("editIdimg5").src="/images/star.gif"; 
	tinymce.get("EditCommentWord").setContent("湯頭濃郁,麵條Q彈,有種獨特的香氣,另外建議以後可以增加調整濃度的選項,相當期待之後回訪!! 另外補充他們店的叉燒肉,相當有口感,肥瘦均勻,炙燒恰到好處,配上拉麵裡的青菜,有油而不膩的且瘦而不柴!!!!");
	//$('#InsertCommentPhoto').attr("value","/images/ramen1.png");
});