
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/cut_payment_dialog.js'/>"></script>

</head>

<form id="culBillForm" method="post">
    <input type="hidden" name="id" value="${billId }">
    <input type="hidden" name="projectId" id="dialog_projectId" value="${projectId }">
    <input type="hidden" name="field" value="${field }">
				
	<table style="width:100%" >
	    <tr>
	        <td class="label">扣款金额：</td>
			<td><input loxiaType="money" mandatory="true"
				name="fieldMoney" id="fieldMoney"/> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
	    </tr>
		<tr>
			<td class="label">扣款时间：</td>
			<td><input loxiaType="date" id="finishDate" mandatory="true"
				name="cutDate" readonly="readonly" /> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">关闭</button>
	</div>
</form>