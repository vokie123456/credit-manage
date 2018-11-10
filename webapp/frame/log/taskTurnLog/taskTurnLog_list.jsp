<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/log/taskTurnLog/taskTurnLog_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}

.link:HOVER {
	text-decoration: none;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="taskTurnLogCommandForm" method="post">
		<input type="hidden" name="compCode" id="compCode" value="${compCode}"/>
	</form>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-tasklist"></table>
	<div id="pager"></div>
	<div id="dialog" class="hidden"></div>
	</div>
</body>
</html>