<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.sys.loginlog" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/user-loginlog.js'/>"></script>
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
	<form id="sysLogCommandForm" method="post">
		<table>
			<tr>
				<td class="label"><fmt:message
						key="label.sys.loginlog.loginname" bundle="${lang}" /></td>
				<td width="150"><input id="loginName" name="loginName"
					loxiaType="input" trim="true" /></td>
				<td class="label"><fmt:message
						key="label.sys.loginlog.jobnumber" bundle="${lang}" /></td>
				<td width="150"><input id="jobNumber" name="jobNumber"
					loxiaType="input" trim="true" /></td>
				<td class="label"><fmt:message
						key="label.sys.loginlog.isenabled" bundle="${lang}" /></td>
				<td width="150"><bizoption:bizoption biztypekey="status"
						id="logStatus" name="isEnabled" isChoose="true" /></td>
			</tr>
			<tr>
				<td class="label"><fmt:message
						key="label.sys.loginlog.logintime" bundle="${lang}" /></td>

				<td><input id="loginTimeFrom" loxiaType="date"
					name="loginTimeFrom" /></td>

				<td align="center" class="label">到</td>

				<td><input id="loginTimeTo" loxiaType="date" name="loginTimeTo" /></td>
			</tr>
		</table>
	</form>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm"
			title="tip：<fmt:message key="tip.sys.loginlog.search" bundle="${lang}"/>"
			id="reload">
			<fmt:message key="button.query" bundle="${lang}" />
		</button>
	</div>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-userloginlist"></table>
	<div id="pager"></div>
</body>
</html>
