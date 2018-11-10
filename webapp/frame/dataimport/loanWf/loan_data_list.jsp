<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"  src="<c:url value='/scripts/frame/dataimport/loanWf/loan_data_list.js'/>"></script>
	<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<linkage:define />
</head>
	
<body contextpath="<%=request.getContextPath()%>">

<input type="hidden" id="compCode" value="${compCode}" />

<button type="button" loxiaType="button" class="confirm" id="runWfSelect">
		批量启动流程
</button>
<button type="button" loxiaType="button" class="confirm" id="addWf">
		新增业务数据
</button>
	<br/>
	<br/>
	<div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-list"></table>
		<div id="pager"></div>
	</div>
	
</body>
</html>
