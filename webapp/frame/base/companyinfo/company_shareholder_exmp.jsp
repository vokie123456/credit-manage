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
			<td width="150"><fmt:message key="label.comp.share.tilte"
					bundle="${lang}" /></td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteShareholder(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table>
	<tr>
		<td class="label"><fmt:message key="label.comp.share.type"
				bundle="${lang}" /></td>
		<td align="left"><bizoption:bizoption biztypekey="1129"
				id="shareholderList[${count}].shareholderType"
				name="shareholderList[${count}].shareholderType" isChoose="true" /></td>

		<td class="label"><fmt:message key="label.comp.share.name"
				bundle="${lang}" /></td>
		<td align="left"><input
			id="shareholderList[${count}].shareholderName" loxiaType="input"
			name="shareholderList[${count}].shareholderName" trim="true" /></td>

	</tr>
	<tr>
		<td class="label"><fmt:message key="label.comp.share.legalName"
				bundle="${lang}" /></td>

		<td align="left" width="150"><input
			id="shareholderList[${count}].legalName" loxiaType="input"
			name="shareholderList[${count}].legalName" trim="true" /></td>

		<td class="label"><fmt:message key="label.comp.share.duePerson"
				bundle="${lang}" /></td>
		<td align="left"><input
			id="shareholderList[${count}].mianDuePerson" loxiaType="input"
			name="shareholderList[${count}].mianDuePerson" trim="true" /></td>
	</tr>
	<tr>
		<td class="label"><fmt:message key="label.comp.share.cardType"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption isChoose="true"
				biztypekey="1007" id="cardType"
				name="shareholderList[${count}].cardType" checkmaster="validateCardType"/></td>

		<td class="label"><fmt:message key="label.comp.share.cardNo"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="cardNo"
			name="shareholderList[${count}].cardNo" loxiaType="input" trim="true" checkmaster="validateIdentify"/></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.share.way"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption isChoose="true"
				biztypekey="1130" id="shareholderList[${count}].investmentWay"
				name="shareholderList[${count}].investmentWay" /></td>

		<td class="label"><fmt:message key="label.comp.share.currency"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption isChoose="true"
				biztypekey="1103" id="shareholderList[${count}].investmentCurrency"
				name="shareholderList[${count}].investmentCurrency" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.share.money"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="number"
			id="shareholderList[${count}].investmentAccount"
			name="shareholderList[${count}].investmentAccount" /></td>

		<td class="label"><fmt:message key="label.comp.share.pMoney"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="shareholderList[${count}].investmentAccountPractical"
			name="shareholderList[${count}].investmentAccountPractical"
			loxiaType="number" trim="true" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.share.rate"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="number"
			id="shareholderList[${count}].shareStock"
			name="shareholderList[${count}].shareStock" /></td>

		<td class="label"><fmt:message key="label.comp.share.date"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="shareholderList[${count}].shareDate"
			name="shareholderList[${count}].shareDate" loxiaType="date"
			trim="true" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.share.code"
				bundle="${lang}" /></td>
		<td class="label"><input
			id="shareholderList[${count}].loanCardCode" loxiaType="input"
			name="shareholderList[${count}].loanCardCode" trim="true" /></td>
		<td class="label"><fmt:message key="label.comp.share.remark"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="shareholderList[${count}].remark"
			name="shareholderList[${count}].remark" loxiaType="input" trim="true" /></td>
	</tr>
</table>