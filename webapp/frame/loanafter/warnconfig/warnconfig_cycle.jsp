<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>预警周期参数</title>
</head>
<body contextpath="<%=request.getContextPath()%>">
			<table class="textalignCenter tabcustom0" cellpadding="0"
		cellspacing="0" width="100%">
		<tr class="custr custrBag">
			<th>贷后预警类型</th>
			<th>预警周期</th>
			<th>指定天数</th>
			<th class="tabBorderRight0">是否循环</th>
		</tr>
		<tr class="custr">
			<td>首次跟踪预警</td>
			<td>指定天数</td>
			<td><input loxiaType="input"></td>
			<td class="tabBorderRight0">单次</td>
		</tr>
		<tr class="custr">
			<td>贷后检查预警</td>
			<td>按期</td>
			<td></td>
			<td class="tabBorderRight0">循环</td>
		</tr>
	</table>
</body>
</html>