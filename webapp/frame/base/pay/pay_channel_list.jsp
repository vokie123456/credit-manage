<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>支付通道管理</title>

<script type="text/javascript" src="<c:url value='/scripts/frame/base/pay/pay_channel_list.js'/>"></script>
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
	<div>
		<form id="frm-qryclient" method="POST">
		
		</form>
		<div>
			<button type="button" loxiaType="button" class="confirm"
					id="add">添加渠道</button>
			<!--  
			<button type="button" loxiaType="button" class="confirm"
					id="delete">删除渠道</button>
			-->
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-configlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>