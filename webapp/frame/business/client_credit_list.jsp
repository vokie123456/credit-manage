<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>待办任务列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/business/client_credit_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-qryclient" method="POST">
		<table>
			<tr>
				<td class="label">授信编号：</td>
				<td class="width200"><input loxiaType="input" name="credit_code" /></td>
				<td class="label">客户：</td>
				<td class="width200"><input loxiaType="input" name="client_name" /></td>
				<td class="label">手机号码：</td>
				<td class="width200"><input loxiaType="input" name="mobile_phone" /></td>
				<td class="label">身份证号：</td>
				<td class="width200"><input loxiaType="input" name="card_no" /></td>
			</tr>
			<tr>
				<td class="label">申请金额：</td>
				<td class="width200"><input loxiaType="number" name="first_money_b" decimal="2" style="width: 44%"/>-<input loxiaType="number" name="first_money_e" decimal="2" style="width: 44%"/></td>
				<td class="label">申请日期：</td>
				<td class="width200"><input loxiaType="date" name="create_time_b" style="width: 44%"/>-<input loxiaType="date" name="create_time_e" style="width: 44%"/></td>
				<td class="label">拒绝日期：</td>
				<td class="width200"><input loxiaType="date" name="submit_time_b" style="width: 44%"/>-<input loxiaType="date" name="submit_time_e" style="width: 44%"/></td>
				<td class="label">&nbsp;</td>
				<td class="width200">&nbsp;</td>
			</tr>
		</table>
		</form>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-creditlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>