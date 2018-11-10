<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/loanpost/advance_money.js?v=3.1.0_2'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}
.style_td {
	width: 38% !important;
}

.seleTd select{
	width: 150px;
}

</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="qryfrm" action="/loanpost/advance/downexcel.do" method="POST">
		<table>
			<tr>
				<td class="label">客户姓名：</td>
				<td>
					<input loxiaType="input" trim="true" name="clientName" />
					<input type="hidden" name="advanceStatusGt" value="191701,191703" />
				</td>
				<td class="label">申请日期：</td>
				<td>
					<input id="" class="style_td" name="applyTimeStart" loxiaType="date" trim="true" />
					到
					<input id="" class="style_td" name="applyTimeEnd" loxiaType="date" trim="true" />
				</td>
				<td class="label">处理日期：</td>
				<td class="seleTd">
					<input id="" class="style_td" name="confirmTimeStart" loxiaType="date" trim="true" />
					到
					<input id="" class="style_td" name="confirmTimeEnd" loxiaType="date" trim="true" />
				</td>
				<td class="label">处理状态：</td>
				<td class="seleTd">
					<select name="advanceStatus">
						<option value="">请选择</option>
						<option value="191701">待申请</option>
						<option value="191703">已垫付</option>
					</select>
				</td>
				<td style="padding-left: 20px;">
					<button type="button" loxiaType="button" class="confirm" id="reload">
						<fmt:message key="button.query" bundle="${lang}" />
					</button>
					<button type="reset" loxiaType="button" class="confirm" id="resets">
						<fmt:message key="button.reset" bundle="${lang}" />
					</button>
				</td>
			</tr>
		</table>
		<input type="hidden" name="clientId" value="${clientId}" id="clientId" />
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="btnGenPartCmd">导出</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
</body>
</html>
