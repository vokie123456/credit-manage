<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<div>
		<table width="100%" >
			<tr>
			    <input type="hidden" id="projectId" value="${vo.projectId}"/>
				<!-- 合同编号-->
				<td class="label"><fmt:message
						key="label.collection.agreementCode" bundle="${lang}" /></td>
				<td width="150">${vo.contractId }</td>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150">${vo.projectCode }</td>
				<!-- 产品名称-->
				<td class="label"><fmt:message
						key="label.visitinquiry.prodName" bundle="${lang}" /></td>
				<td width="150">${vo.prodName }</td>
			</tr>
			<tr>
				<!-- 储蓄卡号 -->
				<td class="label"><fmt:message key="label.debt.info.cardNo"
						bundle="${lang}" /></td>
				<td width="150">${vo.cardNo }</td>
				<!-- 客户姓名 -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
				<td width="150">${vo.clientName }</td>
				<!-- 身份证号 -->
				<td class="label"><fmt:message key="label.visitinquiry.cardNo"
						bundle="${lang}" /></td>
				<td width="150">${vo.idNo }</td>

			</tr>
			<tr>
				<!-- 贷款金额 -->
				<td class="label"><fmt:message key="label.debt.info.debtMoney"
						bundle="${lang}" /></td>
				<td width="150">${vo.debtMoney }</td>
				<!-- 项目状态 -->
				<td class="label"><fmt:message
						key="label.visitinquiry.projectStatus" bundle="${lang}" /></td>
				<td width="150"><bizoptionname:showname biztypekey="1044" value="104401" /></td>
				
				<!-- 清贷状态 -->
				<td class="label"><fmt:message
						key="label.visitinquiry.qdStatus" bundle="${lang}" /></td>
				<td width="150"><bizoptionname:showname biztypekey="1101" value="110101" /></td>
			</tr>
			<tr>
				<!-- 贷款期数 -->
				<td class="label"><fmt:message key="label.extend.check.loanPeriod"
						bundle="${lang}" /></td>
				<td width="150">${vo.debtDue }</td>
				<!-- 已出期数 -->
				<td class="label"><fmt:message key="label.debt.info.repayDue"
						bundle="${lang}" /></td>
				<td width="150">${vo.outDue }</td>
				<!--逾期期数 -->
				<td class="label"><fmt:message
						key="label.clear.debt.clear.interestFineNum" bundle="${lang}" /></td>
				<td width="150">${vo.interestFineNum }</td>
			</tr>
			<tr>
				<!-- 还款本金总计 -->
				<td class="label"><fmt:message key="label.clear.debt.clear.principalPaid"
						bundle="${lang}" /></td>
				<td width="150">${vo.principalPaid }</td>
				<!--还款利息总计 -->
				<td class="label"><fmt:message
						key="label.clear.debt.clear.interestPaid" bundle="${lang}" /></td>
				<td width="150">${vo.interestPaid }</td>
				<!--还款服务费总计 -->
				<td class="label"><fmt:message
						key="label.clear.debt.clear.costPaid" bundle="${lang}" /></td>
				<td width="150">${vo.costPaid }</td>
			</tr>
			<tr>
				<!-- 放款时间 -->
				<td class="label"><fmt:message key="label.debt.info.lendDate"
						bundle="${lang}" /></td>
				<td width="150">${vo.lendDate }</td>
				<!--首期还款时间 -->
				<td class="label"><fmt:message
						key="label.debt.info.firstLendDate" bundle="${lang}" /></td>
				<td width="150">${vo.firstRepayDate }</td>
				<!--自然清贷日 -->
				<td class="label"><fmt:message
						key="label.debt.info.clearDate" bundle="${lang}" /></td>
				<td width="150">${vo.loanPeriodEnd }</td>
			<tr>
			</tr>
				<!--实际清贷日 -->
				<td class="label"><fmt:message
						key="label.debt.info.realClearDate" bundle="${lang}" /></td>
				<td width="150">${vo.endTime }</td>
				<!-- 诉讼日期 -->
				<td class="label"><fmt:message key="label.clear.debt.clear.ssDate"
						bundle="${lang}" /></td>
				<td width="150"></td>
			</tr>
		</table>
		</div>