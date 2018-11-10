<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/companyinfo/company_contact.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize"
		value="${resultSize}" />
	<input type="hidden" name="compCode" id="contact_compCode"
		value="${compCode}" />

	<form id="contactForm">
		<c:forEach items="${contactList}" var="contact" varStatus="loop">
			<div id="contact${loop.index}">
				<br /> <br />
				<div class="divBgColor">
					<table>
						<tr>
							<td width="150"><fmt:message key="label.comp.contact.title"
									bundle="${lang}" /></td>
							<td width="80%" align="right"><input type="button"
								onclick="deleteContact(${loop.index})"
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
								isChoose="true" id="contactList[${loop.index}].contactType"
								name="contactList[${loop.index}].contactType"
								selected="${contact.contactType}" /></td>

						<td class="label"><fmt:message key="label.comp.contact.name"
								bundle="${lang}" /></td>
						<td align="left"><input
							id="contactList[${loop.index}].contactName" loxiaType="input"
							name="contactList[${loop.index}].contactName" trim="true"
							value="${contact.contactName}" /></td>

					</tr>


					<tr>
						<td class="label"><fmt:message
								key="label.comp.contact.cardType" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1007" isChoose="true"
								id="cardType"
								name="contactList[${loop.index}].cardType"
								selected="${contact.cardType}" checkmaster="validateCardType"/></td>

						<td class="label"><fmt:message
								key="label.comp.contact.cardNo" bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="cardNo"
							name="contactList[${loop.index}].cardNo" loxiaType="input"
							trim="true" value="${contact.cardNo}" checkmaster="validateIdentify"/></td>

					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.comp.contact.position" bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="input"
							id="contactList[${loop.index}].position"
							name="contactList[${loop.index}].position"
							value="${contact.position}" /></td>

						<td class="label"><fmt:message key="label.comp.contact.sex"
								bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1006" isChoose="true"
								id="contactList[${loop.index}].sex"
								name="contactList[${loop.index}].sex" selected="${contact.sex}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.comp.contact.birthday" bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="date"
							id="contactList[${loop.index}].birthday"
							name="contactList[${loop.index}].birthday"
							value="${contact.birthday}" /></td>

						<td class="label"><fmt:message key="label.comp.contact.level"
								bundle="${lang}" /></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1008" isChoose="true"
								id="contactList[${loop.index}].educationLevel"
								name="contactList[${loop.index}].educationLevel"
								selected="${contact.educationLevel}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.comp.contact.workExp" bundle="${lang}" /></td>
						<td align="left" width="150"><input loxiaType="input"
							id="contactList[${loop.index}].workExp"
							name="contactList[${loop.index}].workExp"
							value="${contact.workExp}" /></td>

						<td class="label"><fmt:message
								key="label.comp.contact.telphone" bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="contactList[${loop.index}].telephone"
							name="contactList[${loop.index}].telephone" loxiaType="input"
							trim="true" value="${contact.telephone}" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.comp.contact.mobilephone" bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="contactList[${loop.index}].mobilephone"
							name="contactList[${loop.index}].mobilephone" loxiaType="input"
							trim="true" value="${contact.mobilephone}" /></td>
					</tr>
					<tr>
						<td class="label"><fmt:message key="label.comp.contact.fax"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="contactList[${loop.index}].fax"
							name="contactList[${loop.index}].fax" loxiaType="input"
							trim="true" value="${contact.fax}" /></td>

						<td class="label"><fmt:message key="label.comp.contact.email"
								bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="contactList[${loop.index}].email"
							name="contactList[${loop.index}].email" loxiaType="input"
							trim="true" value="${contact.email}" /></td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.comp.contact.doPostion" bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="contactList[${loop.index}].positeDate"
							name="contactList[${loop.index}].positeDate" loxiaType="date"
							trim="true" value="${contact.positeDate}" /></td>

						<td class="label"><fmt:message
								key="label.comp.contact.remark" bundle="${lang}" /></td>
						<td align="left" width="150"><input
							id="contactList[${loop.index}].remark"
							name="contactList[${loop.index}].remark" loxiaType="input"
							trim="true" value="${contact.remark}" /></td>
					</tr>

				</table>
			</div>
		</c:forEach>

		<div id="formContact"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addContact">添加联系人</button>
		</div>


		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitContact">保存</button>
		</div>
		</br>
	</form>
</body>
</html>
