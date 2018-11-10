<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_edit_bill.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">

	<div class="divBgColor">
		<fmt:message key="label.loaning.repayPlanDetail" bundle="${lang}" />
		<input type="hidden" id="plan_lendId" value="${lendId }" />
	</div>

	<form>
		<c:forEach items="${plans }" var="pl" varStatus="cnt">

			<div id="repayPlanDiv${cnt.index }">
				<div class="paddingwidthLeft10 contentfont contentBold">
					<label id="countLabel">第${cnt.count}期</label>
					<c:if test="${pl.billStatus eq 0 and projectStatus ne 110131 and pl.repayId eq showBillId}">
						<td width="90%" align="right">
									<img  src="<%=request.getContextPath() %>/images/to_bill_record.png" alt="生成账单"  onclick="toBillRecord(${cnt.index })" class="curSor" title="生成账单"/>
						<%-- <input type="button"
							onclick="toBillRecord(${cnt.index })" width="14" height="16"
							style="background:url(<c:url value='/images/to_bill_record.png'/>) no-repeat; "
							title="生成账单" /> --%></td>
					</c:if>
				</div>

				<input type="hidden" id="bill_repayId${cnt.index }"
					value="${pl.repayId }" /> <input type="hidden" id="plan_projectId"
					value="${projectId }" />

				<!-- 还款计划明细 -->

				<table cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom"   id="repayTab${cnt.index }">
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
						<th  class="tabBorderRight"><fmt:message key="label.loaning.remindDate"
								bundle="${lang}" /></th>
					</tr>

					<tbody>
						<tr>

							<td>${pl.principalRepay }</td>

							<td>${pl.interestRepay }</td>

							<td>${pl.principalInterest }</td>

							<td>${pl.principalLeft }</td>

							<td>${pl.repayDate }</td>

							<td class="tabBorderRight">${pl.remindDate }</td>
						</tr>
					</tbody>
				</table>


				<!-- 还款计划中的费用 -->
				<table class="tabcustomPeo" style=" border-top: 0px;width:30%" cellpadding="0" cellspacing="0"  >

					<c:if test="${cnt.first}">
						<c:forEach items="${pl.firstCost }" var="oc" varStatus="lp">
							<tr>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td class="contentfont contentBold tabBorderRight textalignCenter" ><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" />：</td>
								<td class="contentfont contentBold tabBorderRight" style="text-align: left;">${oc.cost }</td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${!cnt.first}">
						<c:forEach items="${pl.everyCost }" var="oc" varStatus="lp">
							<tr>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td class="contentfont contentBold tabBorderRight  textalignCenter" ><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" />：</td>
								<td class="contentfont contentBold tabBorderRight" style="text-align: left;">${oc.cost }</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
				<br />
		</c:forEach>
		<div >
			<button id="operateBack" type="button" loxiaType="button"
				class="confirm">
				<fmt:message key="button.toback" bundle="${lang}" />
			</button>
		</div>
	</form>

</body>