<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/asset_car.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${count}" />
	<input type="hidden" name="compResultSize" id="compResultSize"
		value="${compCount}" />
	<table class="col3">
		<tr>
			<td class="label">车贷总额(万元)：</td>
			<td class="content"><input loxiaType="money"
				name="assetBasic.loanMoney" value="${assetBasic.loanMoney }" /></td>
			<td class="label">车贷余额(万元)：</td>
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
			<!-- 车架号 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.winCode"
				value="${assetBasicCar.winCode}" loxiaType="input" trim="true" /></td>

			<!-- 车牌类型 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.plateType" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.plateType"
				value="${assetBasicCar.plateType}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 车牌号码 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.plateNo"
				value="${assetBasicCar.plateNo}" loxiaType="input" trim="true" /></td>

			<!-- 出厂日期  -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.releaseDate" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.releaseDate"
				value="${assetBasicCar.releaseDate}" loxiaType="date" /></td>
		</tr>
		<tr>
			<!-- 登记日期 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.recordDate" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.recordDate"
				value="${assetBasicCar.recordDate}" loxiaType="date" /></td>

			<!-- 产地 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.prodArea" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.prodArea"
				value="${assetBasicCar.prodArea}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 厂牌 -->
			<td class="label"><fmt:message key="label.assessCar.edit.brand"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.brand"
				value="${assetBasicCar.brand}" loxiaType="input" trim="true" /></td>
			<!-- 车辆类型  -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.carType" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1082"
					name="assetBasicCar.carType" isChoose="false"
					selected="${assetBasicCar.carType}" /></td>
		</tr>
		<tr>
			<!-- 排量 -->
			<td class="label"><fmt:message key="label.assessCar.edit.air"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.air"
				value="${assetBasicCar.air}" loxiaType="input" trim="true" /></td>

			<!-- 型式  -->
			<td class="label"><fmt:message key="label.assessCar.edit.model"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.model"
				value="${assetBasicCar.model}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 颜色  -->
			<td class="label"><fmt:message key="label.assessCar.edit.color"
					bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.color"
				value="${assetBasicCar.color}" loxiaType="input" trim="true" /></td>

			<!-- 里程 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.mileage" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.mileage"
				value="${assetBasicCar.mileage}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 发动机号  -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.engine_No" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.engineNo"
				value="${assetBasicCar.engineNo}" loxiaType="input" trim="true" /></td>
			<!-- 变速箱方式  -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.shiftMethod" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1083"
					name="assetBasicCar.shiftMethod" isChoose="false"
					selected="${assetBasicCar.shiftMethod}" /></td>

		</tr>
		<tr>
			<!-- 车门型式 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.doorMethod" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1084"
					name="assetBasicCar.doorMethod" isChoose="false"
					selected="${assetBasicCar.doorMethod}" /></td>

			<!-- 转动方式 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.drivingMethod" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1085"
					name="assetBasicCar.drivingMethod" isChoose="false"
					selected="${assetBasicCar.drivingMethod}" /></td>
		</tr>
		<tr>
			<!-- 供油类型 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.supplyoilMethod" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1086"
					name="assetBasicCar.supplyoilMethod" isChoose="false"
					selected="${assetBasicCar.supplyoilMethod}" /></td>
			<!-- 供油系统 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.supplyoilSys" bundle="${lang}" /></td>
			<td class="content"><bizoption:bizoption biztypekey="1087"
					name="assetBasicCar.supplyoilSys" isChoose="false"
					selected="${assetBasicCar.supplyoilSys}" /></td>
		</tr>
		<tr>
			<!-- 年检日期 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.yearCheck" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.yearCheck"
				value="${assetBasicCar.yearCheck}" loxiaType="date" /></td>

			<!-- 车辆动力总成系统 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.powerSys" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.powerSys"
				value="${assetBasicCar.powerSys}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 车辆传动系统 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.drivingSys" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.drivingSys"
				value="${assetBasicCar.drivingSys}" loxiaType="input" trim="true" /></td>

			<!-- 车辆循环系统 -->
			<td class="label"><fmt:message
					key="label.assessCar.edit.cycleSys" bundle="${lang}" /></td>
			<td class="content"><input name="assetBasicCar.cycleSys"
				value="${assetBasicCar.cycleSys}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- 车辆电器系统 -->
			<td class="label">车辆电器系统：</td>
			<td class="content"><input name="assetBasicCar.appSys"
				value="${assetBasicCar.appSys}" loxiaType="input" trim="true" /></td>

			<!-- GPS设备号 -->
			<td class="label">GPS设备号：</td>
			<td class="content"><input name="assetBasicCar.gpsNo"
				value="${assetBasicCar.gpsNo}" loxiaType="input" trim="true" /></td>
		</tr>
		<tr>
			<!-- GPS安装日 -->
			<td class="label">GPS安装时间：</td>
			<td class="content"><input name="assetBasicCar.gpsIndate"
				value="${assetBasicCar.gpsIndate}" loxiaType="date" /></td>
			<!-- 购买来源 -->
			<td class="label">购买来源：</td>
			<td class="content"><bizoption:bizoption biztypekey="1088"
					name="assetBasicCar.buyFrom" isChoose="false"
					selected="${assetBasicCar.buyFrom}" /></td>
		</tr>
		<tr>
			<!-- 购买来源其他 -->
			<td class="label">购买来源其他：</td>
			<td class="content"><input name="assetBasicCar.buyfromOther"
				value="${assetBasicCar.buyfromOther}" loxiaType="input" trim="true" /></td>

			<!-- 购买原因 -->
			<td class="label">购买原因：</td>
			<td class="content"><bizoption:bizoption biztypekey="1089"
					name="assetBasicCar.buyReason" isChoose="false"
					selected="${assetBasicCar.buyReason}" /></td>
		</tr>
		<tr>
			<!-- 车商名称 -->
			<td class="label">车商名称：</td>
			<td class="content"><input name="assetBasicCar.dealer"
				value="${assetBasicCar.dealer}" loxiaType="input" trim="true" /></td>

			<!-- 车商电话 -->
			<td class="label">车商电话：</td>
			<td class="content"><input name="assetBasicCar.dealerTel"
				value="${assetBasicCar.dealerTel}" loxiaType="input" trim="true" /></td>
		</tr>

		<tr>
			<!-- 备注 -->
			<td class="label">备注：</td>
			<td colspan="4"><textarea rows="6" name="assetBasicCar.remark"
					style="width: 94%" loxiaType="input">${assetBasicCar.remark}</textarea></td>
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