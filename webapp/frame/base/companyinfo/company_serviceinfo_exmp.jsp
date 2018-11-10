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
			<td width="150"><fmt:message key="label.comp.service.title"
					bundle="${lang}" /></td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteServiceinfo(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table>

	<tr>
		<td class="label"><fmt:message key="label.comp.service.status"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption
				biztypekey="1007" id="serviceInfoList[${count}].status"
				name="serviceInfoList[${count}].status" /></td>

		<td class="label"><fmt:message key="label.comp.service.startTime"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="serviceInfoList[${count}].contractStartDate"
			name="serviceInfoList[${count}].contractStartDate"
			loxiaType="date" trim="true" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.service.endTime"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="date"
			id="serviceInfoList[${count}].contractEndDate"
			name="serviceInfoList[${count}].contractEndDate" /></td>

		<td class="label"><fmt:message key="label.comp.service.type"
				bundle="${lang}" /></td>
		<td align="left" width="150"><bizoption:bizoption
				biztypekey="1006" id="serviceInfoList[${count}].chargeType"
				name="serviceInfoList[${count}].chargeType" /></td>

	</tr>

	<tr>
		<td class="label"><fmt:message key="label.comp.service.saler"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="serviceInfoList[${count}].salerManager"
			name="serviceInfoList[${count}].salerManager" /></td>

		<td class="label"><fmt:message key="label.comp.service.agent"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input loxiaType="input"
			id="serviceInfoList[${count}].serviceAgent"
			name="serviceInfoList[${count}].serviceAgent" /></td>

	</tr>

	<tr>

		<td class="label"><fmt:message key="label.comp.service.remark"
				bundle="${lang}" /></td>
		<td align="left" width="150"><input
			id="serviceInfoList[${count}].remark"
			name="serviceInfoList[${count}].remark" loxiaType="input"
			trim="true" /></td>
	</tr>

</table>