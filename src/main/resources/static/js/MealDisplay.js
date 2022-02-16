// <!-- <!DOCTYPE html>
// <html>
// <head>
// <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
//     <title>Ramen.html</title>
// </head>
// <body>  -->
//     <!-- <img alt="" src="WinImages/0.gif" /><img alt="" src="WinImages/1.gif" />:<img alt="" src="WinImages/2.gif" /><img alt="" src="WinImages/3.gif" />
//     -->
//     <!-- <img alt="" id="picH1" /><img alt="" id="picH2" />
//     <img alt="" id="picM1" /><img alt="" id="picM2" /> -->
//     <!-- <img alt="" id="picS2" /><img alt="" id="picS2" /><BR>
//     <img alt="" id="picSA0" /><img alt="" id="picSA0" />
//     <img alt="" id="picSA1" /><img alt="" id="picSA1" />
//     <img alt="" id="picSA2" /><img alt="" id="picSA2" />
//     <img alt="" id="picSA3" /><img alt="" id="picSA3" />
//     <img alt="" id="picSA4" /><img alt="" id="picSA4" /><BR>
//     <img alt="" id="backward" /><img alt="" id="backward" />
//     <img alt="" id="run" /><img alt="" id="run" />
//     <img alt="" id="forward" /><img alt="" id="forward" /> -->
//     <!-- <BR><div id="idspName"></div><br/> -->
    
    // <script>
        var i=0,j=0;
        var k=0,s2=0,m=0;
        // document.getElementById("picS1").src="WinImages/1.gif";
        // document.getElementById("picS2").src="WinImages/2.gif";

        document.getElementById("picS2").addEventListener("click",clickpicture);
        document.getElementById("backward").addEventListener("click",clickbackward);  //事件繫結，滑鼠滑入
        document.getElementById("run").addEventListener("click",clickrun);    //事件繫結，滑鼠滑出
        document.getElementById("forward").addEventListener("click",clickforward);    //事件繫結，滑鼠滑出
        
        function clickpicture(){
            if(m==0)
                location.href="http://www.facebook.com/commerce/products/爆走次郎拉麵/1848775641808057?referral_code=mini_shop_page_card_cta&ref=mini_shop_storefront";
            else if(m==1)
                location.href="https://www.facebook.com/commerce/products/%E9%BB%91%E8%92%9C%E8%B1%9A%E9%AA%A8sp/1547192092066593/?ref=mini_shop_storefront&referral_code=mini_shop_page_card_cta";
            else if(m==2)
                location.href="https://www.facebook.com/commerce/products/%E6%BF%83%E5%8E%9A%E8%B1%9A%E9%AA%A8%E6%8B%89%E9%BA%B5/1042106019200315/?ref=mini_shop_storefront&referral_code=mini_shop_page_card_cta";
            else if(m==3)
                location.href="https://www.facebook.com/commerce/products/%E5%A4%A7%E8%94%A5%E9%B4%A8%E9%86%AC%E6%B2%B9%E6%8B%89%E9%BA%B5/1750438898333270/?ref=mini_shop_storefront&referral_code=mini_shop_page_card_cta";
            else if(m==4)
                location.href="https://www.facebook.com/commerce/products/%E9%99%90%E5%AE%9A-%E8%9D%A6%E8%9D%A6%E6%B9%AF%E9%BA%B5/1520620694720271/?ref=mini_shop_storefront&referral_code=mini_shop_page_card_cta";
            
        }

        function display(){
            document.getElementById("picS2").src=`/images/ramen${m}.png`;

            document.getElementById("picSA0").src=`/images/1.gif`;
            document.getElementById("picSA1").src=`/images/2.gif`;
            document.getElementById("picSA2").src=`/images/3.gif`;
            document.getElementById("picSA3").src=`/images/4.gif`;
            document.getElementById("picSA4").src=`/images/5.gif`;

            document.getElementById("backward").src=`/images/backward.gif`;
            document.getElementById("run").src=`/images/run.gif`;
            document.getElementById("forward").src=`/images/forward.gif`;

            if(m==0)
                document.getElementById("picSA0").src=`/images/big(${m+1}).gif`;
            else if(m==1)
                document.getElementById("picSA1").src=`/images/big(${m+1}).gif`;
            else if(m==2)
                document.getElementById("picSA2").src=`/images/big(${m+1}).gif`;
            else if(m==3)
                document.getElementById("picSA3").src=`/images/big(${m+1}).gif`;
            else if(m==4)
                document.getElementById("picSA4").src=`/images/big(${m+1}).gif`;
        }

        function clickbackward(){
            i=1;
            if(j==0){               
                k=s2+1;
                j=1;
            }
            // if(j==0){               
            //     let da1=new Date();
            //     let s1a1=da1.getSeconds();
            //     k=(s1a1%5)-1;
            //     j=1;
            // }
            k--;
            if(k>0||k==0){
                m=k%5;
                k=m%5;
            }
            else if(k<0){
                m=(5-((k*(-1))%5))%5;
                k=m%5;
            }
            // sp.innerHTML = k;
            //document.getElementById("picS2").src=`images/ramen${m}.png`;
            display();
        }

        function clickrun(){
            i=0;
        }

        function clickforward(){
            i=1;
            if(j==0){               
                k=s2-1;
                j=1;
            }
            // if(j==0){               
            //     let da1=new Date();
            //     let s1a1=da1.getSeconds();
            //     k=(s1a1%5)+1;
            //     j=1;
            // }
            k++;    
            m=(k+5)%5;
            //document.getElementById("picS2").src=`images/ramen${m}.png`;
            display();
        }

        function setClock(){
            if(i==0){
                //建立日期
                let d=new Date();

                //取得秒數，分割為兩位數
                let s=d.getSeconds();
                // alert(s);
                // let s1=parseInt(s/10);
                s2=s%5;      
                //顯示圖片，對應秒數
                // document.getElementById("picS1").src="images/ramen"+s1+".gif";
                m=s2;
                display();
            j=0;
            }
        }

        window.setInterval(setClock,1000);
        setClock();
        
    // {/* </script> */}
// <!-- // </body>
// // </html> -->
