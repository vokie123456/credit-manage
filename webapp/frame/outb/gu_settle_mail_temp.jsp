<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml "  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/outb/gu_settle_mail_temp.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
<style type="text/css">
.label {
	text-align: left;
}
#dialog-chgrole{ padding:70px 30px;}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
<div id="dialog-chgrole"></div>
</body>
</html>
