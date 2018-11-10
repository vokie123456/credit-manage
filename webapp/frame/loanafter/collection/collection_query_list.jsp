<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.collection.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/collection/collection_query_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<form id="collectionQueryForm">
		<table>
			<tr>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150"><input id="projectCode" name="projectCode"
					loxiaType="input" trim="true" /></td>

				<!-- 催收单编号-->
				<td class="label"><fmt:message key="label.collection.code"
						bundle="${lang}" /></td>
				<td width="150"><input id="collCode" name="collCode"
					loxiaType="input" trim="true" /></td>

				<!-- 客户姓名 -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
				<td width="150"><input id="clientName" name="clientName"
					loxiaType="input" trim="true" /></td>

			</tr>
			<tr>
				<!-- 催收状态-->
				<td class="label"><fmt:message key="label.collection.status"
						bundle="${lang}" /></td>
				<td width="150"><bizoption:bizoption biztypekey="1040"
						id="isCollection" name="isCollection" isChoose="true" /></td>
				<!-- 当前催收人员-->
				<td class="label"><fmt:message
						key="label.collection.currentCollector" bundle="${lang}" /></td>
				<td width="150"><user:user bizHall="${bizHall}"
						id="currentCollector" roleCode="0111" userId="${userId }"
						compCode="${compCode }" name="collector" isChoose="true" /></td>
			</tr>

		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.collection.but.edit" bundle="${lang}"/>"
				id="detail">
				<fmt:message key="label.collection.but.edit" bundle="${lang}" />
			</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-collectionlist"></table>
	<div id="pager"></div>

</body>
</html>
