<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>账户管理</title>

<script type="text/javascript" src="<c:url value='/scripts/frame/account/sys_merchant_schedule.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">

.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" id="accountId" name="id" value="${id }">
	<div>
		<form id="frm-qryclient" method="POST">
			<table>
				<tr>
					<td class="label1">计划还款开始日期：</td>
					<td align="content"><input id="repayDateBegin"
						name="repayDateBegin" loxiaType="date" min="${sysDate }" trim="true"/></td>
					<td class="label1">计划还款结束日期：</td>
					<td align="content"><input id="repayDateEnd"
						name="repayDateEnd" loxiaType="date" min="${sysDate }" trim="true"/></td>
					<td class="label1">是否还清：</td>
					<td align="content"><select name="valid" id="valid" loxiaType="select">
						<option value="">-请选择-</option>
						<option value="1">是</option>
						<option value="0">否</option>
					</select></td>
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
		<table id="tbl-configlist"></table>
		<div id="pager"></div>
		<div id="mxzd"></div>
	</div>
</body>
</html>