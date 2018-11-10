<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>第三方手续费</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/sys_merchant_pay.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/mytable01.css'/>"/>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<table cellpadding="0" cellspacing="0">
			<tr>
				<th>操作时间</th>
				<th>操作类型</th>
				<th>第三方流水号</th>
				<th>第三方机构</th>
				<th>操作金额</th>
				<th>操作人</th>
				<th>状态</th>
			</tr>
			<c:forEach items="${flows }" var="flow">
			<tr>
				<td><fmt:formatDate value="${flow.transDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${flow.transTypeNme }</td>
				<td>${flow.orgTransNo }</td>
				<td>${flow.payChannel }</td>
				<td>${flow.counterFeeMoney }</td>
				<td>${flow.operatorName }</td>
				<td>${flow.transStatus }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>