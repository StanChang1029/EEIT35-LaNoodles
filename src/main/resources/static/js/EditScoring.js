     	function editScoringInit(){
console.log("D01+");
			document.getElementById("editIdimg1").src="/images/star.gif";		
		    document.getElementById("editIdimg2").src="/images/star.gif";		
			document.getElementById("editIdimg3").src="/images/star.gif";		
	     	document.getElementById("editIdimg4").src="/images/star.gif";		
	     	document.getElementById("editIdimg5").src="/images/star.gif";	
		}	
     	function editScoringFresh(){
console.log("D02+"+editScore);
		    if(editScore>=1)document.getElementById("editIdimg1").src="/images/chngstar.gif";		
		    if(editScore>=2)document.getElementById("editIdimg2").src="/images/chngstar.gif";		
			if(editScore>=3)document.getElementById("editIdimg3").src="/images/chngstar.gif";		
	     	if(editScore>=4)document.getElementById("editIdimg4").src="/images/chngstar.gif";		
	     	if(editScore==5)document.getElementById("editIdimg5").src="/images/chngstar.gif";	
		}	
       //$(document).ready(function(){
	   function editScoring(){
        var i=0;
        //var sp = document.getElementById("idspName");
        document.getElementById("editIdimg1").addEventListener("mouseover",editmouseover1);  //事件繫結，滑鼠滑入
        document.getElementById("editIdimg1").addEventListener("mouseout",editmouseout);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg1").addEventListener("click",editclick1);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg1").addEventListener("dblclick",editdblclick);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg2").addEventListener("mouseover",editmouseover2);  //事件繫結，滑鼠滑入
        document.getElementById("editIdimg2").addEventListener("mouseout",editmouseout);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg2").addEventListener("click",editclick2);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg2").addEventListener("dblclick",editdblclick);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg3").addEventListener("mouseover",editmouseover3);  //事件繫結，滑鼠滑入
        document.getElementById("editIdimg3").addEventListener("mouseout",editmouseout);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg3").addEventListener("click",editclick3);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg3").addEventListener("dblclick",editdblclick);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg4").addEventListener("mouseover",editmouseover4);  //事件繫結，滑鼠滑入
        document.getElementById("editIdimg4").addEventListener("mouseout",editmouseout);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg4").addEventListener("click",editclick4);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg4").addEventListener("dblclick",editdblclick);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg5").addEventListener("mouseover",editmouseover5);  //事件繫結，滑鼠滑入
        document.getElementById("editIdimg5").addEventListener("mouseout",editmouseout);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg5").addEventListener("click",editclick5);    //事件繫結，滑鼠滑出
        document.getElementById("editIdimg5").addEventListener("dblclick",editdblclick);    //事件繫結，滑鼠滑出

     	editScoringInit();	
		editScoringFresh();	
console.log("D03+");	

        function editmouseover1() {
            if(i==0){            
	            document.getElementById("editIdimg1").src="/images/chngstar.gif";
	            //sp.innerHTML = "評分為...1";
console.log("D04+");
            }   
        }

        function editmouseout() {
            if(i==0){
                document.getElementById("editIdimg1").src="/images/star.gif";
                document.getElementById("editIdimg2").src="/images/star.gif";
                document.getElementById("editIdimg3").src="/images/star.gif";
                document.getElementById("editIdimg4").src="/images/star.gif";
                document.getElementById("editIdimg5").src="/images/star.gif";
                //sp.innerHTML = " ";
            }        
        }

        function editclick1() {
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/star.gif";
            document.getElementById("editIdimg3").src="/images/star.gif";
            document.getElementById("editIdimg4").src="/images/star.gif";
            document.getElementById("editIdimg5").src="/images/star.gif";
            //sp.innerHTML = "你給1隻熊掌";
            i=1;
            document.getElementById("EditCommentScore").value=1;
        }

        function editdblclick() {
            document.getElementById("editIdimg1").src="/images/star.gif";
            document.getElementById("editIdimg2").src="/images/star.gif";
            document.getElementById("editIdimg3").src="/images/star.gif";
            document.getElementById("editIdimg4").src="/images/star.gif";
            document.getElementById("editIdimg5").src="/images/star.gif";
            //sp.innerHTML = " ";
            i=0;
            document.getElementById("EditCommentScore").value=0;
        }        
        
        function editmouseover2() {
            if(i==0){            
            document.getElementById("editIdimg1").src="/images/chngstar.gif";   
            document.getElementById("editIdimg2").src="/images/chngstar.gif";
            //sp.innerHTML = "評分為...2";
            }   
        }

        function editclick2() {
            document.getElementById("editIdimg1").src="/images/chngstar.gif";   
            document.getElementById("editIdimg2").src="/images/chngstar.gif";
            document.getElementById("editIdimg3").src="/images/star.gif";
            document.getElementById("editIdimg4").src="/images/star.gif";
            document.getElementById("editIdimg5").src="/images/star.gif";
            //sp.innerHTML = "你給2隻熊掌";
            i=1;          
            document.getElementById("EditCommentScore").value=2;
        }

        function editmouseover3() {
            if(i==0){            
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/chngstar.gif";   
            document.getElementById("editIdimg3").src="/images/chngstar.gif";
            //sp.innerHTML = "評分為...3";
            }   
        }

        function editclick3() {
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/chngstar.gif";   
            document.getElementById("editIdimg3").src="/images/chngstar.gif";
            document.getElementById("editIdimg4").src="/images/star.gif";
            document.getElementById("editIdimg5").src="/images/star.gif";
            //sp.innerHTML = "你給3隻熊掌";
            i=1;          
            document.getElementById("EditCommentScore").value=3;
        }

        function editmouseover4() {
            if(i==0){            
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/chngstar.gif";   
            document.getElementById("editIdimg3").src="/images/chngstar.gif";
            document.getElementById("editIdimg4").src="/images/chngstar.gif"; 
            //sp.innerHTML = "評分為...4";
            }   
        }

        function editclick4() {
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/chngstar.gif";   
            document.getElementById("editIdimg3").src="/images/chngstar.gif";
            document.getElementById("editIdimg4").src="/images/chngstar.gif";
            document.getElementById("editIdimg5").src="/images/star.gif";
            //sp.innerHTML = "你給4隻熊掌";
            i=1;       
            document.getElementById("EditCommentScore").value=4;   
        }

        function editmouseover5() {
            if(i==0){            
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/chngstar.gif";   
            document.getElementById("editIdimg3").src="/images/chngstar.gif";
            document.getElementById("editIdimg4").src="/images/chngstar.gif";   
            document.getElementById("editIdimg5").src="/images/chngstar.gif";
            //sp.innerHTML = "評分為...5";
            }   
        }

        function editclick5() {
            document.getElementById("editIdimg1").src="/images/chngstar.gif";
            document.getElementById("editIdimg2").src="/images/chngstar.gif";   
            document.getElementById("editIdimg3").src="/images/chngstar.gif";
            document.getElementById("editIdimg4").src="/images/chngstar.gif";   
            document.getElementById("editIdimg5").src="/images/chngstar.gif";
            //sp.innerHTML = "你給5隻熊掌";
            i=1;      
            document.getElementById("EditCommentScore").value=5;    
        }
		
		editScore = 0;
        //});
}
    //}); 
