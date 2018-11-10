<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_edit_custom.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="repayPlanForm">
		<div class="divBgColor">
			<fmt:message key="label.loaning.repayPlanDetail" bundle="${lang}" />
		</div>

		<!-- 只用到 resultSize，trIdNum，planType，projectId-->
		<input type="hidden" name="resultSize" id="resultSize"
			value="${resultSize}" /> <input type="hidden" name="addCount"
			id="addCount" value="${resultSize }" /> <input type="hidden"
			name="projectId" id="projectId" value="${projectId }" /> <input
			type="hidden" id="planType" value="${planType }" /> <input
			type="hidden" id="countPeriod" value="${resultSize}" /> <input
			type="hidden" id="trIdNum" value="${idNum}" />

		<c:forEach items="${plans }" var="pl" varStatus="cnt">

			<div id="repayPlanDiv${cnt.index }">
				<div class="class">
					<label id="countLabel">第${cnt.count }期</label>
					<td width="90%" align="right"><input type="button"
						onclick="deleteRepayPlan(${cnt.index })"
						style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
						title="删除" /></td>
				</div>

				<input type="hidden" name="repayId" value="${pl.repayId }" />

				<!-- 还款计划明细 -->
				<table width="100%" border="1" append="1" id="repayTab${cnt.index }">
					<tr>
						<th class="title"><fmt:message
								key="label.loaning.principalRepay" bundle="${lang}" /></th>
						<th class="title"><fmt:message
								key="label.loaning.interestRepay" bundle="${lang}" /></th>
						<th class="title"><fmt:message
								key="label.loaning.principal_interest" bundle="${lang}" /></th>
						<th class="title"><fmt:message
								key="label.loaning.principal_left" bundle="${lang}" /></th>
						<th class="title"><fmt:message key="label.loaning.repayDate"
								bundle="${lang}" /></th>
						<th class="title"><fmt:message key="label.loaning.remindDate"
								bundle="${lang}" /></th>
					</tr>

					<tbody id="repayBody${cnt.index }">
						<tr id="repayTr${cnt.index }">
							<input type="hidden" name="repayDetailVoList.serials"
								value="${pl.serials }" />
							<td><input loxiaType="number"
								name="repayDetailVoList.principalRepay"
								value="${pl.principalRepay }" decimal="2"
								onchange="countInterest(${cnt.index })" /></td>

							<td><input loxiaType="number"
								id="interestRepay${cnt.index }"
								name="repayDetailVoList.interestRepay"
								value="${pl.interestRepay }" decimal="2" /></td>

							<td><input loxiaType="number"
								name="repayDetailVoList.principalInterest"
								value="${pl.principalInterest }" decimal="2" /></td>

							<td><input loxiaType="number"
								name="repayDetailVoList.principalLeft"
								value="${pl.principalLeft }" readOnly="true" decimal="2" /></td>

							<td><input type="text" loxiaType="date"
								name="repayDetailVoList.repayDate" value="${pl.repayDate }" /></td>

							<td><input type="text" loxiaType="date"
								name="repayDetailVoList.remindDate" value="${pl.remindDate }" /></td>
						</tr>
					</tbody>
				</table>


				<!-- 还款计划中的费用 -->
				<table border="1" append="1" background-color="#99CCFF"
					id="repayCostTab${cnt.index }">

					<c:if test="${cnt.first}">
						<c:forEach items="${pl.firstCost }" var="oc" varStatus="lp">
							<tr>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" /></td>
								<!-- 隐藏部分费用字段 -->
								<input type="hidden" name="costTitle" value="${oc.costTitle }" />
								<input type="hidden" name="costCode" value="${oc.costCode }" />

								<td><input type="text" name="cost" value="${oc.cost }"
									id="" /></td>
							</tr>
						</c:forEach>
					</c:if>

					<c:if test="${!cnt.first}">
						<c:forEach items="${pl.everyCost }" var="oc" varStatus="lp">
							<tr>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" /></td>

								<!-- 隐藏部分费用字段 -->
								<input type="hidden" name="costTitle" value="${oc.costTitle }" />
								<input type="hidden" name="costCode" value="${oc.costCode }" />

								<td><input type="text" name="cost" value="${oc.cost }"
									id="" /></td>

							</tr>
						</c:forEach>
					</c:if>
				</table>

			</div>
			<br />
		</c:forEach>

		<!-- 手动添加还款计划 -->
		<div id="repayPlanDivs"></div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addRepayPlan">添加还款计划</button>
		</div>
	</form>

	<div class="buttonlist buttonDivWidth" id="RepayEditDiv">
		<button type="button" loxiaType="button" class="confirm hidden1"
			title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
			id="saveRepay">
			<fmt:message key="button.confirm" bundle="${lang}" />
		</button>
	</div>

</body>