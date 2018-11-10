<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_debt_entry.js'/>"></script>
<style type="text/css">
	input,.ui-loxia-number,td{
		text-align: center;
	}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="debtForm" method="post">
		<div class="divBgColor">1.贷款情况</div>
		<div id="editTabPersonDebtLoan" loxiaType="edittable">
			<table class="tabCenter" operation="add,delete" append="1" width="100%"
				id="tabPersonDebtLoan">
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
						<td >-</td>
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
							<td><input type="text" loxiaType="input"
								name="personDebtLoans.loanBank" value="${loan.loanBank }" /><input
								type="hidden" id="loanDebtId" name="personDebtLoans.debtId"
								value="${loan.debtId }" /></td>
							<td><input type="text" loxiaType="input"
								name="personDebtLoans.bankCard" value="${loan.bankCard }" /></td>
							<td><input type="text" loxiaType="number"
								name="personDebtLoans.loanMoney" value="${loan.loanMoney }" checkmaster="computeLoanMoney"/></td>
							<td style="width: 15%"><!-- <input type="text" loxiaType="number"
								name="personDebtLoans.loanPeriod" value="${loan.loanPeriod }" /> -->
								<input  style="width: 90px"
                                   name="personDebtLoans.loanStartDate" loxiaType="date"
                                   trim="true" mandatory="true" 
                                   value="<fmt:formatDate value='${loan.loanStartDate}' pattern='yyyy-MM-dd' />"/>
                                   <!-- checkmaster="setMinDate"--> 
                                   -
                                   <input  style="width: 90px"
                                   name="personDebtLoans.loanEndDate"
                                   loxiaType="date" trim="true" mandatory="true" 
                                   value="<fmt:formatDate value='${loan.loanEndDate}' pattern='yyyy-MM-dd' />"/>
                                   <!-- checkmaster="setMaxDate" --> 
								</td>
							<td><input type="text" loxiaType="input"
								name="personDebtLoans.loanType" value="${loan.loanType }" /></td>
							<td><input type="text" loxiaType="number"
								name="personDebtLoans.loanBalance" value="${loan.loanBalance }" checkmaster="computeLoanBalance"/></td>
							<td><input type="text" loxiaType="number"
								name="personDebtLoans.repayMonth" value="${loan.repayMonth }" checkmaster="computeRepayMonth"/></td>
							<td><input type="text" loxiaType="number"
								name="personDebtLoans.overdueMax" value="${loan.overdueMax }" checkmaster="computeOverdueMax"/></td>
							<td><input type="text" loxiaType="number"
								name="personDebtLoans.overdueSum" value="${loan.overdueSum }" checkmaster="computeOverdueSum"/></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="personDebtLoans.overdueMoney"
								value="${loan.overdueMoney }" checkmaster="computeOverdueMoney"/></td>
						</tr>
					</c:forEach>
				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td><input type="text" loxiaType="input"
							name="personDebtLoans.loanBank" /></td>
						<td><input type="text" loxiaType="input"
							name="personDebtLoans.bankCard" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtLoans.loanMoney" checkmaster="computeLoanMoney" /></td>
						<td ><!-- <input type="text" loxiaType="number"
							name="personDebtLoans.loanPeriod" /> -->
							<input  style="width: 90px"
                                   name="personDebtLoans.loanStartDate" loxiaType="date"
                                   trim="true" mandatory="true"/> <!-- checkmaster="setMinDate" -->
                                   -
                                   <input  style="width: 90px"
                                    name="personDebtLoans.loanEndDate"
                                   loxiaType="date" trim="true" mandatory="true"/> <!-- checkmaster="setMaxDate"-->
							</td>
						<td><input type="text" loxiaType="input"
							name="personDebtLoans.loanType" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtLoans.loanBalance"
							checkmaster="computeLoanBalance" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtLoans.repayMonth" checkmaster="computeRepayMonth" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtLoans.overdueMax" checkmaster="computeOverdueMax" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtLoans.overdueSum" checkmaster="computeOverdueSum" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="personDebtLoans.overdueMoney"
							checkmaster="computeOverdueMoney" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<br />
		<div class="divBgColor">2.信用卡情况</div>
		<div id="editTabPersonDebtCredit" loxiaType="edittable">
			<table class="tabCenter" operation="add,delete" append="1" width="100%"
				id="tabPersonDebtCredit">
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
							<td><input type="text" loxiaType="input"
								name="personDebtCredits.creditBank"
								value="${credit.creditBank }" /><input type="hidden"
								id="creditDebtId" name="personDebtCredits.debtId"
								value="${credit.debtId }" /></td>
							<td><input type="text" loxiaType="input"
								name="personDebtCredits.bankCard" value="${credit.bankCard }" /></td>
							<td><input type="text" loxiaType="number" style="width: 15%"
								name="personDebtCredits.yearStart" value="${credit.yearStart }" maxlength="4"/>年<input
								loxiaType="number" style="width: 15%"
								name="personDebtCredits.monthStart"
								value="${credit.monthStart }" maxlength="2"/>月~<input type="text"
								loxiaType="number" style="width: 15%"
								name="personDebtCredits.yearEnd" value="${credit.yearEnd }" maxlength="4"/>年<input
								loxiaType="number" style="width: 15%"
								name="personDebtCredits.monthEnd" value="${credit.monthEnd }" maxlength="2"/>月</td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="personDebtCredits.bankMoney" value="${credit.bankMoney }" 
								checkmaster="computeCreditBankMoney"/></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="personDebtCredits.shareMoney"
								value="${credit.shareMoney }" checkmaster="computeCreditShareMoney"/></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="personDebtCredits.repayMust" value="${credit.repayMust }" 
								checkmaster="computeCreditRepayMust"/></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="personDebtCredits.overdraftBalance"
								value="${credit.overdraftBalance }" checkmaster="computeCreditOverdraftBalance"/></td>
							<td><input type="text" loxiaType="number"
								name="personDebtCredits.overdueMax"
								value="${credit.overdueMax }" checkmaster="computeCreditOverdueMax"/></td>
							<td><input type="text" loxiaType="number"
								name="personDebtCredits.overdueSum"
								value="${credit.overdueSum }" checkmaster="computeCreditOverdueSum"/></td>
							<td><input type="text" loxiaType="number" decimal="2"
								name="personDebtCredits.overdueMoney"
								value="${credit.overdueMoney }" checkmaster="computeCreditOverdueMoney"/></td>
						</tr>
					</c:forEach>
				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox" /></td>
						<td><input type="text" loxiaType="input"
							name="personDebtCredits.creditBank" /></td>
						<td><input type="text" loxiaType="input"
							name="personDebtCredits.bankCard" /></td>
						<td><input type="text" loxiaType="number" style="width: 15%"
							name="personDebtCredits.yearStart" maxlength="4"/>年<input loxiaType="number"
							style="width: 15%" name="personDebtCredits.monthStart" maxlength="2"/>月~<input
							type="text" loxiaType="number" style="width: 15%"
							name="personDebtCredits.yearEnd" maxlength="4"/>年<input loxiaType="number"
							style="width: 15%" name="personDebtCredits.monthEnd" maxlength="2"/>月</td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="personDebtCredits.bankMoney" 
							checkmaster="computeCreditBankMoney" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="personDebtCredits.shareMoney" 
							checkmaster="computeCreditShareMoney" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="personDebtCredits.repayMust" 
							checkmaster="computeCreditRepayMust" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="personDebtCredits.overdraftBalance" 
							checkmaster="computeCreditOverdraftBalance" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtCredits.overdueMax"
							checkmaster="computeCreditOverdueMax" /></td>
						<td><input type="text" loxiaType="number"
							name="personDebtCredits.overdueSum"
							checkmaster="computeCreditOverdueSum" /></td>
						<td><input type="text" loxiaType="number" decimal="2"
							name="personDebtCredits.overdueMoney"
							checkmaster="computeCreditOverdueMoney" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitForm">保存</button>
		</div>
	</form>
</body>
</html>
