<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_plan_emulator.js'/>"></script>

</head>

<body contextpath="<%=request.getContextPath()%>">   
	<div class="divBgColor">
		<fmt:message key="label.loaning.title" bundle="${lang}" />
	</div>
	<form id="productConfigForm">

		<table width="100%"  class="tabcustomPeoNoborder"  cellpadding="0" cellspacing="0">
			<tr>
				<!-- 年化利率 -->
				<td class="label"><fmt:message key="label.loaning.interest"
						bundle="${lang}" /></td>
				<td  class="contentview"><input id="interest" name="lendProductConfig.interest"
					loxiaType="number" trim="true" decimal="2" mandatory="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
					
				<!-- 利率单位 -->
		        <td class="label"><fmt:message key="label.loaning.interest.init"
				  bundle="${lang}" /></td>
		        <td class="contentview"><bizoption:bizoption biztypekey="1058"
				name="lendProductConfig.interestUnit" isChoose="false" mandatory="true"/> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				
			</tr>
			<tr>
				<!-- 还款方式-->
				<td class="label"><fmt:message key="label.loaning.repayMode"
						bundle="${lang}" /></td>
				<td class="contentview"><bizoption:bizoption biztypekey="1091" id="repayMode"
						name="lendProductConfig.repayMode" isChoose="false" /></td>
				<!-- 还款本金-->
				<td class="label"><fmt:message key="label.repay.princal"
						bundle="${lang}" /></td>
				<td class="contentview"><input id="repayPrincal" name="repayPrincal"
					loxiaType="number" trim="true" decimal="2" mandatory="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr id="noCustomTr">
				<!-- 贷款期限 -->
				<td class="label">贷款期限：</td>
				<td class="contentview"><input id="loanPeriod" name="lendProductConfig.loanPeriod"
					loxiaType="number" trim="true" mandatory="true" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>

				<!-- 每月还款日 -->
				<td class="label"><fmt:message key="label.loaning.loanRepayDay"
						bundle="${lang}" /></td>
				<td class="contentview"><input id="loanRepayDay"
					" name="lendProductConfig.loanRepayDay" loxiaType="number" trim="true"/></td>

			</tr>
			<tr>
			 <!-- 放款日期-->
				<td class="label"><fmt:message
						key="label.lend.lendingTime" bundle="${lang}" /></td>
				<td class="contentview"><input loxiaType="date" name="lendTime"
					mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>

		</table>
	</form>

	<div id="costHiddenDiv">
		<form id="productCostForm">
			<!-- 产品费用 -->
			<div class="divBgColor" style="margin-top: 1em;">
				<fmt:message key="label.loaning.title2" bundle="${lang}" />
			</div>

			<div id="edittable1" loxiaType="edittable">
				<table operation="add,delete"  append="1" width="100%" id="tabProductCost">
					<thead>
						<tr>
							<th><input type="checkbox" /></th>
							<th><fmt:message key="label.loaning.costTitle"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costMode"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costRate"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costFix"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costPeriod"
									bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody id="pCostBody">
					</tbody>
					<tbody>
						<tr>
							<td><input type="checkbox" /></td>
							<td><bizselect:bizselect biztypekey="1090" id=""
									name="lendProductCostList.costCode" isChoose="true"
									checkmaster="setCostTitle"  startSort="31" endSort="50" 
									mandatory="true" /></td>

							<input type="hidden" name="lendProductCostList.costTitle"
								readonly="true" />

							<td><bizoption:bizoption biztypekey="1092" id=""
									name="lendProductCostList.costMode" isChoose="false"
									checkmaster="selectSetValue" mandatory="true" /></td>
							<td><input type="text" loxiaType="money" mandatory="true"    
								name="lendProductCostList.costRate" value="0" /></td>
							<td><input type="text" loxiaType="number" mandatory="true"
								name="lendProductCostList.costFix"  value="0" /></td>  
							<td><bizoption:bizoption biztypekey="1093" id="repayMode"
									name="lendProductCostList.costPeriod" isChoose="false" /></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
	</div>

	<div class="buttonlist buttonDivWidth">

		<input type="button" loxiaType="button" class="confirm hidden1"
			value="<fmt:message key="label.loaning.showPayPlan" bundle="${lang}"/>"
			id="generateRepayPlan"> </input>
	</div>

	<div id="repayPlanDivShow"></div>
</body>
</html>
