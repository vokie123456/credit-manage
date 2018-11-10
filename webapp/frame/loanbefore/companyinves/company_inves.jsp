<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款调查查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.company.inves.formTitle"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/companyinves/company_inves.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="div_out"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#formdetail" id="a_check">调查表</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_apply'>申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_product'>产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_credit'>企业征信</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_collateral'>押品信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2"
				id='a_updown'>电子文档</a></li>
		</ul>
		<div id="formdetail">
			<div>
				<input type="hidden" id="projectId" value="${projectId }" /> <input
					type="hidden" id="taskId" value="${taskId }" /> <input
					type="hidden" id="compCode" value="${compCode }" /> <input
					type="hidden" id="taskType" value="${ taskType}" /> <input
					type="hidden" id="applyId" value="${applyId }" />
			</div>
			<form id="companyInvesForm" method="post">

				<!-- 1.总量指标 -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.totalmark" bundle="${lang}" />
				</div>
				<table id="totalMark" border="1" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th colspan="2"><fmt:message
								key="label.company.inves.project" bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.totalAssets"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.totalAssets1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.totalDebt"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.totalDebt1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.owner"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.owner1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.bankCredit"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.bankCredit1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.sell"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.sell1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.totalProfit"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.accounting"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.accounting1"
								bundle="${lang}" /></th>

					</tr>

					<tbody id="companyUnit1">
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.preYear" bundle="${lang}" /></td>
							<td class="label" id="indexUnit11"></td>
							<td><input id="" name="FinancialIndexList.assetAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.assetAll }" /></td>
							<td><input id="" name="FinancialIndexList.assetCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.assetCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.debtAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.debtAll }" /></td>
							<td><input id="" name="FinancialIndexList.debtCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.debtCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rightOwner"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rightOwner }" /></td>
							<td><input id="" name="FinancialIndexList.capitalHold"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.capitalHold }" /></td>
							<td><input id="" name="FinancialIndexList.bankLoans"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.bankLoans }" /></td>
							<td><input id="" name="FinancialIndexList.bankShort"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.bankShort }" /></td>
							<td><input id="" name="FinancialIndexList.incomeSale"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.incomeSale }" /></td>
							<td><input id="" name="FinancialIndexList.incomeMajor"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.incomeMajor }" /></td>
							<td><input id="" name="FinancialIndexList.profitAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.profitAll }" /></td>
							<td><input id="" name="FinancialIndexList.financialCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.financialCost }" /></td>
							<td><input id="" name="FinancialIndexList.interestCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.interestCost }" /></td>
						</tr>
						<tr>
							<td class="label" id="indexUnit12"></td>
							<td><input id="" name="FinancialIndexList.assetAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.assetAll }" /></td>
							<td><input id="" name="FinancialIndexList.assetCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.assetCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.debtAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.debtAll }" /></td>
							<td><input id="" name="FinancialIndexList.debtCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.debtCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rightOwner"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rightOwner }" /></td>
							<td><input id="" name="FinancialIndexList.capitalHold"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.capitalHold }" /></td>
							<td><input id="" name="FinancialIndexList.bankLoans"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.bankLoans }" /></td>
							<td><input id="" name="FinancialIndexList.bankShort"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.bankShort }" /></td>
							<td><input id="" name="FinancialIndexList.incomeSale"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.incomeSale }" /></td>
							<td><input id="" name="FinancialIndexList.incomeMajor"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.incomeMajor }" /></td>
							<td><input id="" name="FinancialIndexList.profitAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.profitAll }" /></td>
							<td><input id="" name="FinancialIndexList.financialCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.financialCost }" /></td>
							<td><input id="" name="FinancialIndexList.interestCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.interestCost }" /></td>
						</tr>
						<tr>
							<td class="label" id="indexUnit13"></td>
							<td><input id="" name="FinancialIndexList.assetAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.assetAll }" /></td>
							<td><input id="" name="FinancialIndexList.assetCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.assetCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.debtAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.debtAll }" /></td>
							<td><input id="" name="FinancialIndexList.debtCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.debtCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rightOwner"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rightOwner }" /></td>
							<td><input id="" name="FinancialIndexList.capitalHold"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.capitalHold }" /></td>
							<td><input id="" name="FinancialIndexList.bankLoans"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.bankLoans }" /></td>
							<td><input id="" name="FinancialIndexList.bankShort"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.bankShort }" /></td>
							<td><input id="" name="FinancialIndexList.incomeSale"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.incomeSale }" /></td>
							<td><input id="" name="FinancialIndexList.incomeMajor"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.incomeMajor }" /></td>
							<td><input id="" name="FinancialIndexList.profitAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.profitAll }" /></td>
							<td><input id="" name="FinancialIndexList.financialCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.financialCost }" /></td>
							<td><input id="" name="FinancialIndexList.interestCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.interestCost }" /></td>
						</tr>

						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.compare" bundle="${lang}" /></td>
							<td class="label" id="indexUnit14"></td>
							<td><input id="" name="FinancialIndexList.assetAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.assetAll }" /></td>
							<td><input id="" name="FinancialIndexList.assetCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.assetCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.debtAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.debtAll }" /></td>
							<td><input id="" name="FinancialIndexList.debtCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.debtCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rightOwner"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rightOwner }" /></td>
							<td><input id="" name="FinancialIndexList.capitalHold"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.capitalHold }" /></td>
							<td><input id="" name="FinancialIndexList.bankLoans"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.bankLoans }" /></td>
							<td><input id="" name="FinancialIndexList.bankShort"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.bankShort }" /></td>
							<td><input id="" name="FinancialIndexList.incomeSale"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.incomeSale }" /></td>
							<td><input id="" name="FinancialIndexList.incomeMajor"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.incomeMajor }" /></td>
							<td><input id="" name="FinancialIndexList.profitAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.profitAll }" /></td>
							<td><input id="" name="FinancialIndexList.financialCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.financialCost }" /></td>
							<td><input id="" name="FinancialIndexList.interestCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.interestCost }" /></td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.company.inves.lastyear" bundle="${lang}" /></td>
							<td><input id="" name="FinancialIndexList.assetAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.assetAll }" /></td>
							<td><input id="" name="FinancialIndexList.assetCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.assetCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.debtAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.debtAll }" /></td>
							<td><input id="" name="FinancialIndexList.debtCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.debtCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rightOwner"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rightOwner }" /></td>
							<td><input id="" name="FinancialIndexList.capitalHold"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.capitalHold }" /></td>
							<td><input id="" name="FinancialIndexList.bankLoans"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.bankLoans }" /></td>
							<td><input id="" name="FinancialIndexList.bankShort"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.bankShort }" /></td>
							<td><input id="" name="FinancialIndexList.incomeSale"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.incomeSale }" /></td>
							<td><input id="" name="FinancialIndexList.incomeMajor"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.incomeMajor }" /></td>
							<td><input id="" name="FinancialIndexList.profitAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.profitAll }" /></td>
							<td><input id="" name="FinancialIndexList.financialCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.financialCost }" /></td>
							<td><input id="" name="FinancialIndexList.interestCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.interestCost }" /></td>
						</tr>
						<tr>
							<td class="label">"(+、-)%"</td>
							<td><input id="" name="FinancialIndexList.assetAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.assetAll }" /></td>
							<td><input id="" name="FinancialIndexList.assetCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.assetCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.debtAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.debtAll }" /></td>
							<td><input id="" name="FinancialIndexList.debtCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.debtCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rightOwner"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rightOwner }" /></td>
							<td><input id="" name="FinancialIndexList.capitalHold"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.capitalHold }" /></td>
							<td><input id="" name="FinancialIndexList.bankLoans"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.bankLoans }" /></td>
							<td><input id="" name="FinancialIndexList.bankShort"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.bankShort }" /></td>
							<td><input id="" name="FinancialIndexList.incomeSale"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.incomeSale }" /></td>
							<td><input id="" name="FinancialIndexList.incomeMajor"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.incomeMajor }" /></td>
							<td><input id="" name="FinancialIndexList.profitAll"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.profitAll }" /></td>
							<td><input id="" name="FinancialIndexList.financialCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.financialCost }" /></td>
							<td><input id="" name="FinancialIndexList.interestCost"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.interestCost }" /></td>
						</tr>
					</tbody>

				</table>

				<!-- 2.营运指标 -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.serviceMark" bundle="${lang}" />
				</div>
				<table id="serviceMark" border="1" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th colspan="2"><fmt:message
								key="label.company.inves.project" bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.creditValue"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.stock"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cash"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.accTime"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.stockRate"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashRate"
								bundle="${lang}" /></th>
					</tr>
					<!-- 前三年度 -->
					<tbody id="companyUnit2">
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.preYear" bundle="${lang}" /></td>
							<td class="label" id="indexUnit21"></td>
							<td><input id="" name="FinancialIndexList.avgReceivables"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.avgReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.avgInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.avgInventory }" /></td>
							<td><input id="" name="FinancialIndexList.avgWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.avgWorking }" /></td>
							<td><input id=""
								name="FinancialIndexList.turnoverReceivables" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex1.turnoverReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.turnoverInventory }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.turnoverWorking }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit22"></td>
							<td><input id="" name="FinancialIndexList.avgReceivables"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.avgReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.avgInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.avgInventory }" /></td>
							<td><input id="" name="FinancialIndexList.avgWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.avgWorking }" /></td>
							<td><input id=""
								name="FinancialIndexList.turnoverReceivables" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex2.turnoverReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.turnoverInventory }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.turnoverWorking }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit23"></td>
							<td><input id="" name="FinancialIndexList.avgReceivables"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.avgReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.avgInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.avgInventory }" /></td>
							<td><input id="" name="FinancialIndexList.avgWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.avgWorking }" /></td>
							<td><input id=""
								name="FinancialIndexList.turnoverReceivables" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex3.turnoverReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.turnoverInventory }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.turnoverWorking }" /></td>
						</tr>

						<!-- 同期对比 -->
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.compare" bundle="${lang}" /></td>
							<td class="label" id="indexUnit24"></td>
							<td><input id="" name="FinancialIndexList.avgReceivables"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.avgReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.avgInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.avgInventory }" /></td>
							<td><input id="" name="FinancialIndexList.avgWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.avgWorking }" /></td>
							<td><input id=""
								name="FinancialIndexList.turnoverReceivables" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex4.turnoverReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.turnoverInventory }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.turnoverWorking }" /></td>
						</tr>

						<tr>
							<td class="label"><fmt:message
									key="label.company.inves.lastyear" bundle="${lang}" /></td>
							<td><input id="" name="FinancialIndexList.avgReceivables"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.avgReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.avgInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.avgInventory }" /></td>
							<td><input id="" name="FinancialIndexList.avgWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.avgWorking }" /></td>
							<td><input id=""
								name="FinancialIndexList.turnoverReceivables" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex5.turnoverReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.turnoverInventory }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.turnoverWorking }" /></td>
						</tr>

						<tr>
							<td class="label">"(+、-)%"</td>
							<td><input id="" name="FinancialIndexList.avgReceivables"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.avgReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.avgInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.avgInventory }" /></td>
							<td><input id="" name="FinancialIndexList.avgWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.avgWorking }" /></td>
							<td><input id=""
								name="FinancialIndexList.turnoverReceivables" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex6.turnoverReceivables }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverInventory"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.turnoverInventory }" /></td>
							<td><input id="" name="FinancialIndexList.turnoverWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.turnoverWorking }" /></td>
						</tr>
					</tbody>

				</table>

				<!-- 3.偿债指标 -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.payDebtMark" bundle="${lang}" />
				</div>
				<table id="payDebtMark" border="1" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th colspan="2"><fmt:message
								key="label.company.inves.project" bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.assetsRate"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.moveRate"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.spitRate"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.assRate"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.interest"
								bundle="${lang}" /></th>
					</tr>
					<!-- 前三年度 -->
					<tbody id="companyUnit3">
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.preYear" bundle="${lang}" /></td>
							<td class="label" id="indexUnit31"></td>
							<td><input id="" name="FinancialIndexList.rateDebt"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateDebt }" /></td>
							<td><input id="" name="FinancialIndexList.rateCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rateQuick"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateQuick }" /></td>
							<td><input id="" name="FinancialIndexList.rateRight"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateRight }" /></td>
							<td><input id="" name="FinancialIndexList.interestTimes"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.interestTimes }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit32"></td>
							<td><input id="" name="FinancialIndexList.rateDebt"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateDebt }" /></td>
							<td><input id="" name="FinancialIndexList.rateCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rateQuick"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateQuick }" /></td>
							<td><input id="" name="FinancialIndexList.rateRight"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateRight }" /></td>
							<td><input id="" name="FinancialIndexList.interestTimes"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.interestTimes }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit33"></td>
							<td><input id="" name="FinancialIndexList.rateDebt"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateDebt }" /></td>
							<td><input id="" name="FinancialIndexList.rateCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rateQuick"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateQuick }" /></td>
							<td><input id="" name="FinancialIndexList.rateRight"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateRight }" /></td>
							<td><input id="" name="FinancialIndexList.interestTimes"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.interestTimes }" /></td>
						</tr>

						<!-- 同期对比 -->
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.compare" bundle="${lang}" /></td>
							<td class="label" id="indexUnit34"></td>
							<td><input id="" name="FinancialIndexList.rateDebt"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateDebt }" /></td>
							<td><input id="" name="FinancialIndexList.rateCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rateQuick"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateQuick }" /></td>
							<td><input id="" name="FinancialIndexList.rateRight"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateRight }" /></td>
							<td><input id="" name="FinancialIndexList.interestTimes"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.interestTimes }" /></td>
						</tr>

						<tr>
							<td class="label"><fmt:message
									key="label.company.inves.lastyear" bundle="${lang}" /></td>
							<td><input id="" name="FinancialIndexList.rateDebt"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateDebt }" /></td>
							<td><input id="" name="FinancialIndexList.rateCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rateQuick"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateQuick }" /></td>
							<td><input id="" name="FinancialIndexList.rateRight"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateRight }" /></td>
							<td><input id="" name="FinancialIndexList.interestTimes"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.interestTimes }" /></td>
						</tr>

						<tr>
							<td class="label">"(+、-)%"</td>
							<td><input id="" name="FinancialIndexList.rateDebt"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateDebt }" /></td>
							<td><input id="" name="FinancialIndexList.rateCurrent"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateCurrent }" /></td>
							<td><input id="" name="FinancialIndexList.rateQuick"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateQuick }" /></td>
							<td><input id="" name="FinancialIndexList.rateRight"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateRight }" /></td>
							<td><input id="" name="FinancialIndexList.interestTimes"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.interestTimes }" /></td>
						</tr>
					</tbody>

				</table>

				<!-- 4.成长指标 -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.upMark" bundle="${lang}" />
				</div>
				<table id="upMark" border="1" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th colspan="2"><fmt:message
								key="label.company.inves.project" bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.upMark1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.upMark2"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.upMark5"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.upMark3"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.upMark4"
								bundle="${lang}" /></th>
					</tr>
					<!-- 前三年度 -->
					<tbody id="companyUnit4">
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.preYear" bundle="${lang}" /></td>
							<td class="label" id="indexUnit41"></td>
							<td><input id="" name="FinancialIndexList.rateNetvalue"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateNetvalue }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleprofit"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateSaleprofit }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.rateSaleIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateProfitIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex1.rateProfitIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateCapitalIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex1.rateCapitalIncrease }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit42"></td>
							<td><input id="" name="FinancialIndexList.rateNetvalue"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateNetvalue }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleprofit"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateSaleprofit }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.rateSaleIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateProfitIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex2.rateProfitIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateCapitalIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex2.rateCapitalIncrease }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit43"></td>
							<td><input id="" name="FinancialIndexList.rateNetvalue"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateNetvalue }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleprofit"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateSaleprofit }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.rateSaleIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateProfitIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex3.rateProfitIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateCapitalIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex3.rateCapitalIncrease }" /></td>
						</tr>

						<!-- 同期对比 -->
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.compare" bundle="${lang}" /></td>
							<td class="label" id="indexUnit44"></td>
							<td><input id="" name="FinancialIndexList.rateNetvalue"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateNetvalue }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleprofit"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateSaleprofit }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.rateSaleIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateProfitIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex4.rateProfitIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateCapitalIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex4.rateCapitalIncrease }" /></td>
						</tr>

						<tr>
							<td class="label"><fmt:message
									key="label.company.inves.lastyear" bundle="${lang}" /></td>
							<td><input id="" name="FinancialIndexList.rateNetvalue"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateNetvalue }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleprofit"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateSaleprofit }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.rateSaleIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateProfitIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex5.rateProfitIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateCapitalIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex5.rateCapitalIncrease }" /></td>
						</tr>

						<tr>
							<td class="label">"(+、-)%"</td>
							<td><input id="" name="FinancialIndexList.rateNetvalue"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateNetvalue }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleprofit"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateSaleprofit }" /></td>
							<td><input id="" name="FinancialIndexList.rateSaleIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.rateSaleIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateProfitIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex6.rateProfitIncrease }" /></td>
							<td><input id=""
								name="FinancialIndexList.rateCapitalIncrease" loxiaType="number"
								trim="true" decimal="2"
								value="${FinancialIndex6.rateCapitalIncrease }" /></td>
						</tr>
					</tbody>
				</table>

				<!-- 5.现金流量 -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.cashM" bundle="${lang}" />
				</div>
				<table id="cashM" border="1" cellpadding="0" cellspacing="0"
					width="100%">
					<tr>
						<th colspan="2"><fmt:message
								key="label.company.inves.project" bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM1"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM2"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM3"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM2"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM4"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM5"
								bundle="${lang}" /></th>
						<th><fmt:message key="label.company.inves.cashM6"
								bundle="${lang}" /></th>
					</tr>
					<!-- 前三年度 -->
					<tbody id="companyUnit5">
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.preYear" bundle="${lang}" /></td>
							<td class="label" id="indexUnit51"></td>
							<td><input id="" name="FinancialIndexList.cashWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashWorking }" /></td>
							<td><input id="" name="FinancialIndexList.cashWorkingInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashWorkingInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestment"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashInvestment }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashInvestInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashFinancing"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashFinancing }" /></td>
							<td><input id="" name="FinancialIndexList.cashExchangeRate"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashExchangeRate }" /></td>
							<td><input id="" name="FinancialIndexList.cashNetIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex1.cashNetIncrease }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit52"></td>
							<td><input id="" name="FinancialIndexList.cashWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashWorking }" /></td>
							<td><input id="" name="FinancialIndexList.cashWorkingInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashWorkingInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestment"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashInvestment }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashInvestInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashFinancing"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashFinancing }" /></td>
							<td><input id="" name="FinancialIndexList.cashExchangeRate"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashExchangeRate }" /></td>
							<td><input id="" name="FinancialIndexList.cashNetIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex2.cashNetIncrease }" /></td>
						</tr>

						<tr>
							<td class="label" id="indexUnit53"></td>
							<td><input id="" name="FinancialIndexList.cashWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashWorking }" /></td>
							<td><input id="" name="FinancialIndexList.cashWorkingInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashWorkingInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestment"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashInvestment }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashInvestInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashFinancing"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashFinancing }" /></td>
							<td><input id="" name="FinancialIndexList.cashExchangeRate"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashExchangeRate }" /></td>
							<td><input id="" name="FinancialIndexList.cashNetIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex3.cashNetIncrease }" /></td>
						</tr>

						<!-- 同期对比 -->
						<tr>
							<td class="label" rowspan="3"><fmt:message
									key="label.company.inves.compare" bundle="${lang}" /></td>
							<td class="label" id="indexUnit54"></td>
							<td><input id="" name="FinancialIndexList.cashWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashWorking }" /></td>
							<td><input id="" name="FinancialIndexList.cashWorkingInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashWorkingInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestment"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashInvestment }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashInvestInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashFinancing"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashFinancing }" /></td>
							<td><input id="" name="FinancialIndexList.cashExchangeRate"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashExchangeRate }" /></td>
							<td><input id="" name="FinancialIndexList.cashNetIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex4.cashNetIncrease }" /></td>
						</tr>

						<tr>
							<td class="label"><fmt:message
									key="label.company.inves.lastyear" bundle="${lang}" /></td>
							<td><input id="" name="FinancialIndexList.cashWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashWorking }" /></td>
							<td><input id="" name="FinancialIndexList.cashWorkingInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashWorkingInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestment"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashInvestment }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashInvestInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashFinancing"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashFinancing }" /></td>
							<td><input id="" name="FinancialIndexList.cashExchangeRate"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashExchangeRate }" /></td>
							<td><input id="" name="FinancialIndexList.cashNetIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex5.cashNetIncrease }" /></td>
						</tr>

						<tr>
							<td class="label">"(+、-)%"</td>
							<td><input id="" name="FinancialIndexList.cashWorking"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashWorking }" /></td>
							<td><input id="" name="FinancialIndexList.cashWorkingInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashWorkingInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestment"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashInvestment }" /></td>
							<td><input id="" name="FinancialIndexList.cashInvestInflow"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashInvestInflow }" /></td>
							<td><input id="" name="FinancialIndexList.cashFinancing"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashFinancing }" /></td>
							<td><input id="" name="FinancialIndexList.cashExchangeRate"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashExchangeRate }" /></td>
							<td><input id="" name="FinancialIndexList.cashNetIncrease"
								loxiaType="number" trim="true" decimal="2"
								value="${FinancialIndex6.cashNetIncrease }" /></td>
						</tr>
					</tbody>
				</table>

				<!-- 6.1年  月前五位应收账款及其它应收款明细 
			     其中用来区别“应收”和“其他应收”两种类别 的标识 flag=1（应收）,2（其他应收）。暂定！
			 -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.cash.title" bundle="${lang}" />
				</div>
				<div class="divBgColor">
					<fmt:message key="label.company.inves.cashdetail" bundle="${lang}" />
					<input type="hidden" value="1" id="cashdetailFlag" />
				</div>
				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="tabCashdetail">
						<thead>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.inves.departmentName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.inves.cashNum" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.inves.accountYear" bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="cashdetail">
							<c:forEach items="${companyInves.receivablesInfoList}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="receivablesInfoList.workunitName"
										value="${dis.workunitName }" mandatory="true" /></td>
									<td><input type="text" loxiaType="number"
										name="receivablesInfoList.receivableAmount"
										value="${dis.receivableAmount }" decimal="2" /></td>
									<td><input type="text" loxiaType="input"
										name="receivablesInfoList.remark" value="${dis.remark }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="receivablesInfoList.workunitName" mandatory="true" /></td>
								<td><input type="text" loxiaType="number"
									name="receivablesInfoList.receivableAmount" decimal="2" /></td>
								<td><input type="text" loxiaType="input"
									name="receivablesInfoList.remark" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 6.2年  月前五位其它应收款明细  -->
				<div class="divBgColor">
					<fmt:message key="label.company.inves.cashdetail1" bundle="${lang}" />
					<input type="hidden" value="2" id="cashdetailFlagA" />
				</div>
				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="tabCashdetail1">
						<thead>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.inves.departmentName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.inves.cashNum" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.inves.accountYear" bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="cashdetailA">
							<c:forEach items="${companyInves.receivablesInfoListA}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="receivablesInfoListA.workunitName"
										value="${dis.workunitName }" mandatory="true" /></td>
									<td><input type="text" loxiaType="number" decimal="2"
										name="receivablesInfoListA.receivableAmount"
										value="${dis.receivableAmount }" /></td>
									<td><input type="text" loxiaType="input"
										name="receivablesInfoListA.remark" value="${dis.remark }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="receivablesInfoListA.workunitName" mandatory="true" /></td>
								<td><input type="text" loxiaType="number" decimal="2"
									name="receivablesInfoListA.receivableAmount" /></td>
								<td><input type="text" loxiaType="input"
									name="receivablesInfoListA.remark" /></td>
							</tr>
						</tbody>
					</table>
				</div>

				<!-- 企业经营情况  -->
				<div class="divBgColor">
					<fmt:message key="label.company.manage.title" bundle="${lang}" />
				</div>
				<!--1.企业主要产品  -->
				<div class="label">
					<fmt:message key="label.company.manage.product" bundle="${lang}" />
				</div>
				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="productM">
						<thead>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.mainProduct" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.mianMaket" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.knowledge" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.marketRate" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.marketInSH" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.upYearAmt" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.manage.ll" bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="comProductBody">
							<c:forEach items="${companyInves.productMajorList}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input loxiaType="input"
										name="productMajorList.prodName" value="${dis.prodName }"
										mandatory="true" /></td>
									<td><input loxiaType="input"
										name="productMajorList.market" value="${dis.market }" /></td>
									<td><bizoption:bizoption biztypekey="1068" id=""
											name="productMajorList.technology" isChoose="true"
											selected="${dis.technology }" /></td>
									<td><input loxiaType="number"
										name="productMajorList.rateChina" decimal="1"
										value="${dis.rateChina }" decimal="2" /></td>
									<td><input loxiaType="number"
										name="productMajorList.rateShanghai" decimal="1"
										value="${dis.rateShanghai }" decimal="2" /></td>
									<td><input loxiaType="number"
										name="productMajorList.saleLastyear" decimal="1"
										value="${dis.saleLastyear }" decimal="2" /></td>
									<td><input loxiaType="number"
										name="productMajorList.rateIncome" decimal="1"
										value="${dis.rateIncome }" decimal="2" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input loxiaType="input"
									name="productMajorList.prodName" mandatory="true" /></td>
								<td><input loxiaType="input" name="productMajorList.market" /></td>
								<td><bizoption:bizoption biztypekey="1068" id=""
										name="productMajorList.technology" isChoose="true" /></td>
								<td><input loxiaType="number"
									name="productMajorList.rateChina" decimal="2" /></td>
								<td><input loxiaType="number"
									name="productMajorList.rateShanghai" decimal="2" /></td>
								<td><input loxiaType="number"
									name="productMajorList.saleLastyear" decimal="2" /></td>
								<td><input loxiaType="number"
									name="productMajorList.rateIncome" decimal="2" /></td>
							</tr>
						</tbody>
					</table>
				</div>


				<!--2.主要供应商、销售商  -->
				<div class="divBgColor">
					<fmt:message key="label.company.supplier" bundle="${lang}" />
					<input type="hidden" value="1" id="mianSupplierFlag" />
				</div>
				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="supplier">
						<thead>
							<tr>
								<th colspan="4"><fmt:message
										key="label.company.marketPlace" bundle="${lang}" />: <radio:radio
										biztypekey="1070" id="mianSupplierSelect"
										name="suppliersMarketMajor" checked="${suppMarketMajor }"></radio:radio></th>
							</tr>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.companyName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.productName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.num" bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="mianSupplier">
							<c:forEach items="${companyInves.supplierList}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="supplierList.partnerName" value="${dis.partnerName }"
										mandatory="true" /></td>
									<td><input type="text" loxiaType="input"
										name="supplierList.merchandise" value="${dis.merchandise }" /></td>
									<td><input type="text" loxiaType="number"
										name="supplierList.count" value="${dis.count }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="supplierList.partnerName" mandatory="true" /></td>
								<td><input type="text" loxiaType="input"
									name="supplierList.merchandise" /></td>
								<td><input type="text" loxiaType="number"
									name="supplierList.count" /></td>
							</tr>
						</tbody>
					</table>
				</div>


				<!--3.主要销售商  -->
				<div class="divBgColor">
					<fmt:message key="label.company.seller" bundle="${lang}" />
					<input type="hidden" value="2" id="mianSellerFlag" />
				</div>
				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="seller">
						<thead>
							<tr>
								<th colspan="4"><fmt:message
										key="label.company.marketPlace" bundle="${lang}" />: <radio:radio
										biztypekey="1070" id="mianSellerSelect"
										name="salersMarketMajor" checked="${salMarketMajor }"></radio:radio>
								</th>
							</tr>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.companyName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.productName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.num" bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="mianSeller">
							<c:forEach items="${companyInves.salerList}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="salerList.partnerName" value="${dis.partnerName }"
										mandatory="true" /></td>
									<td><input type="text" loxiaType="input"
										name="salerList.merchandise" value="${dis.merchandise }" /></td>
									<td><input type="text" loxiaType="number"
										name="salerList.count" value="${dis.count }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="salerList.partnerName" mandatory="true" /></td>
								<td><input type="text" loxiaType="input"
									name="salerList.merchandise" /></td>
								<td><input type="text" loxiaType="number"
									name="salerList.count" /></td>
							</tr>
						</tbody>
					</table>
				</div>


				<!--4.关联公司与对外投资明细-->

				<div class="divBgColor">
					<fmt:message key="label.company.comDetail" bundle="${lang}" />
				</div>

				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="tabComDetail">
						<thead>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.supplier.companyName" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.relationShip" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.investAmt" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.presenter" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message key="label.company.mtn"
										bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="comDetail">
							<c:forEach items="${companyInves.relationInvestList}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="relationInvestList.relationName"
										value="${dis.relationName }" mandatory="true" /></td>
									<td><bizoption:bizoption biztypekey="1071"
											name="relationInvestList.relationType" isChoose="true"
											selected="${dis.relationType }" /></td>
									<td><input type="text" loxiaType="number"
										name="relationInvestList.investMoney"
										value="${dis.investMoney }" /></td>
									<td><input type="text" loxiaType="input"
										name="relationInvestList.lealPerson"
										value="${dis.lealPerson }" /></td>
									<td><input type="text" loxiaType="input"
										name="relationInvestList.remark" value="${dis.remark }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="relationInvestList.relationName" mandatory="true" /></td>
								<td><bizoption:bizoption biztypekey="1071"
										name="relationInvestList.relationType" isChoose="true" /></td>
								<td><input type="text" loxiaType="number"
									name="relationInvestList.investMoney" /></td>
								<td><input type="text" loxiaType="input"
									name="relationInvestList.lealPerson" /></td>
								<td><input type="text" loxiaType="input"
									name="relationInvestList.remark" /></td>
							</tr>
						</tbody>
					</table>
				</div>

				<!--5.企业贷款情况-->
				<div class="divBgColor">
					<fmt:message key="label.company.debt.title" bundle="${lang}" />
				</div>
				<div id="edittable1" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="tabDebt">
						<thead>
							<tr>
								<th nowrap="nowrap"><input type="checkbox" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.debt.bank" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.debt.balance" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.debt.way" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.debt.date" bundle="${lang}" /></th>
								<th nowrap="nowrap"><fmt:message
										key="label.company.debt.lastDate" bundle="${lang}" /></th>
							</tr>
						</thead>
						<tbody id="debtInfo">
							<c:forEach items="${companyInves.loanCardList}" var="dis"
								varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="loanCardList.creditorBank" value="${dis.creditorBank }"
										mandatory="true" /></td>
									<td><input type="text" loxiaType="number"
										name="loanCardList.loanBalance" value="${dis.loanBalance }" /></td>
									<td><input type="text" loxiaType="input"
										name="loanCardList.loanWay" value="${dis.loanWay }" /></td>
									<td><input type="text" loxiaType="date"
										name="loanCardList.loanBegin" value="${dis.loanBegin }" /></td>
									<td><input type="text" loxiaType="date"
										name="loanCardList.loanEnd" value="${dis.loanEnd }" /></td>
								</tr>
							</c:forEach>
						</tbody>

						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="loanCardList.creditorBank" mandatory="true" /></td>
								<td><input type="text" loxiaType="number"
									name="loanCardList.loanBalance" /></td>
								<td><input type="text" loxiaType="input"
									name="loanCardList.loanWay" /></td>
								<td><input type="text" loxiaType="date"
									name="loanCardList.loanBegin" /></td>
								<td><input type="text" loxiaType="date"
									name="loanCardList.loanEnd" /></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">
						提交</button>
					<button type="button" loxiaType="button" class="confirm"
						id="saveOn">
						<fmt:message key="label.research.add.submit_button2"
							bundle="${lang}" />
					</button>

				</div>
			</form>

		</div>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-2"></div>
	</div>
	</div>
</body>
</html>
