<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>还款计划</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/lend_apply_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail" >
	<div class="divBgColor">
		<fmt:message key="label.search.param" bundle="${lang}" />
	</div>
	<form id="ListQryForm" method="post">
		<table>
			<tr>
				<td class="label">状态：</td>
				<td width="width200"><bizselect:bizselect biztypekey="1188" name="lend_status" id="lend_status" isChoose="true"/></td>
				<td class="label">审核人：</td>
				<td width="width200"><input id="first_person" name="first_person"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机号码：</td>
				<td width="width200"><input id="mobile_phone" name="mobile_phone"
					loxiaType="input" trim="true" /></td>
				<td class="label">&nbsp;</td>
				<td width="width200">&nbsp;</td>
			</tr>
			<tr>
				<td class="label">申请日期：</td>
				<td width="width200"><input id="lend_temptime_b" name="lend_temptime_b"
					loxiaType="date" trim="true" style="width: 43%"/>-<input id="lend_temptime_e" name="lend_temptime_e"
					loxiaType="date" trim="true" style="width: 43%"/></td>
				<td class="label">贷款编号：</td>
				<td width="width200"><input id="loan_code" name="loan_code"
					loxiaType="input" trim="true" /></td>
				<td class="label">身份证：</td>
				<td width="width200"><input id="card_no" name="card_no"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户：</td>
				<td width="width200"><input id="client_name" name="client_name"
					loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label">授信金额：</td>
				<td width="width200"><input id="final_money_b" name="final_money_b"
					loxiaType="number" trim="true" decimal="2" style="width: 43%"/>-<input id="final_money_e" name="final_money_e"
					loxiaType="number" trim="true" decimal="2" style="width: 43%"/></td>
				<td class="label">放款金额：</td>
				<td width="width200"><input id="lend_money_b" name="lend_money_b"
					loxiaType="number" trim="true" decimal="2" style="width: 43%"/>-<input id="lend_money_e" name="lend_money_e"
					loxiaType="number" trim="true" decimal="2" style="width: 43%"/></td>
				<td class="label">&nbsp;</td>
				<td width="width200">&nbsp;</td>
				<td class="label">&nbsp;</td>
				<td width="width200">&nbsp;</td>
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
		
	</div>


	<!--<div class="label"><s:text name="label.sys.loginlog.result"/></div>
	
	-->
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-planlist"></table>
	<div id="pager"></div>
</div>
	
</body>
</html>
