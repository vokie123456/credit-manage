<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
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
<body contextpath="<%=request.getContextPath()%>">

	<div class="divBgColor">
		<table>
			<tr>
				<td width="150"><fmt:message
						key="label.client.qualification.title" bundle="${lang}" /></td>
			</tr>
		</table>
	</div>
	<table class="col3">
	    <!--  
		<tr>
			<td class="label"><fmt:message
					key="label.client.qualification.isInBlackList" bundle="${lang}" /></td>
			<td class="content"></td>
			<td class="label"><fmt:message
					key="label.client.qualification.isInOtherBlackList" bundle="${lang}" /></td>
			<td class="content"></td>
		</tr>
		-->
		<!--  
		<tr>
			<td class="label"><fmt:message
					key="label.client.qualification.creditMoney" bundle="${lang}" /></td>
			<td class="content">${vo.creditMoney }</td>
			<td class="label"><fmt:message
					key="label.client.qualification.creditBalance" bundle="${lang}" /></td>
			<td class="content">${vo.creditBalance }</td>
			<td class="label"><fmt:message
					key="label.client.qualification.changeToGuaranteeTime" bundle="${lang}" /></td>
			<td class="content">${vo.changeToGuaranteeTime }</td>
			<td class="label"><fmt:message
					key="label.client.qualification.changeToLitigateTime" bundle="${lang}" /></td>
			<td class="content">${vo.changeToLitigateTime }</td>
			<td class="label"><fmt:message
					key="label.client.qualification.badAccountTime" bundle="${lang}" /></td>
			<td class="content">${vo.badAccountTime }</td>
			
		</tr>
		-->
		
		<!--  
		<tr>
			<td class="label"><fmt:message
					key="label.client.qualification.PastOwningFee" bundle="${lang}" /></td>
			<td class="content">${vo.pastOwningFee }</td>
		</tr>
		-->
		<tr>
		   <td class="label"><fmt:message
					key="label.client.qualification.loanTotalMoney" bundle="${lang}" /></td>
			<td class="content">${vo.loanTotalMoney }</td>
			<td class="label"><fmt:message
					key="label.client.qualification.dueBillAcount" bundle="${lang}" /></td>
			<td class="content">${vo.dueBillAcount }</td>
		</tr>
		<tr>
			
			<td class="label"><fmt:message
					key="label.client.qualification.extensionTime" bundle="${lang}" /></td>
			<td class="content">${vo.extensionTime }</td>
			<td class="label"><fmt:message
					key="label.client.qualification.clearDebtTime" bundle="${lang}" /></td>
			<td class="content">${vo.clearDebtTime }</td>
			
		</tr>
		<tr>
			<td class="label"><fmt:message
					key="label.client.qualification.notPaidMoney" bundle="${lang}" /></td>
			<td class="content">${vo.notPaidLoan }</td>

		</tr>
		
	</table>
</body>
</html>