<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript" src="<c:url value='/scripts/frame/account/systemActionSubject/importCompAction.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
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
		<form id="actionForm" method="post">
			<table>
				<tr>
					<td class="label1">动作编号(多个以<label class="del_mandatory">;</label>分割)：</td>
					<td align="content">
						<input id="actionCodes" name="actionCodes" loxiaType="input" trim="true" mandatory="true"/><label class="del_mandatory">*</label>
					</td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="importData">导入</button>
			</div>
		</form>
		<div id="ret"></div>
	</div>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-accActionlist"></table>
	<div id="pager"></div>
</body>
</html>