<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/compAccAction/compAccAction_list.js'/>"></script>
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
		<!-- <div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div> -->
		<form id="accActionListForm" method="post">
			<table>
				<tr>
					<td class="label1">记账动作名称：</td>
					<td align="content"><input id="accountActionName"
						name="accountActionName" loxiaType="input" /></td>
					<td class="label1">记账动作组名称：</td>
					<td align="content"><input id="accountGroupName"
						name="accountGroupName" loxiaType="input" /></td>
					<td class="label1">账套名称：</td>
					<td align="content"><input id="accountName" name="accountName"
						loxiaType="input" /></td>
				</tr>
				<tr>
					<td class="label1">借方科目名称：</td>
					<td align="content"><input id="subjectTitleD"
						name="subjectTitleD" loxiaType="input" /></td>
					<td class="label1">贷方科目名称：</td>
					<td align="content"><input id="subjectTitleC"
						name="subjectTitleC" loxiaType="input" /></td>
				</tr>

			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<!-- <button type="button" loxiaType="button" class="confirm"
					title="tip：添加公司记账动作" id="toAddAccAction">新增会计分录</button> -->
			</div>
		</form>
	</div>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-accActionlist"></table>
	<div id="pager"></div>
</body>
</html>
