<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_edit.js'/>"></script>
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

		<input type="hidden" name="addCount" id="addCount" value="${count }" />
		<input type="hidden" name="projectId" id="projectId"
			value="${projectId }" />
		<c:forEach items="${plans }" var="pl" varStatus="cnt">

			<div id="repayPlanDiv${cnt.index }">
				<div class="class">第${cnt.count }期</div>
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
					</tr>
					<tbody id="repayBody${cnt.index }">
						<tr id="repayTr${cnt.index }">
						    <input type="hidden" name="repayDetailVoList.serials" value="${pl.serials }"/>
							<td><input loxiaType="number"
								name="repayDetailVoList.principalRepay"
								value="${pl.principalRepay }" decimal="2" /></td>

							<td><input loxiaType="number"
								name="repayDetailVoList.interestRepay"
								value="${pl.interestRepay }" decimal="2" /></td>

							<td><input loxiaType="number"
								name="repayDetailVoList.principalInterest"
								value="${pl.principalInterest }" decimal="2" /></td>

							<td><input loxiaType="number"
								name="repayDetailVoList.principalLeft"
								value="${pl.principalLeft }" readOnly="true" decimal="2" /></td>
						</tr>
					</tbody>
				</table>

				<!-- 还款计划中的费用 -->
				<table border="1" append="1" background-color="#99CCFF"
					id="repayCostTab${cnt.index }">

					<c:if test="${cnt.first}">
						<c:forEach items="${pl.onceCost }" var="oc" varStatus="lp">
							<tr>
								<c:if test="${1 == lp.count}">
									<td id="" class="label" rowspan="${spanN}">费用:</td>
								</c:if>
								<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
								<td><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" /> <input type="hidden"
									name="costTitle" value="${oc.costTitle }" /></td>

								<td><input type="text"
									name="repayDetailVoList.repayCostList.cost" value="${oc.cost }"
									id="${oc.costCode }" /></td>

							</tr>
						</c:forEach>
					</c:if>

					<c:forEach items="${pl.scaleCost }" var="sc" varStatus="sp">
						<tr>
							<c:if
								test="${(not cnt.first or empty pl.onceCost and cnt.first) and sp.first}">
								<td id="" class="label" rowspan="${spanN}">费用:</td>
							</c:if>
							<%-- <td><input name="costTitle" value="${sc.costTitle }" readOnly="true"/></td> --%>
							<td><bizoptionname:showname biztypekey="1090"
									value="${sc.costCode }" /> <input type="hidden"
								name="costTitle" value="${sc.costTitle }" /></td>

							<td><input type="text"
								name="repayDetailVoList.repayCostList.cost" value="${sc.cost }"
								id="${sc.costCode }" /></td>

						</tr>
					</c:forEach>
				</table>
			</div>
		</c:forEach>

	</form>

	<div class="buttonlist buttonDivWidth" id="RepayEditDiv">
		<button type="button" loxiaType="button" class="confirm hidden1"
			title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
			id="saveRepay">
			<fmt:message key="button.confirm" bundle="${lang}" />
		</button>
	</div>

</body>