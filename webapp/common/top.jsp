<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>"/>
<style>
<!--
.message1{
	color: #000;
	text-decoration: none;
}
-->
</style>
<script type="text/javascript"
	src="<c:url value='/scripts/common/top.js'/>"></script>
<script type="text/javascript">

//setInterval("myInterval()",1000*3);   //进行间隔执行时 
$j(document).ready(function() {  
	//myInterval();     
	$j("#unmessage").mousemove(function(){  
		$j("#message").show();     
	});
	$j("#doinfo").click(function(){
		var url=window.parent.$j("body").attr("contextpath")+"/workflow/tasklist/to_list.do";   
		jumbo.openFrame("frm-"+(new Date()).getTime().toString(),"待办任务",url); 
	});
});

function myInterval(){  
	       $j.ajax({  
	           type:'post',     
	           url:$j("body").attr("contextpath") + "/base/warnConfig/querycount.json",  
	          async: false ,  
	          dataType:'json',  
	           success:function(data){  
	        	   if (data.count>=1) {
	        		   $j("#spantext").text("("+data.count+")");
	        		   $j("#warnmessage").text("("+data.warnmessageCount+")");
	        		   $j("#domessage").text("("+data.domessageCount+")");
				}
	        	   else{
	        		   $j("#spantext").text("(0)");  
	        		   $j("#warnmessage").text("(0)");
	        		   $j("#domessage").text("(0)");
	        	   }
           }  
	        });  
   }    
</script>
<span id="topreload" onclick="myInterval();"></span>
<div id="infobar">
	<span style="float: left;"> <c:choose>
			<c:when test="${flag==true }">
				<img id="top_logo" alt="logo"
					src="previewImage.do?imgPath=${imgsrc }">
			</c:when>
			<c:otherwise>
				<img id="top_logo" alt="logo"
					src="<c:url value='/images/logo/0000.png'/>">
			</c:otherwise>
		</c:choose>
	</span> <input id="accountType" value="${accountType }" type="hidden" />
	<input type="hidden" id="accountId" value="${accountId}">
	<span id="userinfo">欢迎您：${compCode}&nbsp;&nbsp;${loginName} [
		&nbsp;<input type="hidden" id="Top_auditor" value="${loginName}" /><a id="unmessage" href="#">未读消息<span id="spantext"></span></a>&nbsp;|&nbsp;<a id="exit" href="#">退出</a>&nbsp;|&nbsp;<a id="upPass" href="#">修改密码</a>
		]
	</span>
</div>  
<table  id="message" style="display:none; float:right; top:-10px; margin-right:110px;position:relative ;background:#f7f7f7; z-index: 99;" onmouseleave="$j('#message').hide()">
<tr><td><a id="doinfo" href="#" class="message1">待办任务<span id="domessage"></span></a></td></tr>
</table>     
     
<div id="navigation" class="ui-corner-all">
	<div class="welcome ui-corner-left">欢迎</div>
	<div class="topmenu" id="top-menu"></div>
	<!-- <div class="stop">
		
	</div> -->
	<div id="functionbar" class="ui-corner-right" style="display: none;">
		<input placeholder="请输入... " type="hidden" />
	</div>
</div>
<div id="dialog-chgrole">
	<form id="subForm" method="post">
		<table>
			<tr style="display: none;">
				<td class="lable">原密码</td>
				<td><input type="password" name="password1" id="password1"
					loxiaType="input" max="6" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="lable">原密码</td>
				<td><input type="password" name="password" id="password"
					loxiaType="input" max="6" mandatory="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="lable">新密码</td>
				<td><input type="password" name="newPass1" id="newPass1"
					loxiaType="input" max="6" mandatory="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="lable">确认新密码</td>
				<td><input type="password" name="newPass2" id="newPass2"
					loxiaType="input" max="6" mandatory="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
		</table>
	</form>
</div>
