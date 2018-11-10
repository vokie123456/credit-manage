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
	src="<c:url value='/scripts/frame/account/sys_merchant_pay.js?v=1.1'/>"></script>
<style type="text/css">
.label {
	text-align: right;
	width: 200px;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-addconfig" method="POST">
			<input name="id" type="hidden" value="${pc.id}" />
			<table width="800px">
				<tr>
					<td class="label">账户名称：</td>
					<td>${pc.accountName}</td>
					<td class="label">充值金额：</td>
					<td><input name="payMoney" id="payMoney" loxiaType="number" mandatory="true" trim="true" decimal="2" max="9999999999999.99">
					<label class="del_mandatory">*</label></td>
				</tr>
				<tr>
					<td class="label">网银交易流水号：</td>
					<td><input name="ebankNumber" id="ebankNumber" loxiaType="input" trim="true"
						maxlength="50"></td>
					<td class="label">商户订单号：</td>
					<td><input name="merOrderId" id="merOrderId" loxiaType="input" trim="true"  maxlength="50"
						mandatory="true" ><label class="del_mandatory"> *</label></td>
				</tr>

				<tr>
					<td class="label">第三方机构：</td>
					<td><bizoption:bizoption name="payChannel" id="payChannel"
						biztypekey="1186" isChoose="false" mandatory="true"/>
						<label class="del_mandatory">*</label></td>
					<td class="label">充值时间：</td>
					<td><input loxiaType="date" showTime="true" name="payTime" id="payTime" readonly="readonly" mandatory="true"/>
					<label class="del_mandatory">*</label></td>
				</tr>
				 <tr>
					<td class="label">充值通道 ：</td>
				 	<td>
				 		<bizoption:bizoption name="rechargeChannel" id="rechargeChannel"
						biztypekey="1297"   isChoose="true" mandatory="true"/>
						
						<label class="del_mandatory">*</label>
					</td> 
					<td></td>
					<td></td>		
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