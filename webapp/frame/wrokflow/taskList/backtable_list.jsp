<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/taskList/backtable_list.js'/>"></script>
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
		<form id="backTableCommandForm" method="post">
			<input id="backTable_ifOver" name="taskIfOver" type="hidden" value="107914"/>
		</form>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-backtable-list"></table>
		<div id="pager"></div>
</body>
</html>