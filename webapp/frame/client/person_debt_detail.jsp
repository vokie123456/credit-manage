<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_debt_detail.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">1.贷款情况</div>
	<div id="editTabPersonDebtLoan" loxiaType="edittable">
		<table append="1" width="100%" id="tabPersonDebtLoan"
			style="text-align: center;">
			<thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th>贷款银行</th>
					<th>银行卡号</th>
					<th>贷款金额</th>
					<th>贷款期限</th>
					<th>贷款性质</th>
					<th>贷款余额</th>
					<th>还款额</th>
					<th>最高逾期次数</th>
					<th>累计逾期次数</th>
					<th>当前逾期金额</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>合计</td>
					<td>-</td>
					<td>-</td>
					<td id="loanMoney">￥0.00</td>
					<td>-</td>
					<td>-</td>
					<td id="loanBalance">￥0.00</td>
					<td id="repayMonth">￥0.00</td>
					<td id="overdueMax">0</td>
					<td id="overdueSum">0</td>
					<td id="overdueMoney">￥0.00</td>
				</tr>
			</tfoot>
			<tbody id="personDebtLoanBody">
				<c:forEach items="${personDebtLoans}" var="loan" varStatus="loop">
					<tr>
						<td><input type="checkbox" /></td>
						<td>${loan.loanBank }</td>
						<td>${loan.bankCard }</td>
						<td id="ploanMoney">${loan.loanMoney }</td>
						<td><!-- ${loan.loanPeriod } -->
							<fmt:formatDate value="${loan.loanStartDate }" type="both"
									pattern="yyyy年MM月dd日" />
							    -
							<fmt:formatDate value="${loan.loanEndDate}" type="both"
									pattern="yyyy年MM月dd日" />
						</td>
						<td>${loan.loanType }</td>
						<td id="ploanBalance">${loan.loanBalance }</td>
						<td id="prepayMonth">${loan.repayMonth }</td>
						<td id="poverdueMax">${loan.overdueMax }</td>
						<td id="poverdueSum">${loan.overdueSum }</td>
						<td id="poverdueMoney">${loan.overdueMoney }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tbody></tbody>
		</table>
	</div>
	<br />
	<div class="divBgColor">2.信用卡情况</div>
	<div id="editTabPersonDebtCredit" loxiaType="edittable">
		<table append="1" width="100%" id="tabPersonDebtCredit"
			style="text-align: center;">
			<thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th>发卡银行</th>
					<th>信用卡号</th>
					<th>发卡年限</th>
					<th>银行额度</th>
					<th>共享额度</th>
					<th>还款额</th>
					<th>透支余额</th>
					<th>最高逾期次数</th>
					<th>累计逾期次数</th>
					<th>当前逾期金额</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td></td>
					<td>合计</td>
					<td>-</td>
					<td>-</td>
					<td id="creditBankMoney">￥0.00</td>
					<td id="creditShareMoney">￥0.00</td>
					<td id="creditRepayMust">￥0.00</td>
					<td id="creditOverdraftBalance">￥0.00</td>
					<td id="creditOverdueMax">0</td>
					<td id="creditOverdueSum">0</td>
					<td id="creditOverdueMoney">￥0.00</td>
				</tr>
			</tfoot>
			<tbody id="personDebtCreditBody">
				<c:forEach items="${personDebtCredits}" var="credit"
					varStatus="loop">
					<tr>
						<td><input type="checkbox" /></td>
						<td>${credit.creditBank }</td>
						<td>${credit.bankCard }</td>
						<td>${credit.yearStart }年${credit.monthStart }月-${credit.yearEnd }年${credit.monthEnd }月</td>
						<td id="pcBankMoney">${credit.bankMoney }</td>
						<td id="pcShareMoney">${credit.shareMoney }</td>
						<td id="pcRepayMust">${credit.repayMust }</td>
						<td id="pcOverdraftBalance">${credit.overdraftBalance }</td>
						<td id="pcoverdueMax">${credit.overdueMax }</td>
						<td id="pcoverdueSum">${credit.overdueSum }</td>
						<td id="pcoverdueMoney">${credit.overdueMoney }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tbody></tbody>
		</table>
	</div>
</body>
</html>
