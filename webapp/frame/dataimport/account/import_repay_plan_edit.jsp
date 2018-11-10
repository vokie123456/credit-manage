<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/dataimport/account/import_repay_plan_edit.js'/>"></script>
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
		
		<input type="hidden" id="compCode" value="${compCode}" />
		<input type="hidden" id="ifUsed" value="${ifUsed}" />
		<input type="hidden" id="basicId" value="${basicId }" />
		<input type="hidden" name="projectId" id="projectId" value="${projectId }" /> 

		<!-- 只用到 resultSize，trIdNum，planType，projectId-->
		<input type="hidden" name="resultSize" id="resultSize" value="${resultSize}" />
		<input type="hidden" id="trIdNum" value="${idNum}" />

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
				<table class="textalignCenter tabcustom0" cellpadding="0"
		               cellspacing="0" width="100%" id="repayTab${cnt.index }">
					<tr class="custr custrBag">
						<th><fmt:message
								key="label.loaning.principalRepay" bundle="${lang}" /></th>
						<th >实还本金</th>
						<th >实还本金日期</th>
						<th ><fmt:message
								key="label.loaning.interestRepay" bundle="${lang}" /></th>
						<th >实还利息</th>
						<th >实还利息日期</th>
						<th ><fmt:message
								key="label.loaning.principal_interest" bundle="${lang}" /></th>
						<th >应还罚息</th>
						<th >逾期天数</th>
						<th >实还罚息</th>
						<th >实还罚息日期</th>
						<th ><fmt:message
								key="label.loaning.principal_left" bundle="${lang}" /></th>
						<th ><fmt:message key="label.loaning.repayDate"
								bundle="${lang}" /></th>
						<th ><fmt:message key="label.loaning.remindDate"
								bundle="${lang}" /></th>
						
						<th >账单是否完结</th>
						<th >完结日期</th>
						
						
					</tr>

					<tbody id="repayBody${cnt.index }">
						<tr id="repayTr${cnt.index }" class="custr">
						
							<td><input loxiaType="number" name="principalRepay"
								value="${pl.principalRepay }" decimal="2" /></td>

							<td><input loxiaType="number" name="principalActual"
								value="${pl.principalActual }" decimal="2" /></td>

							<td><input loxiaType="date" readonly="readonly"
								name="principalActualDate" value="<fmt:formatDate value='${pl.principalActualDate }' pattern='yyyy-MM-dd' />" /></td>

							<td><input loxiaType="number" name="interestRepay"
								value="${pl.interestRepay }" decimal="2" /></td>

							<td><input loxiaType="number" name="interestActual"
								value="${pl.interestActual }" decimal="2" /></td>

							<td><input loxiaType="date" readonly="readonly"
								name="interestActualDate" value="<fmt:formatDate value='${pl.interestActualDate }' pattern='yyyy-MM-dd' />" /></td>

							<td><input loxiaType="number" name="principalInterest"
								value="${pl.principalInterest }" decimal="2" /></td>
							
							<td><input loxiaType="number" name="fineMoney"
								value="${pl.fineMoney }" decimal="2" /></td>
							
							<td><input loxiaType="number" name="fineDays"
								value="${pl.fineDays }" decimal="0" /></td>
							
							<td><input loxiaType="number" name="fineMoneyActual"
								value="${pl.fineMoneyActual }" decimal="2" /></td>
								
							<td><input loxiaType="date" readonly="readonly" name="fineActualDate"
								value="<fmt:formatDate value='${pl.fineActualDate }' pattern='yyyy-MM-dd' />"/></td>
							
							<td><input loxiaType="number" name="principalLeft"
								value="${pl.principalLeft }" decimal="2" /></td>

							<td><input loxiaType="date" readonly="readonly"
								name="repayDate" value="<fmt:formatDate value='${pl.repayDate }' pattern='yyyy-MM-dd' />" mandatory="true"/></td>

							<td><input loxiaType="date" readonly="readonly"
								name="remindDate" value="<fmt:formatDate value='${pl.remindDate }' pattern='yyyy-MM-dd' />" mandatory="true"/></td>

							<td><bizoption:bizoption name="ifEnd" biztypekey="1001"
									selected="${pl.ifEnd}" /></td>

							<td><input loxiaType="date" readonly="readonly"
								name="endDate" value="${pl.endDate }" /></td>
						</tr>
					</tbody>
				</table>


				<!-- 还款计划中的费用 -->
				<table cellpadding="0"
		               cellspacing="0" width="50%"
					id="repayCostTab${cnt.index }">

						<c:forEach items="${pl.importRepayCostList }" var="oc" varStatus="lp">
							<tr>
								<td><bizoptionname:showname biztypekey="1090"
										value="${oc.costCode }" /></td>
										
								<input type="hidden" name="costTitle" value="${oc.costTitle }" />
								<input type="hidden" name="costCode" value="${oc.costCode }" />

								<td><input name="cost" value="${oc.cost }"
									id="" /></td>
								<td><input name="costActual" value="${oc.costActual }"
									id="" /></td>
								<td><input loxiaType="date" readonly="readonly"
					                name="costActualDate" value="<fmt:formatDate value='${oc.costActualDate }' pattern='yyyy-MM-dd' />" /></td>
							</tr>
						</c:forEach>
				
				</table>

			</div>
			<br />
		</c:forEach>

		<!-- 手动添加还款计划 -->
		<c:if test="${ifUsed == '100112' }">
		<div id="repayPlanDivs"></div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addRepayPlan">添加还款计划</button>
		</div>
		</c:if>
	</form>
	
    
	<div class="buttonlist buttonDivWidth" id="RepayEditDiv">
	<c:if test="${ifUsed == '100112' }">
		<button type="button" loxiaType="button" class="confirm hidden1"
			title="tip：<fmt:message key="label.research.add.submit_button" bundle="${lang}"/>"
			id="saveRepay">
			<fmt:message key="button.confirm" bundle="${lang}" />
		</button>
	    <button type="button" loxiaType="button" class="confirm hidden1"
			title="tip：应用"
			id="useRepay">
			应用
		</button>
	</c:if>
		<button type="button" loxiaType="button" class="confirm hidden1"
			title="tip：返回"
			id="backOff">
			返回
		</button>
	</div>
    
</body>