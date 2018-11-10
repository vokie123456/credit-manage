<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
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

<br />
<div>
	<div class="class">
		第${numb }期
		<td width="90%" align="right"><input type="button"
			onclick="deleteRepayPlan(${count })"
			style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
			title="删除" /></td>
	</div>
	<!-- 还款计划明细 -->
	<table class="textalignCenter tabcustom0" cellpadding="0"
		   cellspacing="0" width="100%" id="repayTab${count }">
		<tr class="custr custrBag">
						<th ><fmt:message
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
		<tbody id="repayBody${count }">
			<tr id="repayTr${count }" class="custr" >
				<input type="hidden" name="serials" value="${count }" />

				<td><input loxiaType="number" name="principalRepay"
					value="0" decimal="2" /></td>

				<td><input loxiaType="number" name="principalActual" value="0"
					decimal="2" /></td>

				<td><input loxiaType="date" readonly="readonly"
					name="principalActualDate" value="" /></td>

				<td><input loxiaType="number" name="interestRepay"
					value="0" decimal="2" /></td>

				<td><input loxiaType="number" name="interestActual" value="0"
					decimal="2" /></td>

				<td><input loxiaType="date" readonly="readonly"
					name="interestActualDate" value="" /></td>

				<td><input loxiaType="number"
					name="principalInterest" value="0" decimal="2" /></td>
					
				<td><input loxiaType="number" name="fineMoney"
								value="" decimal="2" /></td>
							
				<td><input loxiaType="number" name="fineDays"
					value="" decimal="0" /></td>
				
				<td><input loxiaType="number" name="fineMoneyActual"
					value="" decimal="2" /></td>
					
				<td><input loxiaType="date" readonly="readonly" name="fineActualDate"
					value=""/></td>

				<td><input loxiaType="number" name="principalLeft"
					value="0" decimal="2" /></td>

				<td><input loxiaType="date" readonly="readonly"
					name="repayDate" value="" mandatory="true"/></td>

				<td><input loxiaType="date" readonly="readonly"
					name="remindDate" value="" mandatory="true"/></td>

				<td><bizoption:bizoption name="ifEnd" biztypekey="1001" /></td>

				<td><input loxiaType="date" name="endDate" value=""
					readonly="readonly" /></td>

			</tr>
		</tbody>
	</table>

	<!-- 还款计划中的费用 -->
	<table cellpadding="0"
		   cellspacing="0" width="50%" id="repayCostTab${count }">

		<c:forEach items="${pcosts }" var="pc" varStatus="lp">
			<tr>
				<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
				<td><bizoptionname:showname biztypekey="1090"
						value="${pc.costCode }" /></td>

				<!-- 隐藏部分费用字段 -->
				<input type="hidden" name="costTitle" value="${pc.costTitle }" />
				<input type="hidden" name="costCode" value="${pc.costCode }" />

				<td><input name="cost" value="0" id="" /></td>
				<td><input name="costActual" value="0"
									id="" /></td>
                <td><input loxiaType="date" readonly="readonly"
					name="costActualDate" value="" /></td>
			</tr>

		</c:forEach>

	</table>
</div>