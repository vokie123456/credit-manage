<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>客户列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_list.js'/>"></script>
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
					<td class="label">营业厅：</td>
					<td><bizorg:bizorg name="bizHall" compCode="${compCode }"
							isChoose="true" isBusiness="true" /></td>
					<td class="label">客户号：</td>
					<td class="width150"><input loxiaType="input" name="clientCode" /></td>
					<td class="label">客户名称：</td>
					<td class="width150"><input loxiaType="input" name="clientName" /></td>
				</tr>
				<tr>
					<td class="label">客户经理：</td>
					<td class="width150"><user:user bizHall="${bizHalls }" roleCode="0101,0102" userId="${userId }" compCode="${compCode }"
							id="broker" name="broker" isChoose="true" /></td>
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
					title="tip：" id="btnNewPerson">
					<fmt:message key="button.newadd" bundle="${lang}" />
					个人客户
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：" id="btnNewEnterprise">
					<fmt:message key="button.newadd" bundle="${lang}" />
					企业客户
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：" id="btnClientApply">贷款申请</button>
		</div>

		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-clientlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>