<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>账户管理</title>

<script type="text/javascript" src="<c:url value='/scripts/frame/account/sys_merchant_list.js'/>"></script>
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
			<table>
				<tr>
					<td class="label1">账户名称：</td>
					<td align="content" class="width200"><input id="account_name"
						name="account_name" loxiaType="input" /></td>
					<td class="label1">账户类型：</td>
					<td class="width200"><bizoption:bizoption name="account_type" id="account_type"
						biztypekey="1184" isChoose="true" /></td>
					<td class="label1">&nbsp;</td>
					<td align="content">&nbsp;</td>
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
			<button type="button" loxiaType="button" class="confirm"
					id="add">添加账户</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-configlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>