<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/warnconfig/warnconfig_list.js'/>"></script>
<title>预警参数设置</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="clientProjectQueryForm">   
		<button type="button" loxiaType="button" class="confirm" id="updateparam">
					添加预警参数
		</button>
		</form>
		<br/>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-warnconfig-list"></table>
		<div id="pager"></div>
	</div>
</body>
</html>