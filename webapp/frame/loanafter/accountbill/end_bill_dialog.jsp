
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/accountbill/end_bill_dialog.js'/>"></script>

</head>

<form id="culBillForm" method="post">
    <input type="hidden" name="id" value="${billId }">
    <input type="hidden" id="dialog_projectId" value="${projectId }">
				
	<table style="width:100%" >
		<tr>
			<td class="label">完结时间：</td>
			<td><input loxiaType="date" id="finishDate" mandatory="true"
				name="finishDate" readonly="readonly" /> <label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
		</tr>
		<tr>
			<td class="content" style="padding-left: 10%" colspan="2"><textarea name="remark" rows="2" style="width: 298px; height: 51px;"></textarea></td>
		</tr>
	</table>
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">关闭</button>
	</div>
</form>