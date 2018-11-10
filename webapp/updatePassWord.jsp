<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='css/redmond/jquery-ui-1.8.7.custom.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='css/redmond/loxia-ui-1.2.custom.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='css/main.css'/>" />
	
	<style>
html, body {
	height: 100%;
	overflow: hidden;
}
INPUT.ui-loxia-default{
	width: auto;
}
.ui-laxia-default{
	width: auto;
}
body {
	text-align: center;
}

</style>

<script type="text/javascript"
	src="<c:url value='scripts/main/jquery-ui-1.8.7.custom.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='scripts/main/jquery.loxiacore-1.2.js'/>"></script>

<script type="text/javascript">

var $j = jQuery.noConflict();
$j(document).ready(function() {
		$j("#newPass2").val("");
		$j("#newPass1").val("");
		$j("#password").val("");
		$j("#btnSave").click(function(){
			if ($j("#newPass2").val() != ""
				&& $j("#newPass1")
						.val() != ""
				&& $j("#password")
						.val() != "") {
			if ($j("#newPass2").val() == $j(
					"#newPass1").val()) {
				$j
						.ajax({
							type : "post",
							url : $j(
									"body")
									.attr(
											"contextpath")
									+ "/base/update_pass.json",
							data : {
								password : $j(
										"#password")
										.val(),
								newPass1 : $j(
										"#newPass1")
										.val(),
								newPass2 : $j(
										"#newPass1")
										.val(),
								async : false,
								random : parseInt(Math
										.random() * 100000)
							},

							dataType : "json",
							success : function(
									rs) {
								if (rs
										&& rs.msg == 'success') {
									
									alert("修改成功");
									//跳转到登录页面
									window.location.href="login.jsp";
								} else {
								
									alert("原密码错误");
								}
							}
						});
			} else {
				alert("2次输入的密码不正确");
			}
		} else {
			alert("不允许为空");
		}
			
		});


});

</script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<center  id="center">
			<div>
				<h3>
					修改密码
				</h3>
			</div>
			<div id="dialog-chgrole">
				<form id="subForm" method="post">
					<table>
						<tr style="display: none;">
							<td class="lable">原密码</td>
							<td><input type="password" name="password1" id="password1"
								loxiaType="input" size="6" maxlength="12" style="width:120"/><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="lable">原密码</td>
							<td><input type="password" name="password" id="password"
								loxiaType="input" size="16" maxlength="12" mandatory="true" style="display: inline-block;"/><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="lable">新密码</td>
							<td><input type="password" name="newPass1" id="newPass1"
								loxiaType="input" size="16" maxlength="12" mandatory="true" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="lable">确认新密码</td>
							<td><input type="password" name="newPass2" id="newPass2"
								loxiaType="input" size="16" maxlength="12" mandatory="true" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
					</table>
				</form>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm"
						id="btnSave">保存</button>
				</div>
		</center>
	</div>
</body>
</html>