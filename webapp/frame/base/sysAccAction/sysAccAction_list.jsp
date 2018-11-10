<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/sysAccAction/sysAccAction_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div>
		<form id="accActionListForm" method="post">
			<table style="width: 60%;">
				<tr>
					<td>动作组编号：</td>
					<td><input id="groupCode" name="groupCode"
						loxiaType="input" /></td>
					<td>动作编号：</td>
					<td><input id="actionCode" name="actionCode"
						loxiaType="input" /></td>
				</tr>
				<tr>
					<td>动作组名称：</td>
					<td><input id="groupName" name="groupName"
						loxiaType="input" /></td>
					<td>动作名称：</td>
					<td><input id="actionName" name="actionName"
						loxiaType="input" /></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
	
			</div>
		</form>
	</div>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-accActionlist"></table>
	<div id="pager"></div>
</body>
</html>
