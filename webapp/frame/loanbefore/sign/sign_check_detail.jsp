<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 签约信息新增-->
<head>
<%@include file="/common/metaload.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<!-- 贷款信息-->
		<div class="divBgColor">
			<fmt:message key="label.sign.careful" bundle="${lang}" />
		</div>
		<table class="col3">
			<tr>
				<td class="label"><fmt:message key="label.sign.compName"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.compName}</td>
				<td class="label"><fmt:message key="label.sign.salerTeam"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.salerTeam}</td>
			</tr>
			
			<!--  
			<tr>
				<td class="label"><fmt:message
						key="tip.sign.repayInterval.date.type" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1142"
						value="${signAddVo.repayDateType}" /> <c:if
						test="${signAddVo.repayDateType eq 114212}">
						<td id="labelTd2" class="label"><fmt:message
								key="tip.sign.repayInterval.date2" bundle="${lang}" /></td>
						<td id="dateTypeTd" class="content">${signAddVo.repayFirstDate }</td>
					</c:if> <c:if test="${signAddVo.repayDateType eq 114211}">
						<td id="labelTd1" class="label"><fmt:message
								key="tip.sign.repayInterval.date1" bundle="${lang}" /></td>
						<td id="numberTypeTd" class="content">${signAddVo.repayInterval }</td>
					</c:if>
			</tr>
			-->
			<tr>
				<td class="label"><fmt:message key="label.sign.signerCode"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.signAgent}</td>
				<td class="label"><fmt:message key="label.sign.signDate"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.signEnd}</td>
			</tr>
			<tr>
				<td class="label"><fmt:message key="label.sign.contractId"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.contractId}</td>
				<td class="label"><fmt:message key="label.sign.bankCard"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.bankCard}</td>

			</tr>
			<tr>
				<td class="label"><fmt:message key="label.sign.bankName"
						bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1104"
						value="${signAddVo.bankName}" /></td>
				<td class="label"><fmt:message key="label.sign.clientName"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.clientName}</td>
			</tr>
			<tr>
				<td class="label"><fmt:message key="label.sign.bankSub"
						bundle="${lang}" /></td>
				<td class="content">${signAddVo.bankSub}</td>
			</tr>

			<c:if test="${signCheckFlag eq 'detail'}">
				<tr>
					<td class="label"><fmt:message key="label.sign.check.agent"
							bundle="${lang}" /></td>
					<td class="content">${signAddVo.signCheckAgentName}</td>
					<td class="label"><fmt:message key="label.sign.check.time"
							bundle="${lang}" /></td>
					<td class="content">${signAddVo.signCheckTime}</td>

				</tr>
			</c:if>
			<tr>

				<td class="label"><fmt:message key="label.sign.signRemark"
						bundle="${lang}" /></td>
				<td colspan="3" class="content">${signAddVo.signRemark}</td>

			</tr>
		</table>
		<c:if test="${flagPerson eq 'person' and flag eq 'yes'}">
			<div class="divBgColor">共同还款人信息</div>
			<table class="col3">
				<tr>
					<td class="label"><fmt:message key="label.sign.bankCard"
							bundle="${lang}" /></td>
					<td class="content">${commonBank.bankNo}</td>
					<td class="label"><fmt:message key="label.sign.bankName"
							bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1104"
							value="${commonBank.bankName}" /></td>
				</tr>
				<tr>

					<td class="label"><fmt:message key="label.sign.clientName"
							bundle="${lang}" /></td>
					<td class="content">${commonBank.clientName}</td>
					<td class="label"><fmt:message key="label.sign.bankSub"
							bundle="${lang}" /></td>
					<td class="content">${commonBank.bankBranch}</td>
				</tr>
			</table>
		</c:if>

		<div class="divBgColor">
			<fmt:message key="label.memo.title" bundle="${lang}" />
		</div>
		<table class="col3">
			<tr>
				<td class="label"><fmt:message key="label.memo.oper.type"
						bundle="${lang}" /></td>
				<td class="content">${tlVo.operType}</td>
				<td class="label"><fmt:message key="label.memo.oper.reason"
						bundle="${lang}" /></td>
				<td class="content">${tlVo.operReason}</td>
			</tr>
			<tr>
				<td class="label"><fmt:message key="label.memo.oper.remark"
						bundle="${lang}" /></td>
				<td class="content">${tlVo.operReasonRemark}</td>
			</tr>
		</table>
	</div>

</body>
</html>
