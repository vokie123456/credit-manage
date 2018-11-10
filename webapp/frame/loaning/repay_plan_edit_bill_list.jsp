<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_edit_bill_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
	
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="repayPlanListDiv">
	
		<div class="divBgColor">
			<fmt:message key="label.repay.bill.edit.list.title" bundle="${lang}" />
		</div>
		<form>
			<input type="hidden" id="bill_projectId" value="${projectId }" />
			<div>
				<table class="textalignCenter tabcustom"  cellpadding="0" cellspacing="0" width="100%">
				<tr class="tabcustomTr">
					<th>放款批次</th>
					<th><fmt:message key="label.repay.bill.edit.list.repayPlanPeriod"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.repay.bill.edit.list.billedPeriod"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.repay.bill.edit.list.lendTime"
							bundle="${lang}" /></th>		
					<th><fmt:message
							key="label.repay.bill.edit.list.lendMoney" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.repay.bill.edit.list.paidMoney" bundle="${lang}" /></th>
					<th>自然清贷日</th>
					<th>实际清贷日</th>
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
					<th class="tabBorderRight"><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
						
					  
					<th class="tabBorderRight">修改还款计划</th>
			</tr>

					<c:forEach items="${rplist}" var="vo"
						varStatus="loop">
						<tr>
							<td >${loop.count }<input type="hidden" id="lendId${loop.index }" value="${vo.lendId }" /></td>
							<td >${vo.periods }</td>
							<td >${vo.billedPeriods }</td>
							<td >${vo.lendTime }</td>
							<td >${vo.lendMoney }</td>
							<td >${vo.paidMoney }</td>
							<td >${vo.natureDate }</td>
							<td ><fmt:formatDate value="${vo.finishDate }"
					              type="both" pattern="yyyy-MM-dd" /></td>
							<td ><label style="color: blue; text-decoration: underline;"
								onclick="showRepayPlans(${loop.index})"> <fmt:message
										key="label.assessCar.edit.collateral.detail" bundle="${lang}" />
							</label>
							</td>
							
							<td >
								<label style="color: blue; text-decoration: underline;"
									onclick="printRepayPlans(${loop.index})"> 打印
								</label>
							</td>
							
							<td>
							<label style="color: blue;"
								onclick="editInte(${vo.lendId })"> 利率|&nbsp;
							</label>
							
							<label style="color: blue;"
								onclick="editRepayDay(${vo.lendId })"> 每月还款日|&nbsp;
							</label>
							
							<label style="color: blue;"
								onclick="addItem(${vo.lendId })"> 增添费用|&nbsp;
							</label>
							
							<label style="color: blue;"
								onclick="deleteItem(${vo.lendId })"> 删除费用
							</label>
							
							</td>
							
						</tr>
					</c:forEach>
				</table>
			</div>

		</form>
	</div>
	<div id="repayPlanDetailDiv"></div>
</body>

<div id="dialog-chgrole"></div>
</html>
