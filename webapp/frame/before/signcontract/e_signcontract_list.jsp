<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 个人签约列表查询-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.person.sign.query"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/before/signcontract/e_signcontract_list.js'/>"></script>
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
	<div id="formdetail">
		<div class="divBgColor">企业签约信息查询</div>
		<form id="eSigncontractListForm" method="post">
			<table>
				<tr>
					<td class="label">项目编号：</td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<td class="label">合同编号：</td>
					<td width="150"><input id="contractId" name="contractId"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<td class="label">签约人员：</td>
					<td><userDepartment:userDepartment bizHall="${bizHall}"
							id="signAgentStr" name="signAgentStr" isChoose="true" /></td>
					<td class="label">签约状态：</td>
					<td width="150"><bizoption:bizoption id="signStatusStr"
							name="signStatusStr" biztypekey="1036" isChoose="true" /></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.person.sign.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.person.sign.reset" bundle="${lang}"/>"
					id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
			</div>
			<%@include file="/common/paginationInit.jsp" %>
			<table id="tbl-eSigncontractList"></table>
			<div id="pager"></div>
		</form>
	</div>
</body>
</html>