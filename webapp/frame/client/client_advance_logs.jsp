<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_advance_logs.js?v=3.5'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	<form id="lendListForm" method="post">
		<input id ="ids" value="${id }"  style="display:none;"/> 
	
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
