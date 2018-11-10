<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/asset_house.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${count}" />
	<input type="hidden" name="compResultSize" id="compResultSize"
		value="${compCount}" />
	<table class="col3">
		<tr>
			<td class="label">房贷总额(万元)：</td>
			<td class="content"><input loxiaType="money"
				name="assetBasic.loanMoney" value="${assetBasic.loanMoney }" /></td>
			<td class="label">房贷余额(万元)：</td>
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
			<!-- 土地证号-->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicHouse.noland"
				value="${assetBasicHouse.noland}" loxiaType="input" trim="true" /></td>

			<!-- 地号/档案保管号 -->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicHouse.noarchive"
				value="${assetBasicHouse.noarchive}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 房产证号 -->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicHouse.nohouse"
				value="${assetBasicHouse.nohouse}" loxiaType="input" trim="true" /></td>
			<!-- 房屋坐落  -->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicHouse.houseAddress"
				value="${assetBasicHouse.houseAddress}" loxiaType="input"
				trim="true" /></td>
		</tr>
		
		<tr>
			<!-- 房产类型  -->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.houseType" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1076"
					name="assetBasicHouse.houseType" isChoose="false"
					selected="${assetBasicHouse.houseType}" /></td>
			<!-- 建筑面积 -->
			<td class="label">建筑面积：</td>
			<td class="content"><input name="assetBasicHouse.areaBuilding"
				value="${assetBasicHouse.areaBuilding}" loxiaType="number" decimal="2"
				trim="true" /></td>
		</tr>
		<tr>
			<!-- 是否有产权纠纷 -->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.ifPropertydisputes" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1080"
					name="assetBasicHouse.ifPropertydisputes" isChoose="false"
					selected="${assetBasicHouse.ifPropertydisputes}" /></td>
		</tr>
		<tr>
			<!-- 备注 -->
			<td class="label"><fmt:message
					key="label.assessHouse.edit.remark" bundle="${lang}" /></td>
			<td colspan="4"><textarea rows="6" style="width: 94%"
					name="assetBasicHouse.remark" loxiaType="input">${assetBasicHouse.remark}</textarea></td>

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
</html>