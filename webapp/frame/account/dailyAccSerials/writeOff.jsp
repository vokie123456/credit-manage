<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 冲销 -->
<table style="width: 100%;">
	<tr>
		<td width="30%" align="right">借：</td>
		<td><select id="writeOffSubjectD">
		</select></td>
	</tr>
	<tr>
		<td align="right">贷：</td>
		<td><select id="writeOffSubjectC">
		</select></td>
	</tr>
	<tr>
		<td align="right">冲销修改金额：</td>
		<td><input id="writeOffMoney" /></td>
	</tr>
	<tr>
		<td align="right" valign="top">冲销原因：</td>
		<td><textarea id="writeOffCause" rows="5" cols="30"></textarea></td>
	</tr>
	<tr>
		<td colspan="2 " align="center"><button type="button"
				loxiaType="button" style="width: 120px;"
				class="confirm ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
				title="tip：确定" id="writeOffSubmit">确定</button></td>
	</tr>
</table>