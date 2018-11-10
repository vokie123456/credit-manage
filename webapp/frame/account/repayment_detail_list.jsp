<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>账户管理</title>

<script type="text/javascript" src="<c:url value='/scripts/frame/account/repayment_detail_list.js?v=1.5.1'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">

.label {
	text-align: left;
}
</style>

</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-qryclient" method="POST">
			<table>
				<tr>
					<td class="label1">客户名称：</td>
					<td align="content" class="width200"><input id="clientName"
						name="clientName" loxiaType="input" style="width:200px"/></td>
					<td class="label1">&nbsp;</td>
					<td class="width200">&nbsp;</td>
					<td class="label1">&nbsp;</td>
					<td align="content">&nbsp;</td>
				</tr>
				<tr>
					<td class="label1">还款日期：</td>
					<td align="content" class="width300"><input id="queryRepayBegin" name="queryRepayBegin" loxiaType="input" style="width:100px" value="${sysDate }" readonly="readonly"/> 
					-- <input id="queryRepayDate" name="queryRepayDate" style="width:100px" loxiaType="date" min="${sysDate }" readonly="readonly"/></td>
					<td class="label1" style="text-align: center;"><input type="radio" name="repayDateDay" value="30" onclick="addDate(30)" checked="checked"/>未来30天</td>
					<td class="label1" style="text-align: center;"><input type="radio" name="repayDateDay" value="7" onclick="addDate(7)"/>未来7天</td>
					<td class="label1">&nbsp;</td>
					<td align="content">&nbsp;</td>
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
				title="tip：导出"	id="expExcel">导出</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-configlist"></table>
		<div id="pager"></div>
	</div>
</body>
</html>