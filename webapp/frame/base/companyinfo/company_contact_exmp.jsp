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
			<td width="150"><fmt:message key="label.comp.contact.title"
					bundle="${lang}" /></td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteContact(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table>
	<tr>
		<td class="label"><fmt:message key="label.comp.contact.type"
				bundle="${lang}" /></td>
		<td align="left"><bizoption:bizoption biztypekey="1131"
				id="contactList[${count}].contactType"
				name="contactList[${count}].contactType" isChoose="true" /></td>

		<td class="label"><fmt:message key="label.comp.contact.name"
				bundle="${lang}" /></td>
		<td align="left"><input id="contactList[${count}].contactName"
			loxiaType="input" name="contactList[${count}].contactName"
			trim="true" /></td>

	</tr>


	<tr>
		<td class="label"><fmt:message key="label.comp.contact.cardType"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption
				biztypekey="1007" id="cardType"
				name="contactList[${count}].cardType" isChoose="true" checkmaster="validateCardType"/></td>

		<td class="label"><fmt:message key="label.comp.contact.cardNo"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="cardNo" name="contactList[${count}].cardNo"
			loxiaType="input" trim="true" checkmaster="validateIdentify"/></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.contact.position"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="contactList[${count}].position"
			name="contactList[${count}].position" /></td>

		<td class="label"><fmt:message key="label.comp.contact.sex"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption
				biztypekey="1006" id="contactList[${count}].sex"
				name="contactList[${count}].sex" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.contact.birthday"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="date"
			id="contactList[${count}].birthday"
			name="contactList[${count}].birthday" /></td>

		<td class="label"><fmt:message key="label.comp.contact.level"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption isChoose="true"
				biztypekey="1008" id="contactList[${count}].educationLevel"
				name="contactList[${count}].educationLevel" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.contact.workExp"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="contactList[${count}].workExp"
			name="contactList[${count}].workExp" /></td>

		<td class="label"><fmt:message key="label.comp.contact.telphone"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="contactList[${count}].telephone"
			name="contactList[${count}].telephone" loxiaType="input" trim="true" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message
				key="label.comp.contact.mobilephone" bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="contactList[${count}].mobilephone"
			name="contactList[${count}].mobilephone" loxiaType="input"
			trim="true" /></td>
	</tr>
	<tr>
		<td class="label"><fmt:message key="label.comp.contact.fax"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="contactList[${count}].fax" name="contactList[${count}].fax"
			loxiaType="input" trim="true" /></td>

		<td class="label"><fmt:message key="label.comp.contact.email"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="contactList[${count}].email" name="contactList[${count}].email"
			loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<td class="label"><fmt:message key="label.comp.contact.doPostion"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="contactList[${count}].positeDate"
			name="contactList[${count}].positeDate" loxiaType="date" trim="true" /></td>

		<td class="label"><fmt:message key="label.comp.contact.remark"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="contactList[${count}].remark" name="contactList[${count}].remark"
			loxiaType="input" trim="true" /></td>
	</tr>

</table>