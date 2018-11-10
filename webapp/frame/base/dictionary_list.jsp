<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>公司列表</title>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/dictionary_list.js'/>"></script>
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
			<td class="label">常量类型编号：</td>
			<td><input loxiaType="input" name="typeCode" /></td>
			<td class="label">常量编号：</td>
			<td><input loxiaType="input" name="subtypeCode" /></td>
			</tr>
			<tr>
			<td class="label">常量类型名称：</td>
			<td><input loxiaType="input" name="typeName" /></td>
			<td class="label">常量名称：</td>
			<td><input loxiaType="input" name="subtypeName" /></td>
			</tr>
			<tr>
			<td class="label">状态:</td>
			<td class="label" width="150"><bizoption:bizoption
			biztypekey="valid" id="status" name="status"
			isChoose="true" /></td>
			<td width="150"></td>
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
				title="tip：添加字典" id="addDictionary">
				<fmt:message key="button.newadd" bundle="${lang}" />字典
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-dictionarylist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>