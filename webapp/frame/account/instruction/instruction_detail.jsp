<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">扣款明细-扣款日志</div>
	<table class="textalignCenter tabcustom" cellpadding="0" cellspacing="0" width="100%">
		<tr class="tabcustomTr">
			<th>发送时间</th>
			<th>结束时间</th>
			<th>操作类型</th>
			<th>交易类型</th>
			<th>账单编号</th>
			<th>费用类别</th>
			<th>账套</th>
			<th>商户号</th>
			<th>金额</th>
			<th>交易状态</th>
			<th>交易备注</th>
    	</tr>
		<c:forEach var="log" items="${list}" varStatus="loop">
			<tr>
				<td>
					<fmt:formatDate value="${log.beginTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</td>
				<td>
					<fmt:formatDate value="${log.endTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
				</td>
				<td>${log.isAuto}</td>
				<td>${log.orderType}</td>
				<td>${log.billCode}</td>
				<td>${log.costTitle}</td>
				<td>${log.accountName}</td>
				<td>${log.merchantId}</td>
				<td>${log.amountPage}</td>
				<td>${log.orderStatusStr}</td>
				<td>${log.retMsg}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>