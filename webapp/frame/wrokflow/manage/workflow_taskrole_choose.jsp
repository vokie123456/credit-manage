<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/manage/workflow_taskrole_choose.js'/>"></script>
<style type="text/css">
.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}

.link:HOVER {
	text-decoration: none;
}

.scroll {
	height: 260px;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">公司流程管理</div>
	<input id="compWorkflowVoStrings" name="compWorkflowVoStrings"
		type="hidden" value="${compWorkflowVoStrings }" />
	<form id="taskroleForm" method="post"></form>
	<button type="button" loxiaType="button" class="confirm"
		title="tip：添加流程" id="addFlow">添加流程</button>
	<table id="tbl-taskrolelist"></table>
	<div id="pager"></div>
	<div id="dialog" class="hidden"></div>
</body>
</html>