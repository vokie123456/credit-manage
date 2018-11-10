<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>

<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/business_plan_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>

<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="repayPlanListDiv">
	
		 <form>
			<input type="hidden" id="bill_projectId" value="${projectId }" />
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
					<th>利率(%)</th>
					<th>还款方式</th>
					<th><fmt:message
							key="label.repay.bill.edit.list.paidMoney" bundle="${lang}" /></th>
					<th>自然清贷日</th>
					<th>实际清贷日</th>
					<th><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
			</tr>

					<c:forEach items="${rplist}" var="vo"
						varStatus="loop">
						<tr>
							<td >${loop.count }<input type="hidden" id="lendId${loop.index }" value="${vo.lendId }" /></td>
							<td >${vo.periods }</td>
							<td >${vo.billedPeriods }</td>
							<td >${vo.lendTime }</td>
							<td >${vo.lendMoney }</td>
							<td ><label onclick="detailInte(${vo.lendInteActual })">
							      ${vo.lendInte }/<bizoptionname:showname biztypekey="1058" value="${vo.inteUnit }"/>
								</label></td>
							<td ><bizoptionname:showname biztypekey="1091" value="${vo.lendType }"/></td>
							<td >${vo.paidMoney }</td>
							<td >${vo.natureDate }</td>
							<td ><fmt:formatDate value="${vo.finishDate }"
					              type="both" pattern="yyyy-MM-dd" /></td>
							<td ><label style="color: blue; text-decoration: underline;"
								onclick="showRepayPlans(${vo.lendId })"> <fmt:message
										key="label.assessCar.edit.collateral.detail" bundle="${lang}" />
							</label>
							</td>
						</tr>
					</c:forEach>
				</table>

		</form>
	</div>
	<div id="repayPlanDetailDiv"></div>
</body>
<div id="dialog-chgrole"></div>
</html>
