<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/sys_merchant_drawings.js?v=1.1'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-addconfig" method="POST">
			<input name="id" type="hidden" value="${pc.id}" />
			<table width="600px">
				<tr>
					<td class="label">账户名称：</td>
					<td class="width200">${pc.accountName}</td>
					<td class="label">提现金额：</td>
					<td class="width200"><input name="payMoney" id="payMoney" loxiaType="number" mandatory="true" trim="true" decimal="2" max="9999999999999.99">
					<label class="del_mandatory">*</label></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnSave">保存</button>

				<button type="button" loxiaType="button" class="confirm"
					id="backoff">返回</button>
			</div>
		</form>
		
	</div>
    <iframe id="temp" name="temp"  class="disNone"></iframe>
</body>
</html>