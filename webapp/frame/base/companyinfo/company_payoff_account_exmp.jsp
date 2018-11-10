<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<div class="divBgColor">
	<table>
		<tr>
			<td width="150"><fmt:message key="label.comp.account.title"
					bundle="${lang}" /></td>
			<td width="80%" align="right"><input type="button"
				onclick="deletePayoffAccount(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table>
	<tr>
		<td class="label"><fmt:message key="label.comp.account.complain"
				bundle="${lang}" /></td>
		<td align="left"><input
			id="payoffAccountList[${count}].payoffExplain" loxiaType="input"
			name="payoffAccountList[${count}].payoffExplain" trim="true" /></td>

		<td class="label"><fmt:message key="label.comp.account.owner"
				bundle="${lang}" /></td>
		<td align="left"><input
			id="payoffAccountList[${count}].payoffAccountOwner"
			loxiaType="input"
			name="payoffAccountList[${count}].payoffAccountOwner"
			trim="true" /></td>

	</tr>


	<tr>
		<td class="label"><fmt:message key="label.comp.account.name"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="payoffAccountList[${count}].accountName"
			name="payoffAccountList[${count}].accountName" /></td>

		<td class="label"><fmt:message key="label.comp.account.bank"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="payoffAccountList[${count}].accountBank"
			name="payoffAccountList[${count}].accountBank" loxiaType="input"
			trim="true" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.account.subBank"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="payoffAccountList[${count}].accountSubBank"
			name="payoffAccountList[${count}].accountSubBank" /></td>

		<td class="label"><fmt:message key="label.comp.account.bankCon"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="payoffAccountList[${count}].accountBankCon"
			name="payoffAccountList[${count}].accountBankCon" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.account.feeType"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption
				biztypekey="1132" id="payoffAccountList[${count}].payoffType"
				name="payoffAccountList[${count}].payoffType" /></td>


		<td class="label"><fmt:message
				key="label.comp.account.remark" bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="payoffAccountList[${count}].remark"
			name="payoffAccountList[${count}].remark" loxiaType="input"
			trim="true" /></td>
	</tr>

</table>