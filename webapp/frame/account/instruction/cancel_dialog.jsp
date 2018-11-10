
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/instruction/cancel_dialog.js'/>"></script>

</head>

<form id="culBillForm" method="post">
    <input type="hidden" id="orderId" value="${orderId }">
    <input type="hidden" id="money" value="${money }">
				
	<table style="width:100%" >
	    <span style="color: red; font-weight: normal;">【注：作废表示全额放弃该款项，指令作废】</span>
	    
		<%-- <tr>
			<td class="label">是否扣款：</td>
			<td><bizoption:bizoption id="ifCancel" biztypekey="1001" name="ifCancel"></bizoption:bizoption><label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr>
		
		<tr id="moneyTr">
			<td class="label">实收金额：</td>
			<td><input loxiaType="money" id="cancelMoney" mandatory="true" value="${money }"/> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr> --%>
	</table>
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">关闭</button>
	</div>
</form>