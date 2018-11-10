<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
 <%@include file="/common/meta.jsp"%>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <style>   

            body {
                text-align: center;
               /*  background: #313131; */
                  background: #ffffff;
               /*  background-image: url(http://rhymebrain.com/debut_dark.png);
 */
            }
            h1 {
                font-family: 'Leckerli One', cursive;
                text-align: center;
                font-size: 50px;
                margin-bottom:0;
                margin-top: 0;
                text-shadow: 2px 2px 2px #000;
                color: #eee;
            }

            h2 {
                font-family: 'Shadows Into Light', cursive;
                text-align: center;
                font-size: 20px;
                margin-top: 0;
                color: #eee;
            }

            #zwibbler {
                width: 750px;
                height: 450px;       
                border: 1px solid #ccc;        
                display: inline-block;        
                vertical-align: top;
                background: white;
            }

            #picker {
                width: 200px;
                display: inline-block;
                margin-left: 10px;
                border: 1px solid #ccc;
                height: 450px;        
                overflow: auto;
                vertical-align: top;
            }

            #picker img {
                width: 170px;
            }

        </style>
    </head>
    <body>
    <form action="" enctype="multipart-formdata"  id="fileForm" method="post">
        <div id=zwibbler></div>
 			<br>   
        	<button type="submit" loxiaType="button" class="confirm" 
					id="download">
					保存
				</button>
        <input type="hidden" value="previewImage.do?imgPath=${oldUrl }" name="imgurl"  id="imgurl"></input>
        <input type="hidden" value="${oldUrl }" name="oldUrl"  id="oldUrl"></input>
         <input type="hidden" value="" name="newUrl"  id="newUrl"></input>
        </form>
       
        <script src="<%=request.getContextPath() %>/frame/loanbefore/zwibbler/zwibbler-demo.js"></script>
        <script>
            var zwibbler = Zwibbler.create("zwibbler", {
                showToolbar: true,
                showSquareTool: false,
                showCircleTool: false,
                showCurveTool: false,
                showLineTool: false,
                showArrowTool: false,
                showCopyPaste: false,
                defaultFont: "Oswald",
                defaultFontSize: 45,
                defaultTextFillStyle: "#ffffff",
                defaultBrushColour: "#ffffff",
                defaultBrushWidth: 10,
                background:"clear",
                backgroundImage: null, 
                useTouch: true   
                
            });
         /*    zwibbler.setConfig("backgroundImage", "previewImage.do?imgPath=${oldUrl }"); */
            zwibbler.on("document-changed", function() {
                localStorage.setItem("meme-document", zwibbler.save());
            });

            function addHandler(element) {
               element.addEventListener("click", function(e) {
                    zwibbler.setConfig("backgroundImage", element.src);
               });
            }
            $j(document)
    		.ready(function(){
    			zwibbler.setConfig("backgroundImage", $j("#imgurl").val());    
    		});
            document.getElementById("download").addEventListener("click", function(e) {
            	$j("#newUrl").val(zwibbler.save("png"));
            	var options={
            			success: submitApplySucess,
        	            dataType: 'json',
        	            type: 'POST',
        	            url: "<%=request.getContextPath()%>/base/fileinfo/delAndSaveFileInfo.do"
        	            		};
                $j('#fileForm').ajaxForm(options);
    	        $j('#fileForm').submit();   
   
          
                    }, false);
            function submitApplySucess(rs) {
            	if (rs.msg == 'fail') {
            		jumbo.showMsg("请在图片区域操作！");  
        		}
        		if (rs.msg == 'success') {
        			jumbo.showMsg("文档文件保存成功",null,null,"on_tip_type");
        		}
            }
        </script>
    </body>

</html>
