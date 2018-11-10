<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/outb/capital_account_record_detail.js'/>"></script>
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
	<input type='hidden' value="${param.id}" id="idess"  />
	<input type='hidden' value="${param.transDate}" id="transDatess" />
	<form id="lendListForm" method="post">
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		
		<select id="fileTypes">
			<option value="fi">入账</option>
			<option value="fo">出账</option>
		</select>
		<input type="button" value="查询"  id="byQuery"  />
		<table id="tbl-capitallist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
