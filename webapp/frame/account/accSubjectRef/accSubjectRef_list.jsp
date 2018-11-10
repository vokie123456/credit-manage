<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/accSubjectRef/accSubjectRef_list.js'/>"></script>
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
		<form id="accSubjectRefListForm" method="post">
			<table>
				<tr>
					<td class="label">动作名：</td>
					<td><input id="accFundName" name="accFundName"
						loxiaType="input" /></td>
					<td></td>
					<td></td>
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
	<table id="tbl-accSubjectReflist"></table>
	<div id="pager"></div>
</body>
</html>
