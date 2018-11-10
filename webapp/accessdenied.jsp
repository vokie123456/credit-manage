<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="org.springframework.security.web.WebAttributes,com.fastcnt.credit.framework.exception.ValidateCodeException" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<fmt:setBundle basename="messages" var="lang" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico" />
<title><fmt:message key="title.login" bundle="${lang}" /></title>
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
body {
	text-align: center;
}
</style>
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-1.4.4.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery-ui-1.8.7.custom.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main/jquery.loxiacore-1.2.js'/>"></script>
<script language="JavaScript" type="text/javascript">
	function Redirect() {
		var $timeOut = $("#timeOut");
		var num = Number($timeOut.val());
		if (num == 0)
			window.location.href = "login.jsp"; //要跳转的页面
		$timeOut.val(num - 1);
	}

	$(document).ready(function() {
		setInterval(Redirect, 1000); //第二个参数是时间，单位毫秒
	});
</script>
</head>
<body>
	<div>
		<center>
			${loginMsg =='1' ? "用户名或密码错误":"" } ${loginMsg =='2' ? "密码输入错误次数超过系统规定 不能再登录":"" }
			${loginMsg =='3' ? "用户名或密码错误":"" }
			<%
				Exception ex = (Exception) request.getSession().getAttribute(
						WebAttributes.AUTHENTICATION_EXCEPTION);
				if (ex instanceof ValidateCodeException) {
			%>
			<H3>
				友情提示:
				<%=ex.getMessage()%></H3>
			<%
				}
			%>
			<h3>您没有权限执行本操作</h3>
			<h3>
				<input id="timeOut" name="timeOut" value="5"
					style="width: 6px; border: 0px;" readonly="readonly" />秒后跳转<a
					href="login.jsp">登录页面</a>
			</h3>
		</center>
	</div>
</body>
</html>
