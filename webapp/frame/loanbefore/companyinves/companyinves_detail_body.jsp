<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.label {
	text-align: left;
}
</style>

<div id="formdetail">
		<div>
			<input type="hidden" id="projectId" value="${projectId }" />
			<input type="hidden" id="applyId" value="${applyId }" />
		</div>
		<form id="companyInvesForm" method="post">

			<!-- 1.总量指标 -->
			<div class="title" style="text-align:left;" >
				<fmt:message key="label.company.inves.totalmark" bundle="${lang}" />
			</div>
			<table id="totalMark" border="1" cellpadding="0" cellspacing="0"
				width="100%">
				<tr>
					<th colspan="2"><fmt:message key="label.company.inves.project"
							bundle="${lang}" /></th>
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
					<td class="label">${FinancialIndex1.indexUnit }年</td>
					<td>${FinancialIndex1.assetAll }</td>
					<td>${FinancialIndex1.assetCurrent }</td>
					<td>${FinancialIndex1.debtAll }</td>
					<td>${FinancialIndex1.debtCurrent }</td>
					<td>${FinancialIndex1.rightOwner }</td>
					<td>${FinancialIndex1.capitalHold }</td>
					<td>${FinancialIndex1.bankLoans }</td>
					<td>${FinancialIndex1.bankShort }</td>
					<td>${FinancialIndex1.incomeSale }</td>
					<td>${FinancialIndex1.incomeMajor }</td>
					<td>${FinancialIndex1.profitAll }</td>
					<td>${FinancialIndex1.financialCost }</td>
					<td>${FinancialIndex1.interestCost }</td>
				</tr>
				<tr>
					<td class="label">${FinancialIndex2.indexUnit }年</td>
					<td>${FinancialIndex2.assetAll }</td>
					<td>${FinancialIndex2.assetCurrent }</td>
					<td>${FinancialIndex2.debtAll }</td>
					<td>${FinancialIndex2.debtCurrent }</td>
					<td>${FinancialIndex2.rightOwner }</td>
					<td>${FinancialIndex2.capitalHold }</td>
					<td>${FinancialIndex2.bankLoans }</td>
					<td>${FinancialIndex2.bankShort }</td>
					<td>${FinancialIndex2.incomeSale }</td>
					<td>${FinancialIndex2.incomeMajor }</td>
					<td>${FinancialIndex2.profitAll }</td>
					<td>${FinancialIndex2.financialCost }</td>
					<td>${FinancialIndex2.interestCost }</td>
				</tr>
				<tr>
					<td class="label">${FinancialIndex3.indexUnit }年</td>
					<td>${FinancialIndex3.assetAll }</td>
					<td>${FinancialIndex3.assetCurrent }</td>
					<td>${FinancialIndex3.debtAll }</td>
					<td>${FinancialIndex3.debtCurrent }</td>
					<td>${FinancialIndex3.rightOwner }</td>
					<td>${FinancialIndex3.capitalHold }</td>
					<td>${FinancialIndex3.bankLoans }</td>
					<td>${FinancialIndex3.bankShort }</td>
					<td>${FinancialIndex3.incomeSale }</td>
					<td>${FinancialIndex3.incomeMajor }</td>
					<td>${FinancialIndex3.profitAll }</td>
					<td>${FinancialIndex3.financialCost }</td>
					<td>${FinancialIndex3.interestCost }</td>
				</tr>

				<tr>
					<td class="label" rowspan="3"><fmt:message
							key="label.company.inves.compare" bundle="${lang}" /></td>
					<td class="label">本年1-${FinancialIndex4.indexUnit }月</td>
					<td>${FinancialIndex4.assetAll }</td>
					<td>${FinancialIndex4.assetCurrent }</td>
					<td>${FinancialIndex4.debtAll }</td>
					<td>${FinancialIndex4.debtCurrent }</td>
					<td>${FinancialIndex4.rightOwner }</td>
					<td>${FinancialIndex4.capitalHold }</td>
					<td>${FinancialIndex4.bankLoans }</td>
					<td>${FinancialIndex4.bankShort }</td>
					<td>${FinancialIndex4.incomeSale }</td>
					<td>${FinancialIndex4.incomeMajor }</td>
					<td>${FinancialIndex4.profitAll }</td>
					<td>${FinancialIndex4.financialCost }</td>
					<td>${FinancialIndex4.interestCost }</td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.company.inves.lastyear" bundle="${lang}" /></td>
					<td>${FinancialIndex5.assetAll }</td>
					<td>${FinancialIndex5.assetCurrent }</td>
					<td>${FinancialIndex5.debtAll }</td>
					<td>${FinancialIndex5.debtCurrent }</td>
					<td>${FinancialIndex5.rightOwner }</td>
					<td>${FinancialIndex5.capitalHold }</td>
					<td>${FinancialIndex5.bankLoans }</td>
					<td>${FinancialIndex5.bankShort }</td>
					<td>${FinancialIndex5.incomeSale }</td>
					<td>${FinancialIndex5.incomeMajor }</td>
					<td>${FinancialIndex5.profitAll }</td>
					<td>${FinancialIndex5.financialCost }</td>
					<td>${FinancialIndex5.interestCost }</td>
				</tr>
				<tr>
					<td class="label">"(+、-)%"</td>
					<td>${FinancialIndex6.assetAll }</td>
					<td>${FinancialIndex6.assetCurrent }</td>
					<td>${FinancialIndex6.debtAll }</td>
					<td>${FinancialIndex6.debtCurrent }</td>
					<td>${FinancialIndex6.rightOwner }</td>
					<td>${FinancialIndex6.capitalHold }</td>
					<td>${FinancialIndex6.bankLoans }</td>
					<td>${FinancialIndex6.bankShort }</td>
					<td>${FinancialIndex6.incomeSale }</td>
					<td>${FinancialIndex6.incomeMajor }</td>
					<td>${FinancialIndex6.profitAll }</td>
					<td>${FinancialIndex6.financialCost }</td>
					<td>${FinancialIndex6.interestCost }</td>
				</tr>
				</tbody>

			</table>

			<!-- 2.营运指标 -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.serviceMark" bundle="${lang}" />
			</div>
			<table id="serviceMark" border="1" cellpadding="0" cellspacing="0"
				width="100%">
				<tr>
					<th colspan="2"><fmt:message key="label.company.inves.project"
							bundle="${lang}" /></th>
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
					<td class="label">${FinancialIndex1.indexUnit }年</td>
					<td>${FinancialIndex1.avgReceivables }</td>
					<td>${FinancialIndex1.avgInventory }</td>
					<td>${FinancialIndex1.avgWorking }</td>
					<td>${FinancialIndex1.turnoverReceivables }</td>
					<td>${FinancialIndex1.turnoverInventory }</td>
					<td>${FinancialIndex1.turnoverWorking }</td>
				</tr>

				<tr>
					<td class="label">${FinancialIndex2.indexUnit }年</td>
					<td>${FinancialIndex2.avgReceivables }</td>
					<td>${FinancialIndex2.avgInventory }</td>
					<td>${FinancialIndex2.avgWorking }</td>
					<td>${FinancialIndex2.turnoverReceivables }</td>
					<td>${FinancialIndex2.turnoverInventory }</td>
					<td>${FinancialIndex2.turnoverWorking }</td>
				</tr>

				<tr>
					<td class="label">${FinancialIndex3.indexUnit }年</td>
					<td>${FinancialIndex3.avgReceivables }</td>
					<td>${FinancialIndex3.avgInventory }</td>
					<td>${FinancialIndex3.avgWorking }</td>
					<td>${FinancialIndex3.turnoverReceivables }</td>
					<td>${FinancialIndex3.turnoverInventory }</td>
					<td>${FinancialIndex3.turnoverWorking }</td>
				</tr>

				<!-- 同期对比 -->
				<tr>
					<td class="label" rowspan="3"><fmt:message
							key="label.company.inves.compare" bundle="${lang}" /></td>
					<td class="label">本年1-${FinancialIndex4.indexUnit }月</td>
					<td>${FinancialIndex4.avgReceivables }</td>
					<td>${FinancialIndex4.avgInventory }</td>
					<td>${FinancialIndex4.avgWorking }</td>
					<td>${FinancialIndex4.turnoverReceivables }</td>
					<td>${FinancialIndex4.turnoverInventory }</td>
					<td>${FinancialIndex4.turnoverWorking }</td>
				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.company.inves.lastyear" bundle="${lang}" /></td>
					<td>${FinancialIndex5.avgReceivables }</td>
					<td>${FinancialIndex5.avgInventory }</td>
					<td>${FinancialIndex5.avgWorking }</td>
					<td>${FinancialIndex5.turnoverReceivables }</td>
					<td>${FinancialIndex5.turnoverInventory }</td>
					<td>${FinancialIndex5.turnoverWorking }</td>
				</tr>

				<tr>
					<td class="label">"(+、-)%"</td>
					<td>${FinancialIndex6.avgReceivables }</td>
					<td>${FinancialIndex6.avgInventory }</td>
					<td>${FinancialIndex6.avgWorking }</td>
					<td>${FinancialIndex6.turnoverReceivables }</td>
					<td>${FinancialIndex6.turnoverInventory }</td>
					<td>${FinancialIndex6.turnoverWorking }</td>
				</tr>
				</tbody>

			</table>

			<!-- 3.偿债指标 -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.payDebtMark" bundle="${lang}" />
			</div>
			<table id="payDebtMark" border="1" cellpadding="0" cellspacing="0"
				width="100%">
				<tr>
					<th colspan="2"><fmt:message key="label.company.inves.project"
							bundle="${lang}" /></th>
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
					<td class="label">${FinancialIndex1.indexUnit }年</td>
					<td>${FinancialIndex1.rateDebt }</td>
					<td>${FinancialIndex1.rateCurrent }</td>
					<td>${FinancialIndex1.rateQuick }</td>
					<td>${FinancialIndex1.rateRight }</td>
					<td>${FinancialIndex1.interestTimes }</td>
				</tr>

				<tr>
					<td class="label">${FinancialIndex2.indexUnit }年</td>
					<td>${FinancialIndex2.rateDebt }</td>
					<td>${FinancialIndex2.rateCurrent }</td>
					<td>${FinancialIndex2.rateQuick }</td>
					<td>${FinancialIndex2.rateRight }</td>
					<td>${FinancialIndex2.interestTimes }</td>
				</tr>

				<tr>
					<td class="label">${FinancialIndex3.indexUnit }年</td>
					<td>${FinancialIndex3.rateDebt }</td>
					<td>${FinancialIndex3.rateCurrent }</td>
					<td>${FinancialIndex3.rateQuick }</td>
					<td>${FinancialIndex3.rateRight }</td>
					<td>${FinancialIndex3.interestTimes }</td>
				</tr>

				<!-- 同期对比 -->
				<tr>
					<td class="label" rowspan="3"><fmt:message
							key="label.company.inves.compare" bundle="${lang}" /></td>
					<td class="label">本年1-${FinancialIndex4.indexUnit }月</td>
					<td>${FinancialIndex4.rateDebt }</td>
					<td>${FinancialIndex4.rateCurrent }</td>
					<td>${FinancialIndex4.rateQuick }</td>
					<td>${FinancialIndex4.rateRight }</td>
					<td>${FinancialIndex4.interestTimes }</td>
				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.company.inves.lastyear" bundle="${lang}" /></td>
					<td>${FinancialIndex5.rateDebt }</td>
					<td>${FinancialIndex5.rateCurrent }</td>
					<td>${FinancialIndex5.rateQuick }</td>
					<td>${FinancialIndex5.rateRight }</td>
					<td>${FinancialIndex5.interestTimes }</td>
				</tr>

				<tr>
					<td class="label">"(+、-)%"</td>
					<td>${FinancialIndex6.rateDebt }</td>
					<td>${FinancialIndex6.rateCurrent }</td>
					<td>${FinancialIndex6.rateQuick }</td>
					<td>${FinancialIndex6.rateRight }</td>
					<td>${FinancialIndex6.interestTimes }</td>
				</tr>
				</tbody>

			</table>

			<!-- 4.成长指标 -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.upMark" bundle="${lang}" />
			</div>
			<table id="upMark" border="1" cellpadding="0" cellspacing="0"
				width="100%">
				<tr>
					<th colspan="2"><fmt:message key="label.company.inves.project"
							bundle="${lang}" /></th>
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
					<td class="label">${FinancialIndex1.indexUnit }年</td>
					<td>${FinancialIndex1.rateNetvalue }</td>
					<td>${FinancialIndex1.rateSaleprofit }</td>
					<td>${FinancialIndex1.rateSaleIncrease }</td>
					<td>${FinancialIndex1.rateProfitIncrease }</td>
					<td>${FinancialIndex1.rateCapitalIncrease }</td>
				</tr>

				<tr>
					<td class="label">${FinancialIndex2.indexUnit }年</td>
					<td>${FinancialIndex2.rateNetvalue }</td>
					<td>${FinancialIndex2.rateSaleprofit }</td>
					<td>${FinancialIndex2.rateSaleIncrease }</td>
					<td>${FinancialIndex2.rateProfitIncrease }</td>
					<td>${FinancialIndex2.rateCapitalIncrease }</td>
				</tr>

				<tr>
					<td class="label">${FinancialIndex3.indexUnit }年</td>
					<td>${FinancialIndex3.rateNetvalue }</td>
					<td>${FinancialIndex3.rateSaleprofit }</td>
					<td>${FinancialIndex3.rateSaleIncrease }</td>
					<td>${FinancialIndex3.rateProfitIncrease }</td>
					<td>${FinancialIndex3.rateCapitalIncrease }</td>
				</tr>

				<!-- 同期对比 -->
				<tr>
					<td class="label" rowspan="3"><fmt:message
							key="label.company.inves.compare" bundle="${lang}" /></td>
					<td class="label">本年1-${FinancialIndex4.indexUnit }月</td>
					<td>${FinancialIndex4.rateNetvalue }</td>
					<td>${FinancialIndex4.rateSaleprofit }</td>
					<td>${FinancialIndex4.rateSaleIncrease }</td>
					<td>${FinancialIndex4.rateProfitIncrease }</td>
					<td>${FinancialIndex4.rateCapitalIncrease }</td>
				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.company.inves.lastyear" bundle="${lang}" /></td>
					<td>${FinancialIndex5.rateNetvalue }</td>
					<td>${FinancialIndex5.rateSaleprofit }</td>
					<td>${FinancialIndex5.rateSaleIncrease }</td>
					<td>${FinancialIndex5.rateProfitIncrease }</td>
					<td>${FinancialIndex5.rateCapitalIncrease }</td>
				</tr>

				<tr>
					<td class="label">"(+、-)%"</td>
					<td>${FinancialIndex6.rateNetvalue }</td>
					<td>${FinancialIndex6.rateSaleprofit }</td>
					<td>${FinancialIndex6.rateSaleIncrease }</td>
					<td>${FinancialIndex6.rateProfitIncrease }</td>
					<td>${FinancialIndex6.rateCapitalIncrease }</td>
				</tr>
                </tbody>
			</table>

			<!-- 5.现金流量 -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.cashM" bundle="${lang}" />
			</div>
			<table id="cashM" border="1" cellpadding="0" cellspacing="0"
				width="100%">
				<tr>
					<th colspan="2"><fmt:message key="label.company.inves.project"
							bundle="${lang}" /></th>
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
					<td class="label">${FinancialIndex1.indexUnit }</td>
					<td>${FinancialIndex1.cashWorking }</td>
					<td>${FinancialIndex1.cashWorkingInflow }</td>
					<td>${FinancialIndex1.cashInvestment }</td>
					<td>${FinancialIndex1.cashInvestInflow }</td>
					<td>${FinancialIndex1.cashFinancing }</td>
					<td>${FinancialIndex1.cashExchangeRate }</td>
                    <td>${FinancialIndex1.cashNetIncrease }</td>				
				</tr>

				<tr>
					<td class="label">${FinancialIndex2.indexUnit }</td>
					<td>${FinancialIndex2.cashWorking }</td>
					<td>${FinancialIndex2.cashWorkingInflow }</td>
					<td>${FinancialIndex2.cashInvestment }</td>
					<td>${FinancialIndex2.cashInvestInflow }</td>
					<td>${FinancialIndex2.cashFinancing }</td>
					<td>${FinancialIndex2.cashExchangeRate }</td>
                    <td>${FinancialIndex2.cashNetIncrease }</td>	
				</tr>

				<tr>
					<td class="label">${FinancialIndex3.indexUnit }</td>
					<td>${FinancialIndex3.cashWorking }</td>
					<td>${FinancialIndex3.cashWorkingInflow }</td>
					<td>${FinancialIndex3.cashInvestment }</td>
					<td>${FinancialIndex3.cashInvestInflow }</td>
					<td>${FinancialIndex3.cashFinancing }</td>
					<td>${FinancialIndex3.cashExchangeRate }</td>
                    <td>${FinancialIndex3.cashNetIncrease }</td>	
				</tr>

				<!-- 同期对比 -->
				<tr>
					<td class="label" rowspan="3"><fmt:message
							key="label.company.inves.compare" bundle="${lang}" /></td>
					<td class="label">本年1-${FinancialIndex4.indexUnit }月</td>
					<td>${FinancialIndex4.cashWorking }</td>
					<td>${FinancialIndex4.cashWorkingInflow }</td>
					<td>${FinancialIndex4.cashInvestment }</td>
					<td>${FinancialIndex4.cashInvestInflow }</td>
					<td>${FinancialIndex4.cashFinancing }</td>
					<td>${FinancialIndex4.cashExchangeRate }</td>
                    <td>${FinancialIndex4.cashNetIncrease }</td>
				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.company.inves.lastyear" bundle="${lang}" /></td>
					<td>${FinancialIndex5.cashWorking }</td>
					<td>${FinancialIndex5.cashWorkingInflow }</td>
					<td>${FinancialIndex5.cashInvestment }</td>
					<td>${FinancialIndex5.cashInvestInflow }</td>
					<td>${FinancialIndex5.cashFinancing }</td>
					<td>${FinancialIndex5.cashExchangeRate }</td>
                    <td>${FinancialIndex5.cashNetIncrease }</td>
				</tr>

				<tr>
					<td class="label">"(+、-)%"</td>
					<td>${FinancialIndex6.cashWorking }</td>
					<td>${FinancialIndex6.cashWorkingInflow }</td>
					<td>${FinancialIndex6.cashInvestment }</td>
					<td>${FinancialIndex6.cashInvestInflow }</td>
					<td>${FinancialIndex6.cashFinancing }</td>
					<td>${FinancialIndex6.cashExchangeRate }</td>
                    <td>${FinancialIndex6.cashNetIncrease }</td>
				</tr>
                </tbody>
			</table>

			<!-- 6.1年  月前五位应收账款及其它应收款明细 
			     其中用来区别“应收”和“其他应收”两种类别 的标识 flag=1（应收）,2（其他应收）。暂定！
			 -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.cash.title" bundle="${lang}" />
			</div>
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.cashdetail" bundle="${lang}" />
				<input type="hidden" value="1" id="cashdetailFlag"/>
			</div>
			<div>
				<table  border="1" cellpadding="0" cellspacing="0"
				width="100%">
					<thead>
						<tr>

							<th><fmt:message
									key="label.company.inves.departmentName" bundle="${lang}" /></th>
							<th><fmt:message
									key="label.company.inves.cashNum" bundle="${lang}" /></th>
							<th><fmt:message
									key="label.company.inves.accountYear" bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${companyInves.receivablesInfoList}" var="dis" varStatus="loop">
					<tr>
							<td>${dis.workunitName }</td>
							<td>${dis.receivableAmount }</td>
							<td>${dis.remark }</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- 6.2年  月前五位其它应收款明细  -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.inves.cashdetail1" bundle="${lang}" />
				<input type="hidden" value="2" id="cashdetailFlagA"/>
			</div>
			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th nowrap="nowrap"><fmt:message
									key="label.company.inves.departmentName" bundle="${lang}" /></th>
							<th nowrap="nowrap"><fmt:message
									key="label.company.inves.cashNum" bundle="${lang}" /></th>
							<th nowrap="nowrap"><fmt:message
									key="label.company.inves.accountYear" bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody id="cashdetailA">
					<c:forEach items="${companyInves.receivablesInfoListA}" var="dis" varStatus="loop">
					<tr>
							<td>${dis.workunitName }</td>
							<td>${dis.receivableAmount }</td>
							<td>${dis.remark }</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>

			<!-- 企业经营情况  -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.manage.title" bundle="${lang}" />
			</div>
			<!--1.企业主要产品  -->
			<div class="label" style="text-align:left;">
				<fmt:message key="label.company.manage.product" bundle="${lang}" />
			</div>
			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<thead>
						<tr>
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
					<tbody  id="comProductBody">
					<c:forEach items="${companyInves.productMajorList}" var="dis" varStatus="loop">
					<tr>
							<td>${dis.prodName }</td>
							<td>${dis.market }</td>
							<td>
							<bizoptionname:showname biztypekey="1068" value="${dis.technology }" />
							</td>
							<td>${dis.rateChina }</td>
							<td>${dis.rateShanghai }</td>
							<td>${dis.saleLastyear }</td>
							<td>${dis.rateIncome }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>


			<!--2.主要供应商、销售商  -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.supplier" bundle="${lang}" />
				<input type="hidden" value="1" id="mianSupplierFlag"/>
			</div>
			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th colspan="4"><fmt:message key="label.company.marketPlace"
									bundle="${lang}" />:
									<bizoptionname:showname biztypekey="1070" value="${suppliers.marketMajor }" />
						    </th>
						</tr>
						<tr>
							<th nowrap="nowrap"><fmt:message
									key="label.company.supplier.companyName" bundle="${lang}" /></th>
							<th nowrap="nowrap"><fmt:message
									key="label.company.supplier.productName" bundle="${lang}" /></th>
							<th nowrap="nowrap"><fmt:message
									key="label.company.supplier.num" bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${companyInves.supplierList}" var="dis" varStatus="loop">
					<tr>
							<td>${dis.partnerName }</td>
							<td>${dis.merchandise }</td>
							<td>${dis.count }</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>


			<!--3.主要销售商  -->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.seller" bundle="${lang}" />
				<input type="hidden" value="2" id="mianSellerFlag"/>
			</div>
			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th colspan="4"><fmt:message key="label.company.marketPlace"
									bundle="${lang}" />:
									<bizoptionname:showname biztypekey="1070" value="${salers.marketMajor }" />
							</th>
						</tr>
						<tr>
							<th nowrap="nowrap"><fmt:message
									key="label.company.supplier.companyName" bundle="${lang}" /></th>
							<th nowrap="nowrap"><fmt:message
									key="label.company.supplier.productName" bundle="${lang}" /></th>
							<th nowrap="nowrap"><fmt:message
									key="label.company.supplier.num" bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody id="mianSeller">
					<c:forEach items="${companyInves.salerList}" var="dis" varStatus="loop">
					<tr>
							<td>${dis.partnerName }</td>
							<td>${dis.merchandise }</td>
							<td>${dis.count }</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>


			<!--4.关联公司与对外投资明细-->

			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.comDetail" bundle="${lang}" />
			</div>

			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%" >
					<thead>
						<tr>
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
					<c:forEach items="${companyInves.relationInvestList}" var="dis" varStatus="loop">
					<tr>
							<td>${dis.relationName }</td>
							<td>
							<bizoptionname:showname biztypekey="1071" value="${dis.relationType }" />
							</td>
							<td>${dis.investMoney }</td>
							<td>${dis.lealPerson }</td>
							<td>${dis.remark }</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>

			<!--5.企业贷款情况-->
			<div class="title" style="text-align:left;">
				<fmt:message key="label.company.debt.title" bundle="${lang}" />
			</div>
			<div>
				<table border="1" cellpadding="0" cellspacing="0" width="100%">
					<thead>
						<tr>
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
					<c:forEach items="${companyInves.loanCardList}" var="dis" varStatus="loop">
				    <tr>
							<td>${dis.creditorBank }</td>
							<td>${dis.loanBalance }</td>
							<td>${dis.loanWay }</td>
							<td>${dis.loanBegin }</td>
							<td>${dis.loanEnd }</td>
				    </tr>
				    </c:forEach>		
					</tbody>
					   
				</table>
			</div>
		</form>

	<div class="divBgColor">
		<fmt:message key="label.memo.title" bundle="${lang}" />
	</div>
	<table>
		<tr>
			<td class="label"><fmt:message key="label.memo.oper.type"
					bundle="${lang}" /></td>
			<td align="left" width="150">${tlVo.operType}</td>
			<td class="label"><fmt:message key="label.memo.oper.reason"
					bundle="${lang}" /></td>
			<td align="left" width="150">${tlVo.operReason}</td>
			<td class="label"><fmt:message key="label.memo.oper.remark"
					bundle="${lang}" /></td>
			<td align="left" width="150">${tlVo.operReasonRemark}</td>

		</tr>
	</table>

</div>