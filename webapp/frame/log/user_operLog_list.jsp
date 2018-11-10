<%--
  系统操作日志列表页
  User: Hexy
  Date: 2014/6/5
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.sys.operlog" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/log/user_operLog.js'/>"></script>
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
	<div class="divBgColor">
		<fmt:message key="label.search.param" bundle="${lang}" />
	</div>
	<form id="userOperLogCommandForm" method="post">
		<table>
			<tr>
				<td class="label"><fmt:message
						key="label.sys.operlog.loginname" bundle="${lang}" /></td>
				<td width="150"><input id="loginName" name="loginName"
					loxiaType="input" trim="true" /></td>
				<td class="label"><fmt:message key="label.sys.operlog.username"
						bundle="${lang}" /></td>
				<td width="150"><input id="userName" name="userName"
					loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label"><fmt:message
						key="label.sys.operlog.opertimefrom" bundle="${lang}" /></td>

				<td><input id="operTimeFrom" loxiaType="date"
					name="operTimeFrom" /></td>

				<td align="center" class="label"><fmt:message
						key="label.sys.operlog.opertimeto" bundle="${lang}" /></td>

				<td><input id="operTimeTo" loxiaType="date" name="operTimeTo" /></td>

			</tr>
		</table>
	</form>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm"
			title="tip：<fmt:message key="tip.sys.operlog.search" bundle="${lang}"/>"
			id="reload">
			<fmt:message key="button.query" bundle="${lang}" />
		</button>
	</div>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-userOperLogList"></table>
	<div id="pager"></div>
</body>
</html>

