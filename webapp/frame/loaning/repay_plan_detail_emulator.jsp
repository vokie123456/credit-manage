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
	<div class="divBgColor">
		<label id="repayPlanLabel"><fmt:message
				key="label.loaning.repayPlanDetail" bundle="${lang}" /></label>
	</div>
	<c:if test="${0 == num}">
		<div style="text-align: center;">
			<fmt:message key="label.repay.plan.null" bundle="${lang}" />
		</div>
	</c:if>

	<c:forEach items="${plans }" var="pl" varStatus="cnt">

		<div id="repayPlanDiv${cnt.index }">
			<label class="paddingwidthLeft10 contentfont contentBold">第 ${cnt.count }期</label>
			<!-- 还款计划明细 -->
			<table  cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom" id="repayTab${cnt.index }">
				<tr class="tabcustomTr">
					<th><fmt:message
							key="label.loaning.principalRepay" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.loaning.interestRepay" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.loaning.principal_interest" bundle="${lang}" /></th>
					<th><fmt:message
							key="label.loaning.principal_left" bundle="${lang}" /></th>
					<th><fmt:message key="label.loaning.repayDate"
							bundle="${lang}" /></th>
					<th class="tabBorderRight"><fmt:message key="label.loaning.remindDate"
							bundle="${lang}" /></th>
				</tr>
				<tbody id="repayBody${cnt.index }">

					<tr id="repayTr${cnt.index }">
						<td>${pl.principalRepay }</td>

						<td>${pl.interestRepay }</td>

						<td>${pl.principalInterest }</td>

						<td>${pl.principalLeft }</td>

						<td><fmt:formatDate value="${pl.repayDate }" type="both"
								pattern="yyyy-MM-dd" /></td>

						<td class="tabBorderRight"><fmt:formatDate value="${pl.remindDate }" type="both"
								pattern="yyyy-MM-dd" /></td>
					</tr>
				</tbody>
			</table>

			<!-- 还款计划中的费用 -->
			<table class="tabcustomPeo" style=" border-top: 0px;width:30%" cellpadding="0" cellspacing="0"  	id="repayCostTab${cnt.index }">
				<c:if test="${cnt.first}">
					<c:forEach items="${pl.firstCost }" var="oc" varStatus="lp">
						<tr>
							<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
							<td class="contentfont contentBold tabBorderRight textalignCenter" ><bizoptionname:showname biztypekey="1090" value="${oc.costCode }" />：</td>
							<td class="contentfont contentBold tabBorderRight" style="text-align: left;">${oc.cost }</td>
						</tr>
					</c:forEach>
				</c:if>  

				<c:if test="${!cnt.first}">
					<c:forEach items="${pl.everyCost }" var="oc" varStatus="lp">
						<tr>
							<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
							<td class="contentfont contentBold tabBorderRight textalignCenter" ><bizoptionname:showname biztypekey="1090" value="${oc.costCode }" />：</td>
							<td class="contentfont contentBold tabBorderRight" style="text-align: left;">${oc.cost }</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>
		</br>
	</c:forEach>
</div>