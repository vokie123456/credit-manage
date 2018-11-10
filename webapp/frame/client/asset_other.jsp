<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/asset_other.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${count}" />
	<input type="hidden" name="compResultSize" id="compResultSize"
		value="${compCount}" />
	<table class="col3">
		<tr>
			<!-- 资产名称 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.collateral.name" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicOther.assetName"
				value="${assetBasicOther.assetName}" loxiaType="input" trim="true" /></td>
			<td class="label"></td>
			<td class="content"></td>
		</tr>
		<tr>
			<td class="label">贷款金额(万元)：</td>
			<td class="content"><input loxiaType="money"
				name="assetBasic.loanMoney" value="${assetBasic.loanMoney }" /></td>
			<td class="label">贷款余额(万元)：</td>
			<td class="content"><input loxiaType="money"
				name="assetBasic.loanBalance" value="${assetBasic.loanBalance }" /></td>
		</tr>
		<tr>
			<td class="label">购买时间：</td>
			<td class="content"><input loxiaType="date" 
				name="assetBasic.buyDate" value="${assetBasic.buyDate }" /></td>
			<td class="label">购买金额(万元)：</td>
			<td class="content"><input loxiaType="money"
				name="assetBasic.buyMoney" value="${assetBasic.buyMoney }" /></td>
		</tr>
		<tr>
			<!-- 备注 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.collateral.remark" bundle="${lang}" /></td>
			<td colspan="4"><textarea rows="6" style="width: 94%"
					name="assetBasicOther.remark" loxiaType="input">${assetBasicOther.remark}</textarea></td>
		</tr>
	</table>
	<div id="formRelation"></div>
	<div id="formAssetComRelation"></div>
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm"
			id="addAssetRelation">添加资产所有人</button>
		<button type="button" loxiaType="button" class="confirm"
			id="addAssetGuaranteeCom">添加资产所有机构</button>
	</div>
</body>
