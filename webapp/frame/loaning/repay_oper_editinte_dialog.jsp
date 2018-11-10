
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loaning/repay_oper_editinte_dialog.js'/>"></script>

</head>


<form id="culBillForm" method="post">

    <input type="hidden" name="projectId" value="${lc.projectId }">
    <input type="hidden" name="lendId" id="dialog_lendId" value="${lendId }">
    <input type="hidden" id="dialog_lcId" value="${lc.lendPcId }">
    
    <span style="color: red; font-weight: normal;">【注：修改利率后,从修改的当期还款计划之后,都将重新计算每期利息】</span>
				
	<table style="width:100%" >
	    <tr>
	        <td class="label">还款计划期数：</td>
			<td><select id="startPlanId" name="startPlanId"
						class="ui-loxia-default ui-corner-all" /></td>
		</tr>
	
		<tr>
			<td class="label">改前利率(%)：</td>
			<td>${lc.interest }<input type="hidden" name="oldValue" value="${lc.interest }"/></td>
		</tr>
		<tr>
			<td class="label">改后利率(%)：</td>
			<td><input loxiaType="number" mandatory="true" name="newValue" /> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr>
		<tr>
			<td class="label">利率单位：</td>
			<td><bizoptionname:showname biztypekey="1058" name="" value="${lc.interestUnit }"/></td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">关闭</button>
	</div>
</form>