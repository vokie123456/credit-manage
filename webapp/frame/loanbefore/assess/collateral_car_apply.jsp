<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<div class="divBgColor">
	<table>
		<tr>
			<td width="150">押品信息-车辆</td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteCar(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
				title="删除" /></td>
		</tr>
	</table>
</div>

<table class="col3">
	<tr>
		<td class="label">押品类型：</td>
		<td class="content"><bizoptionname:showname biztypekey="1097" value="109711" /></td>
		<!-- 押品号 
		<td class="label"><fmt:message
				key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
		-->
		<td colspan="2"><input
			id="carList[${count}].carCode" name="carList[${count}].carCode"
			type="hidden" trim="true" /></td>
	</tr>
	<tr>
		<!-- 车架号 -->
		<td class="label"><fmt:message key="label.assessCar.edit.winCode"
				bundle="${lang}" /></td>
		<td class="content"><input name="carList[${count}].winCode" value=""
			loxiaType="input" trim="true" /></td>
		<!-- 车牌号码 -->
		<td class="label"><fmt:message key="label.assessCar.edit.plateNo"
				bundle="${lang}" /></td>
		<td class="content"><input name="carList[${count}].plateNo" value=""
			loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 发票金额 -->
		<td class="label"><fmt:message
				key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
		<td class="content"><input name="carList[${count}].invoicePrice"
			value="" loxiaType="number" decimal="2" trim="true" /></td>
		<!-- 厂牌 -->
		<td class="label"><fmt:message key="label.assessCar.edit.brand"
				bundle="${lang}" /></td>
		<td class="content"><input name="carList[${count}].brand" value=""
			loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 车辆类型  -->
		<td class="label"><fmt:message key="label.assessCar.edit.carType"
				bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption
				biztypekey="1082" name="carList[${count}].carType" isChoose="false" selected="108212" /></td>
		<!-- 型号 -->
		<td class="label"><fmt:message key="label.assessCar.edit.model"
				bundle="${lang}" /></td>
		<td class="content"><input name="carList[${count}].model" value=""
			loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 颜色  -->
		<td class="label"><fmt:message key="label.assessCar.edit.color"
				bundle="${lang}" /></td>
		<td class="content"><input name="carList[${count}].color" value=""
			loxiaType="input" trim="true" /></td>
		<td colspan="2"></td>
	</tr>
</table>
