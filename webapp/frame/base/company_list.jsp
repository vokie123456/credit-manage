<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>公司列表</title>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/company_list.js'/>"></script>
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
			<td class="label">公司编码：</td>
			<td><input loxiaType="input" name="compCode" /></td>
			<td class="label">公司名称：</td>
			<td><input loxiaType="input" name="compName" /></td>
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
				title="tip：添加公司" id="addCompany">
				<fmt:message key="button.newadd" bundle="${lang}" />公司
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-clientlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>