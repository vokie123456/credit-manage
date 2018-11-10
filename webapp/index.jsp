<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<fmt:setBundle basename="messages" var="lang" />
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/images/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
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
<script type="text/javascript">
	var $j = jQuery.noConflict();
	$j(document).ready(function() {
		var redirectUrl = "<c:url value='main.do'/>";
		window.location.href = redirectUrl;	
	});
</script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="loginSuccess">
		<%-- <center>
		<h3>登录成功</h3>
	</center> --%>
	</div>
</body>
</html>
