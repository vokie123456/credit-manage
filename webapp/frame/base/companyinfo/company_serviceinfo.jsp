<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/companyinfo/company_serviceinfo.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	
 
	<form id="serviceinfoForm">
			<div id="serviceinfoDiv">
				<br /> 
				<div class="divBgColor">
					<fmt:message key="label.comp.service.title" bundle="${lang}"/>
					<input type="hidden" name="compCode" id="serviceinfo_compCode" value="${compCode}" />
					<input type="hidden" name="id" value="${serviceinfo.id }" />
				</div>
				<table>
					
					<tr>
						<td class="label"><fmt:message key="label.comp.service.status" bundle="${lang}"/></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1133"
								id="status" isChoose="true"
								name="status"
								selected="${serviceinfo.status}" /></td>

						<td class="label"><fmt:message key="label.comp.service.startTime" bundle="${lang}"/></td>
						<td align="left" width="150"><input
							id="contractStartDate" 
							name="contractStartDate"
							loxiaType="date" trim="true"
							value="${serviceinfo.contractStartDate}" /></td>

					</tr>
					
					<tr>
						<td class="label"><fmt:message key="label.comp.service.endTime" bundle="${lang}"/></td>
						<td align="left" width="150"><input
								loxiaType="date" 
								id="contractEndDate" 
								name="contractEndDate"
								value="${serviceinfo.contractEndDate}" /></td>

						<td class="label"><fmt:message key="label.comp.service.type" bundle="${lang}"/></td>
						<td align="left" width="150"><bizoption:bizoption
								biztypekey="1134" isChoose="true"
								id="chargeType" 
								name="chargeType"
								selected="${serviceinfo.chargeType}" /></td>

					</tr>
					
					<tr>
						<td class="label"><fmt:message key="label.comp.service.saler" bundle="${lang}"/></td>
						<td align="left" width="150"><input loxiaType="input"
								id="salerManager" 
								name="salerManager"
								value="${serviceinfo.salerManager}" /></td>

						<td class="label"><fmt:message key="label.comp.service.agent" bundle="${lang}"/></td>
						<td align="left" width="150"><input
						    loxiaType="input"
							id="serviceAgent"
							name="serviceAgent"
							value="${serviceinfo.serviceAgent}" /></td>

					</tr>
					
					<tr>
							
							<td class="label"><fmt:message key="label.comp.service.remark" bundle="${lang}"/></td>
						<td align="left" width="150"><input
							id="remark"
							name="remark"
							loxiaType="input" trim="true" 
							value="${serviceinfo.remark}"/></td>
					</tr>
					
				</table>
			</div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitServiceinfo">保存</button>
		</div>
		</br>
	</form>
</body>