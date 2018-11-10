<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 车辆评估页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.assessCar.edit.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/assess_car_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">   
			<fmt:message key="label.assessCar.edit.title" bundle="${lang}" />
		</div>
		<form id="assessCarEditForm" method="post">      
			<input type="hidden" id="edit" value="${edit}" /> <input
				type="hidden" id="projectId" value="${projectId}" /> <input
				type="hidden" name="assessCarId"
				value="${assessCarPerson.assessCarId}" /> <input type="hidden"
				name="assessStatus" value="${assessCarPerson.assessStatus}" /> <input
				type="hidden" id="flag" value="${flag}" />
			<table>
				<tr>
					<!-- 车架号 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
					<td width="150"><input name="winCode"
						value="${assessCarPerson.winCode}" loxiaType="input" trim="true" />
					</td>

					<!-- 车牌类型 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateType" bundle="${lang}" /></td>
					<td width="150"><input name="plateType"
						value="${assessCarPerson.plateType}" loxiaType="input" trim="true" />
					</td>

					<!-- 车牌号码 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
					<td width="150"><input name="plateNo"
						value="${assessCarPerson.plateNo}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 车价  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carPrice" bundle="${lang}" /></td>
					<td width="150"><input name="carPrice"
						value="${assessCarPerson.carPrice}" loxiaType="number" decimal="2"
						trim="true" /></td>

					</td>
					<!-- 发票金额 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
					<td width="150"><input name="invoicePrice"
						value="${assessCarPerson.invoicePrice}" loxiaType="number"
						decimal="2" trim="true" /></td>

					<!-- 出厂日期  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.releaseDate" bundle="${lang}" /></td>
					<td width="150"><input name="releaseDate"
						value="${assessCarPerson.releaseDate}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 登记日期 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.recordDate" bundle="${lang}" /></td>
					<td width="150"><input name="recordDate"
						value="${assessCarPerson.recordDate}" loxiaType="date" /></td>

					<!-- 产地 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.prodArea" bundle="${lang}" /></td>
					<td width="150"><input name="prodArea"
						value="${assessCarPerson.prodArea}" loxiaType="input" trim="true" />
					</td>

					<!-- 厂牌 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.brand" bundle="${lang}" /></td>
					<td width="150"><input name="brand"
						value="${assessCarPerson.brand}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 车辆类型  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carType" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1082"
							name="carType" isChoose="false"
							selected="${assessCarPerson.carType}" /></td>

					</td>
					<!-- 排量 -->
					<td class="label"><fmt:message key="label.assessCar.edit.air"
							bundle="${lang}" /></td>
					<td width="150"><input name="air"
						value="${assessCarPerson.air}" loxiaType="input" trim="true" /></td>

					<!-- 型式  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.model" bundle="${lang}" /></td>
					<td width="150"><input name="model"
						value="${assessCarPerson.model}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 颜色  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.color" bundle="${lang}" /></td>
					<td width="150"><input name="color"
						value="${assessCarPerson.color}" loxiaType="input" trim="true" />
					</td>

					<!-- 里程 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.mileage" bundle="${lang}" /></td>
					<td width="150"><input name="mileage"
						value="${assessCarPerson.mileage}" loxiaType="input" trim="true" />
					</td>

					<!-- 发动机号  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.engine_No" bundle="${lang}" /></td>
					<td width="150"><input name="engine_No"
						value="${assessCarPerson.engine_No}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 变速箱方式  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.shiftMethod" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1083"
							name="shiftMethod" isChoose="false"
							selected="${assessCarPerson.shiftMethod}" /></td>

					</td>
					<!-- 车门型式 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.doorMethod" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1084"
							name="doorMethod" isChoose="false"
							selected="${assessCarPerson.doorMethod}" /></td>

					<!-- 转动方式 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.drivingMethod" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1085"
							name="drivingMethod" isChoose="false"
							selected="${assessCarPerson.drivingMethod}" /></td>
				</tr>
				<tr>
					<!-- 供油类型 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.supplyoilMethod" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1086"
							name="supplyoilMethod" isChoose="false"
							selected="${assessCarPerson.supplyoilMethod}" /></td>

					</td>
					<!-- 供油系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.supplyoilSys" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1087"
							name="supplyoilSys" isChoose="false"
							selected="${assessCarPerson.supplyoilSys}" /></td>

					<!-- 年检日期 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.yearCheck" bundle="${lang}" /></td>
					<td width="150"><input name="yearCheck"
						value="${assessCarPerson.yearCheck}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 车辆动力总成系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.powerSys" bundle="${lang}" /></td>
					<td width="150"><input name="powerSys"
						value="${assessCarPerson.powerSys}" loxiaType="input" trim="true" />
					</td>

					<!-- 车辆传动系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.drivingSys" bundle="${lang}" /></td>
					<td width="150"><input name="drivingSys"
						value="${assessCarPerson.drivingSys}" loxiaType="input"
						trim="true" /></td>

					<!-- 车辆循环系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.cycleSys" bundle="${lang}" /></td>
					<td width="150"><input name="cycleSys"
						value="${assessCarPerson.cycleSys}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 车辆电器系统 -->
					<td class="label">车辆电器系统</td>
					<td width="150"><input name="appSys"
						value="${assessCarPerson.appSys}" loxiaType="input" trim="true" />
					</td>

					<!-- GPS设备号 -->
					<td class="label">GPS设备号</td>
					<td width="150"><input name="gps_No"
						value="${assessCarPerson.gps_No}" loxiaType="input" trim="true" />
					</td>

					<!-- GPS安装日 -->
					<td class="label">评估时间</td>
					<td width="150"><input name="gpsIndate"
						value="${assessCarPerson.gpsIndate}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 购买来源 -->
					<td class="label">购买来源</td>
					<td width="150"><bizoption:bizoption biztypekey="1088"
							name="buyFrom" isChoose="false"
							selected="${assessCarPerson.buyFrom}" /></td>

					<!-- 购买来源其他 -->
					<td class="label">购买来源其他</td>
					<td width="150"><input name="buyfromOther"
						value="${assessCarPerson.buyfromOther}" loxiaType="input"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 购买原因 -->
					<td class="label">购买原因</td>
					<td width="150"><bizoption:bizoption biztypekey="1089"
							name="buyReason" isChoose="false"
							selected="${assessCarPerson.buyReason}" /></td>
				</tr>
				<tr>
					<!-- 车主 -->
					<td class="label">车主</td>
					<td width="150"><input name="carOwner"
						value="${assessCarPerson.carOwner}" loxiaType="input" trim="true" />
					</td>

					<!-- 车商名称 -->
					<td class="label">车商名称</td>
					<td width="150"><input name="dealer"
						value="${assessCarPerson.dealer}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 车商电话 -->
					<td class="label">车商电话</td>
					<td width="150"><input name="dealerTel"
						value="${assessCarPerson.dealerTel}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 资产状态 -->
					<td class="label">资产状态</td>
					<td width="150"><bizoption:bizoption biztypekey="1081"
							name="collateralStatus" isChoose="false"
							selected="${assessCarPerson.collateralStatus}" /></td>

					</td>
					<!-- 抵押/过户时间 -->
					<td class="label">抵押/过户时间</td>
					<td width="150"><input name="collateralTime"
						value="${assessCarPerson.collateralTime}" loxiaType="date" /></td>

					<!-- 抵押权利人 -->
					<td class="label">抵押权利人</td>
					<td width="150"><input name="collateralRighthold"
						value="${assessCarPerson.collateralRighthold}" loxiaType="input"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label">备注</td>
					<td width="150"><input name="remark"
						value="${assessCarPerson.remark}" loxiaType="input" trim="true" />
					</td>
				</tr>
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估人员</td>
					<td width="150"><input name="appraiserName"
						value="${assessCarPerson.appraiserName}" loxiaType="input"
						trim="true" /></td>

					<!-- 评估时间 -->
					<td class="label">评估时间</td>
					<td width="150"><input name="assessTime"
						value="${assessCarPerson.assessTime}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 评估总价 -->
					<td class="label">评估总价</td>
					<td width="150"><input name="assessTotalprice"
						value="${assessCarPerson.assessTotalprice}" loxiaType="number"
						decimal="2" trim="true" /></td>

					<!-- 信息来源 -->
					<td class="label">信息来源</td>
					<td width="150"><input name="infoSource"
						value="${assessCarPerson.infoSource}" loxiaType="input"
						trim="true" /></td>
				</tr>
			</table>

			<div class="buttonlist buttonDivWidth">
				<button id="temp" type="submit" loxiaType="button" class="confirm">
					<fmt:message key="label.assessCar.edit.temp" bundle="${lang}" />
				</button>

				<button id="save" type="submit" loxiaType="button" class="confirm">
					<fmt:message key="label.assessCar.edit.save" bundle="${lang}" />
				</button>
			</div>
		</form>

	</div>
</body>
</html>
