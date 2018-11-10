<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}"/></title>
<script type="text/javascript" src="<c:url value='/scripts/frame/account/instruction/instruction_update.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="div-1">
		<form id="outbForm">
			<div class="divBgColor">扣款明细-修改</div>
				<div class="content_middle">
					<table class="col3">
						<tr>
							<td class="label">客户姓名：</td>
							<td class="content">
								<input type="hidden" id="orderId" name="orderId" value="${pob.orderId}"/>
								<input id="workUnit" loxiaType="input"
								trim="true" name="accountClientName" mandatory="true"
								value="${pob.accountClientName}" /><label class="del_mandatory">&nbsp;*</label>
							</td>
							<td class="label"></td>
							<td class="content"></td>
						</tr>
						<tr>
							<td class="label">证件类型：</td>
							<td class="content">
								<bizoption:bizoption biztypekey="1007" id="cardType" name="cardType" 
								selected="${pob.cardType}" /><label class="del_mandatory">&nbsp;*</label>
							</td>
							<td class="label">证件号码：</td>
							<td class="content">
								<input id="workunitPosition" loxiaType="input" trim="true" mandatory="true"
								name="cardNo" value="${pob.cardNo}"/><label class="del_mandatory">&nbsp;*</label>
							</td>
						</tr>
						<tr>
							<td class="label">扣款银行：</td>
							<td class="content">
								<input id="bankCode" loxiaType="input" name="bankCode" value="${pob.bankCode}" /><label class="del_mandatory">&nbsp;*</label>
							</td>
							<td class="label BgColor">银行卡号：</td>
							<td class="content">
								<input id="accountCardNo" loxiaType="input" trim="true" name="accountCardNo"
								value="${pob.accountCardNo}" mandatory="true"/><label class="del_mandatory">&nbsp;*</label>
							</td>
						</tr>
						
						<tr>
							<td class="label">扣款金额：</td>
							<td class="content">
							    <label id="amountLabel">${pob.amount}</label>
								<input id="amount" type="hidden" name="amount" value="${pob.amount}" />
								<input id="newAmount" type="hidden" name="newAmount" value="0" />
							</td>
						</tr>
						
						<!-- 费用项 -->
						<c:forEach items="${pcoblist }" var="it"
							varStatus="loop">
							<tr id="${loop.index }">
								<td class="label"><bizoptionname:showname biztypekey="1090"
										value="${it.costCode }" />：</td>
								<td class="content"><input loxiaType="number" decimal="2"  value="${it.cost }" name="payCostOrderBasic1[${loop.index }].cost" checkmaster="validatorMoney"/>
									    <input type="hidden" value="${it.costCode }" name="payCostOrderBasic1[${loop.index }].costCode" />
									    <input type="hidden" value="${it.accountId }" name="payCostOrderBasic1[${loop.index }].accountId" />
									    
									    <input type="hidden" value="${it.cost }" name="money"/>
									    <input type="hidden" value="${it.cost }" name="tempMoney"/>
									    
									   <input type="hidden" value="0" name="payCostOrderBasic2[${loop.index }].cost" id="cost${loop.index }" />
									   <input type="hidden" value="${it.costCode }" name="payCostOrderBasic2[${loop.index }].costCode" /> 
									   <input type="hidden" value="${it.accountId }" name="payCostOrderBasic2[${loop.index }].accountId" /> 
								</td>
								
								<td class="label">账套：</td>
								<td class="content">${it.accountName }</td>
							</tr>
				
						</c:forEach>
					</table>
				</div>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" title="tip：保存" id="save">保存</button>
				<button type="button" loxiaType="button" class="confirm hidden1" title="tip：返回" id="reback">返回</button>
			</div>
		</form>
	</div>
</body>
</html>