<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/account_bill_list.js?v=3.1.0_3'/>"></script>
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
	<form id="qryfrm" action="/loanafter/accountbill/downexcel.do" method="POST">
		<table>
			<tr>
				<td class="label">客户姓名：</td>
				<td>
					<input loxiaType="input" trim="true" name="clientName" />
				</td>
				<td class="label">期限：</td>
				<td>
					<input loxiaType="input" trim="true" name="loanPeriod" />
				</td>
				<td class="label">合同状态：</td>
				<td class="seleTd">
					<bizselect:bizselect biztypekey="1188" startSort="5" endSort="7" id="status" name="lendStatus" isChoose="true" />
				</td>
				<td class="label">来源应用：</td>
				<td class="seleTd">
					<select name="applyCode" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach items ="${amList}" var="mapOne">
							<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td class="label">下期应还款日期：</td>
				<td>
					<input id="" class="style_td" name="startExpiredDate" loxiaType="date" trim="true" />
					到
					<input id="" class="style_td" name="endExpiredDate" loxiaType="date" trim="true" />
				</td>
				<td class="label">最后实际还款日期：</td>
				<td>
					<input id="" class="style_td" name="startFinishDate" loxiaType="date" trim="true" />
					到
					<input id="" class="style_td" name="endFinishDate" loxiaType="date" trim="true" />
				</td>
				<td class="label">资金渠道：</td>
				<td class="seleTd">
					<select name="channelCode" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach items ="${channelList}" var="mapOne">
							<option value=${ mapOne.channelCode} > ${mapOne.channelName}</option>
						</c:forEach>
					</select>
				</td>
				<td class="label">手机号：</td>
				<td>
					<input loxiaType="input" trim="true" name="mobilePhone" style="width:150px;"/>
				</td>
			</tr>
		</table>
		<input type="hidden" name="clientId" value="${clientId}" id="clientId" />
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="submit" loxiaType="button" class="confirm" id="btnGenPartCmd">导出</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
</body>
</html>
