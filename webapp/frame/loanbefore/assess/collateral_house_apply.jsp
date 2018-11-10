<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<div class="divBgColor">
	<table class="col3">
		<tr>
			<td width="150">押品信息-房屋</td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteHouse(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
				title="删除" /></td>
		</tr>
	</table>
</div>

<table class="col3">
	<tr>
		<td class="label">押品类型：</td>
		<td><bizoptionname:showname biztypekey="1097" value="109712" /></td>

		<!-- 押品号 
		<td class="label"><fmt:message
				key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
		-->
		<td colspan="2"><input id="houseList[${count}].houseCode"
			name="houseList[${count}].houseCode" type="hidden" trim="true" /></td>
	</tr>
	<tr>
		<!-- 土地证号-->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
		<td class="content"><input name="houseList[${count}].noland"
			value="" loxiaType="input" trim="true" /></td>

		<!-- 地号/档案保管号 -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
		<td class="content"><input name="houseList[${count}].noarchive"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 房产证号 -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
		<td class="content"><input name="houseList[${count}].nohouse"
			value="" loxiaType="input" trim="true" /></td>
		<!-- 房屋坐落  -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
		<td class="content"><input
			name="houseList[${count}].houseAddress" value="" loxiaType="input"
			trim="true" /></td>

		</td>
	</tr>
	<tr>
		<!-- 房屋结构 -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.houseStructure" bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1074"
				name="houseList[${count}].houseStructure" isChoose="false"
				selected="" /></td>

		<!-- 使用面积  -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.areaUse" bundle="${lang}" /></td>
		<td class="content"><input name="houseList[${count}].areaUse"
			value="" loxiaType="number" decimal="2" trim="true" /></td>
	</tr>
	<tr>
		<!-- 建筑面积-->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.areaBuilding" bundle="${lang}" /></td>
		<td class="content"><input
			name="houseList[${count}].areaBuilding" value="" loxiaType="number"
			decimal="2" trim="true" /></td>

		<!-- 公摊面积 -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.areaShare" bundle="${lang}" /></td>
		<td class="content"><input name="houseList[${count}].areaShare"
			value="" loxiaType="number" decimal="2" trim="true" /></td>
	</tr>
	<tr>
		<!-- 总楼层 -->
		<td class="label"><fmt:message
				key="label.assessHouse.edit.floorTotal" bundle="${lang}" /></td>
		<td class="content"><input name="houseList[${count}].floorTotal"
			value="" loxiaType="number" trim="true" /></td>
	</tr>
</table>
