<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/metaload.jsp"%>
<!-- 手工记账 -->
<table style="width: 100%;">
	<tr>
		<td width="15%" align="right">借：</td>
		<td width="35%"><select id="manualAccountingSubjectD">
		</select></td>
	</tr>
	<tr>
		<td width="15%" align="right">贷：</td>
		<td width="35%"><select id="manualAccountingSubjectC">
		</select></td>
	</tr>
	<tr>
		<td width="15%" align="right">项目编号：</td>
		<td width="35%"><input id="manualAccountingProjectCode" /></td>
	</tr>
	<tr>
		<td width="15%" align="right">记账金额：</td>
		<td width="35%"><input id="manualAccountingMoney" /></td>
	</tr>
	<tr>
		<td width="15%" align="right">记账日期：</td>
		<td width="35%"><input id="manualAccountingDate" loxiaType="date"
			name="manualAccountingDate" trim="true"
			mandatory="true" /></td>
	</tr>
	<tr>
		<td width="15%" align="right" valign="top">记账原因：</td>
		<td><textarea id="manualAccountingCause" rows="5" cols="30"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><button type="button"
				loxiaType="button" style="width: 120px;"
				class="confirm ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				title="tip：确定" id="manualAccountingSubmit">确定</button></td>
	</tr>
</table>