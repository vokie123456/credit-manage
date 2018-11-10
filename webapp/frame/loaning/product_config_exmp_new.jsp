<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 关系人模板 -->
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
	<table width="100%" border="1" append="1" id="repayTab${count }">
		<tr>
			<th class="title"><fmt:message
					key="label.loaning.principalRepay" bundle="${lang}" /></th>
			<th class="title"><fmt:message key="label.loaning.interestRepay"
					bundle="${lang}" /></th>
			<th class="title"><fmt:message
					key="label.loaning.principal_interest" bundle="${lang}" /></th>
			<th class="title"><fmt:message
					key="label.loaning.principal_left" bundle="${lang}" /></th>
			<th class="title"><fmt:message key="label.loaning.repayDate"
					bundle="${lang}" /></th>
			<th class="title"><fmt:message key="label.loaning.remindDate"
					bundle="${lang}" /></th>
		</tr>
		<tbody id="repayBody${count }">
			<tr id="repayTr${count }">
				<input type="hidden" name="repayDetailVoList.serials"
					value="${count }" />

				<td><input type="text" loxiaType="number"
					name="repayDetailVoList.principalRepay" value="" decimal="2" /></td>

				<td><input type="text" loxiaType="number"
					name="repayDetailVoList.interestRepay" value="" decimal="2" /></td>

				<td><input type="text" loxiaType="number"
					name="repayDetailVoList.principalInterest" value="" decimal="2" /></td>

				<td><input type="text" loxiaType="number"
					name="repayDetailVoList.principalLeft" value="" decimal="2" /></td>


				<td><input type="text" loxiaType="date"
					name="repayDetailVoList.repayDate" value="" /></td>

				<td><input type="text" loxiaType="date"
					name="repayDetailVoList.remindDate" value="" /></td>

			</tr>
		</tbody>
	</table>

	<!-- 还款计划中的费用 -->
	<table border="1" append="1" id="repayCostTab${count }">

		<c:forEach items="${pcosts }" var="pc" varStatus="lp">
			<tr>
				<!-- 把一次性收费的放在第一期,按期收费的，每期都列-->
				<td><bizoptionname:showname biztypekey="1090"
						value="${pc.costCode }" /></td>

				<!-- 隐藏部分费用字段 -->
				<input type="hidden" name="costTitle" value="${pc.costTitle }" />
				<input type="hidden" name="costCode" value="${pc.costCode }" />

				<td><input type="text" name="cost" value="0" id="" /></td>

			</tr>

		</c:forEach>

	</table>
</div>