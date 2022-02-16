     	function scoringInit(){
console.log("D01+");
			document.getElementById("idimg1").src="/images/star.gif";		
		    document.getElementById("idimg2").src="/images/star.gif";		
			document.getElementById("idimg3").src="/images/star.gif";		
	     	document.getElementById("idimg4").src="/images/star.gif";		
	     	document.getElementById("idimg5").src="/images/star.gif";	
		}	
     	function scoringFresh(){
console.log("D02+"+editScore);
		    if(editScore>=1)document.getElementById("idimg1").src="/images/chngstar.gif";		
		    if(editScore>=2)document.getElementById("idimg2").src="/images/chngstar.gif";		
			if(editScore>=3)document.getElementById("idimg3").src="/images/chngstar.gif";		
	     	if(editScore>=4)document.getElementById("idimg4").src="/images/chngstar.gif";		
	     	if(editScore==5)document.getElementById("idimg5").src="/images/chngstar.gif";	
		}	
	   function scoring(){
	    console.log("C0+");
	    $("#InsertCommentScore").attr("value", "");
	    $("#EditCommentScore").attr("value", "");
        var i=0;
        document.getElementById("idimg1").addEventListener("mouseover",mouseover1);  //事件繫結，滑鼠滑入
        document.getElementById("idimg1").addEventListener("mouseout",mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg1").addEventListener("click",click1);    //事件繫結，滑鼠滑出
        document.getElementById("idimg1").addEventListener("dblclick",dblclick);    //事件繫結，滑鼠滑出
        document.getElementById("idimg2").addEventListener("mouseover",mouseover2);  //事件繫結，滑鼠滑入
        document.getElementById("idimg2").addEventListener("mouseout",mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg2").addEventListener("click",click2);    //事件繫結，滑鼠滑出
        document.getElementById("idimg2").addEventListener("dblclick",dblclick);    //事件繫結，滑鼠滑出
        document.getElementById("idimg3").addEventListener("mouseover",mouseover3);  //事件繫結，滑鼠滑入
        document.getElementById("idimg3").addEventListener("mouseout",mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg3").addEventListener("click",click3);    //事件繫結，滑鼠滑出
        document.getElementById("idimg3").addEventListener("dblclick",dblclick);    //事件繫結，滑鼠滑出
        document.getElementById("idimg4").addEventListener("mouseover",mouseover4);  //事件繫結，滑鼠滑入
        document.getElementById("idimg4").addEventListener("mouseout",mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg4").addEventListener("click",click4);    //事件繫結，滑鼠滑出
        document.getElementById("idimg4").addEventListener("dblclick",dblclick);    //事件繫結，滑鼠滑出
        document.getElementById("idimg5").addEventListener("mouseover",mouseover5);  //事件繫結，滑鼠滑入
        document.getElementById("idimg5").addEventListener("mouseout",mouseout);    //事件繫結，滑鼠滑出
        document.getElementById("idimg5").addEventListener("click",click5);    //事件繫結，滑鼠滑出
        document.getElementById("idimg5").addEventListener("dblclick",dblclick);    //事件繫結，滑鼠滑出

     	scoringInit();	
		scoringFresh();	
console.log("D03+");	

        function mouseover1() {
            if(i==0){            
	            document.getElementById("idimg1").src="/images/chngstar.gif";
	            //sp.innerHTML = "評分為...1";
console.log("D04+");
            }   
        }

        function mouseout() {
            if(i==0){
                document.getElementById("idimg1").src="/images/star.gif";
                document.getElementById("idimg2").src="/images/star.gif";
                document.getElementById("idimg3").src="/images/star.gif";
                document.getElementById("idimg4").src="/images/star.gif";
                document.getElementById("idimg5").src="/images/star.gif";
                //sp.innerHTML = " ";
            }        
        }

        function click1() {
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/star.gif";
            document.getElementById("idimg3").src="/images/star.gif";
            document.getElementById("idimg4").src="/images/star.gif";
            document.getElementById("idimg5").src="/images/star.gif";
            //sp.innerHTML = "你給1隻熊掌";
            i=1;
            document.getElementById("InsertCommentScore").value=1;
        }

        function dblclick() {
            document.getElementById("idimg1").src="/images/star.gif";
            document.getElementById("idimg2").src="/images/star.gif";
            document.getElementById("idimg3").src="/images/star.gif";
            document.getElementById("idimg4").src="/images/star.gif";
            document.getElementById("idimg5").src="/images/star.gif";
            //sp.innerHTML = " ";
            i=0;
            document.getElementById("InsertCommentScore").value=0;
        }        
        
        function mouseover2() {
            if(i==0){            
            document.getElementById("idimg1").src="/images/chngstar.gif";   
            document.getElementById("idimg2").src="/images/chngstar.gif";
            //sp.innerHTML = "評分為...2";
            }   
        }

        function click2() {
            document.getElementById("idimg1").src="/images/chngstar.gif";   
            document.getElementById("idimg2").src="/images/chngstar.gif";
            document.getElementById("idimg3").src="/images/star.gif";
            document.getElementById("idimg4").src="/images/star.gif";
            document.getElementById("idimg5").src="/images/star.gif";
            //sp.innerHTML = "你給2隻熊掌";
            i=1;          
            document.getElementById("InsertCommentScore").value=2;
        }

        function mouseover3() {
            if(i==0){            
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/chngstar.gif";   
            document.getElementById("idimg3").src="/images/chngstar.gif";
            //sp.innerHTML = "評分為...3";
            }   
        }

        function click3() {
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/chngstar.gif";   
            document.getElementById("idimg3").src="/images/chngstar.gif";
            document.getElementById("idimg4").src="/images/star.gif";
            document.getElementById("idimg5").src="/images/star.gif";
            //sp.innerHTML = "你給3隻熊掌";
            i=1;          
            document.getElementById("InsertCommentScore").value=3;
        }

        function mouseover4() {
            if(i==0){            
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/chngstar.gif";   
            document.getElementById("idimg3").src="/images/chngstar.gif";
            document.getElementById("idimg4").src="/images/chngstar.gif"; 
            //sp.innerHTML = "評分為...4";
            }   
        }

        function click4() {
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/chngstar.gif";   
            document.getElementById("idimg3").src="/images/chngstar.gif";
            document.getElementById("idimg4").src="/images/chngstar.gif";
            document.getElementById("idimg5").src="/images/star.gif";
            //sp.innerHTML = "你給4隻熊掌";
            i=1;       
            document.getElementById("InsertCommentScore").value=4;   
        }

        function mouseover5() {
            if(i==0){            
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/chngstar.gif";   
            document.getElementById("idimg3").src="/images/chngstar.gif";
            document.getElementById("idimg4").src="/images/chngstar.gif";   
            document.getElementById("idimg5").src="/images/chngstar.gif";
            //sp.innerHTML = "評分為...5";
            }   
        }

        function click5() {
            document.getElementById("idimg1").src="/images/chngstar.gif";
            document.getElementById("idimg2").src="/images/chngstar.gif";   
            document.getElementById("idimg3").src="/images/chngstar.gif";
            document.getElementById("idimg4").src="/images/chngstar.gif";   
            document.getElementById("idimg5").src="/images/chngstar.gif";
            //sp.innerHTML = "你給5隻熊掌";
            i=1;      
            document.getElementById("InsertCommentScore").value=5;    
        }
		
		editScore = 0;
        //});
}
    //}); 
