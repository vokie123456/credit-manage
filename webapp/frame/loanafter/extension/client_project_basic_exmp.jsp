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
		<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
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
				<!-- 项目状态 -->
				<input type="hidden" id="statusV" value="${vo.projectStatus }"/>
				<td class="label"><fmt:message
						key="label.visitinquiry.projectStatus" bundle="${lang}" /></td>
				<!--  
				<td width="150" id="proStatus">-->
				<td>
				<bizoptionname:showname biztypekey="1101" value="${vo.projectStatus}" /></td>
				<!-- 贷款金额 -->
				<td class="label"><fmt:message key="label.debt.info.debtMoney"
						bundle="${lang}" /></td>
				<td width="150">${vo.debtMoney }</td>
				<!-- 贷款期数 -->
				<td class="label"><fmt:message key="label.extend.check.loanPeriod"
						bundle="${lang}" /></td>
				<td width="150">${vo.debtDue }</td>

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

				<!-- 已出期数 -->
				<td class="label"><fmt:message key="label.debt.info.repayDue"
						bundle="${lang}" /></td>
				<td width="150">${vo.outDue }</td>
			</tr>
			
		</table>
		</div>