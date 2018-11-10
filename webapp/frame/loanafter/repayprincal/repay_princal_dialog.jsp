
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/repayprincal/repay_princal_dialog.js'/>"></script>
</head>

<form id="repayPrincalForm" method="post">
	<table>
		<input type="hidden" id="princal_projectId" name="projectId"
			value="${projectId }">
		<!-- 针对哪次放款进行展期 -->
		<tr>
			<td class="labelPay">放款批次：</td>
			<td><select id="lendId" name="lendId"
				class="ui-loxia-default ui-corner-all" /> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr>
		<tr>
			<!-- 提前还本金额 -->
			<td class="labelPay" ><fmt:message key="label.repay.princal.money"
					bundle="${lang}" /></td>
			<td><input loxiaType="money" trim="true" id="repayPrincal"  
				name="repayPrincal"  style="width:140px;" mandatory="true"  /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
			</td>      
		</tr>

		<tr>
			<!-- 提前还本日期 -->
			<td class="labelPay"><fmt:message key="label.repay.princal.date"
					bundle="${lang}" /></td>
			<td><input loxiaType="date" trim="true" name="repayDate" class="floatleft"
				mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
			</td>
		</tr>

	</table>
	<div style="text-align: center">
		<input type="button" loxiaType="button" class="confirm"
			id="submitInfo" value="提交" /> <input type="button"
			loxiaType="button" class="confirm" id="closeWin" value="关闭" />
	</div>
</form>