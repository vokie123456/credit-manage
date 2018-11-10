<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>商户号-账套号配置</title>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/pay/account_merchant_list.js'/>"></script>
	
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-addconfig" method="POST" >
		   
		   <input type="hidden" id="sizeN" value="${sizeN }" />
		    <input type="hidden" id="compCode" value="${compCode }" />
			    
				<table class="textalignCenter tabcustom"  width="100%" cellpadding="0" cellspacing="0">
				<tr class="tabcustomTr">
					<th>支付渠道</th>
					
					<th>账套名称</th>
					
					<th class="tabBorderRight">商户号</th>
				</tr>
					<c:forEach items="${volist}" var="vo" varStatus="loop">
					    <input type="hidden" name="payMerchantVoList[${loop.index }].connectId" value="${vo.connectId }" />
					    <input type="hidden" name="payMerchantVoList[${loop.index }].accountId" value="${vo.accountId }" />
					    <input type="hidden" name="payMerchantVoList[${loop.index }].channelCode" value="${vo.channelCode }" id="channelCode${loop.index }" />
						<tr>
							<td>${vo.codeName }</td>
							<td>${vo.accountName}</td>
					        <td class="tabBorderRight">
					        <select name="payMerchantVoList[${loop.index }].merchantId" id="selectMerchantId${loop.index }" class="ui-loxia-default ui-corner-all"></select>
					            <input type="hidden" id="merchantId${loop.index }" value="${vo.merchantId}">
					        </td>
						</tr>
					</c:forEach>
				</table>
			
			<div class="tabbuttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnSave">保存</button>
			</div>
		</form>
		
	</div>
</body>
</html>