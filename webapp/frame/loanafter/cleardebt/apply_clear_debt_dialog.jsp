
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/cleardebt/apply_clear_debt_dialog.js'/>"></script>

</head>

<form id="clearDebtForm" method="post">
	<input type="hidden" id="lendinfo_projectId" name="projectId"
		value="${projectId }">
	<input type="hidden" id="payoffStatus" name="payoffStatus"
		value="">
	<input type="hidden" id="payoffId" name="payoffId"
		value="">
	<input type="hidden"
				name="totalInterest" value="" id="totalInterest"/>
    <input type="hidden"
				name="totalPrincipal" value="" id="totalPrincipal"/>
				
	<table style="width:100%" >
		<tr>
			<td class="label">放款批次：</td>
			<td><select id="lendId" name="lendId"
				class="ui-loxia-default ui-corner-all" /></td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.clear.debt.clear.date"
					bundle="${lang}" /></td>
			<td width="150"><input loxiaType="date" id="expiredDate" checkmaster="dateChange"
				mandatory="true" name="expiredDate" readonly="readonly" /> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.clear.debt.princal"
					bundle="${lang}" /></td>
			<td width="150" id="clearDebtPrincal"></td>
		</tr>
		<tr>
			<td class="label"><fmt:message key="label.clear.debt.inter"
					bundle="${lang}" /></td>
			<td width="150" id="clearDebtInter"></td>
		</tr>
		


	</table>
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">取消</button>
		<button type="button" loxiaType="button" class="confirm"
			id="submit">通过</button>
	</div>
</form>