
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/apply_extend_dialog.js'/>"></script>
</head>

<form id="extendApply" method="post">
	<input type="hidden" id="lendinfo_projectId"
		value="${projectId }">
	<table>
		<!-- 针对哪次放款进行展期 -->
		<tr>
			<td class="label">放款批次：</td>
			<td><select id="lendId" name="lendId"
				class="ui-loxia-default ui-corner-all" /> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
			
			<!-- 贷款期限 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.collateral.loanPeriod" bundle="${lang}" /></td>
			<td><input id="loanPeriod" name="loanPeriod" loxiaType="number"
				trim="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
			</td>
		</tr>
		
		<tr>
			<!-- 展期理由 -->
			<td class="label"><fmt:message
					key="label.extend.apply.extendExcuse" bundle="${lang}" /></td>
			<td colspan="5"><textarea rows="5" cols="85" name="extendExcuse"
					id="extendExcuse"></textarea></td>
		</tr>
	</table>
	<div style="text-align: center">
		<input type="submit" loxiaType="button" class="confirm"
			id="submitExtend" value="提交" /> <input type="button"
			loxiaType="button" class="confirm" id="closeWin" value="关闭" />
	</div>
</form>
