<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/inves_assess_car.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.assessCar.edit.title" bundle="${lang}" />
		</div>
		<input type="hidden" id="assessStatus" value="${assessStatus }" />
		<form id="assessCarEditForm" method="post">
			<input type="hidden" name="CarProjectId" id="car_projectId"
				value="${car.carProjectId}" />
			<table class="col3">
				<tr>
					<td class="label">押品类型：</td>
					<td class="content"><bizoptionname:showname biztypekey="1097"
							value="109711" name="collateralType" /></td>
					<td colspan="2"><input id="carCode" name="carCode"
						value="${car.carCode}" type="hidden" trim="true" readonly="true" /></td>
				</tr>
				<tr>
					<!-- 车架号 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
					<td class="content"><input name="winCode"
						value="${car.winCode}" loxiaType="input" trim="true" /></td>

					<!-- 车牌类型 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateType" bundle="${lang}" /></td>
					<td class="content"><input name="plateType"
						value="${car.plateType}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 车牌号码 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
					<td class="content"><input name="plateNo"
						value="${car.plateNo}" loxiaType="input" trim="true" /></td>
					<!-- 车价  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carPrice" bundle="${lang}" /></td>
					<td class="content"><input name="carPrice"
						value="${car.carPrice}" loxiaType="number" decimal="2" trim="true" /></td>
				</tr>
				<tr>
					<!-- 发票金额 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
					<td class="content"><input name="invoicePrice"
						value="${car.invoicePrice}" loxiaType="number" decimal="2"
						trim="true" /></td>

					<!-- 出厂日期  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.releaseDate" bundle="${lang}" /></td>
					<td class="content"><input name="releaseDate"
						value="${car.releaseDate}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 登记日期 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.recordDate" bundle="${lang}" /></td>
					<td class="content"><input name="recordDate"
						value="${car.recordDate}" loxiaType="date" /></td>

					<!-- 产地 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.prodArea" bundle="${lang}" /></td>
					<td class="content"><input name="prodArea"
						value="${car.prodArea}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 厂牌 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.brand" bundle="${lang}" /></td>
					<td class="content"><input name="brand" value="${car.brand}"
						loxiaType="input" trim="true" /></td>
					<!-- 车辆类型  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carType" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1082"
							name="carType" isChoose="false" selected="${car.carType}" /></td>
				</tr>
				<tr>
					<!-- 排量 -->
					<td class="label"><fmt:message key="label.assessCar.edit.air"
							bundle="${lang}" /></td>
					<td class="content"><input name="air" value="${car.air}"
						loxiaType="input" trim="true" /></td>

					<!-- 型式  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.model" bundle="${lang}" /></td>
					<td class="content"><input name="model" value="${car.model}"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 颜色  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.color" bundle="${lang}" /></td>
					<td class="content"><input name="color" value="${car.color}"
						loxiaType="input" trim="true" /></td>

					<!-- 里程 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.mileage" bundle="${lang}" /></td>
					<td class="content"><input name="mileage"
						value="${car.mileage}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 发动机号  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.engine_No" bundle="${lang}" /></td>
					<td class="content"><input name="engineNo"
						value="${car.engineNo}" loxiaType="input" trim="true" /></td>
					<!-- 变速箱方式  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.shiftMethod" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1083"
							name="shiftMethod" isChoose="false" selected="${car.shiftMethod}" /></td>

				</tr>
				<tr>
					<!-- 车门型式 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.doorMethod" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1084"
							name="doorMethod" isChoose="false" selected="${car.doorMethod}" /></td>

					<!-- 转动方式 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.drivingMethod" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1085"
							name="drivingMethod" isChoose="false"
							selected="${car.drivingMethod}" /></td>
				</tr>
				<tr>
					<!-- 供油类型 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.supplyoilMethod" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1086"
							name="supplyoilMethod" isChoose="false"
							selected="${car.supplyoilMethod}" /></td>
					<!-- 供油系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.supplyoilSys" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1087"
							name="supplyoilSys" isChoose="false"
							selected="${car.supplyoilSys}" /></td>
				</tr>
				<tr>
					<!-- 年检日期 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.yearCheck" bundle="${lang}" /></td>
					<td class="content"><input name="yearCheck"
						value="${car.yearCheck}" loxiaType="date" /></td>

					<!-- 车辆动力总成系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.powerSys" bundle="${lang}" /></td>
					<td class="content"><input name="powerSys"
						value="${car.powerSys}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 车辆传动系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.drivingSys" bundle="${lang}" /></td>
					<td class="content"><input name="drivingSys"
						value="${car.drivingSys}" loxiaType="input" trim="true" /></td>

					<!-- 车辆循环系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.cycleSys" bundle="${lang}" /></td>
					<td class="content"><input name="cycleSys"
						value="${car.cycleSys}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 车辆电器系统 -->
					<td class="label">车辆电器系统</td>
					<td class="content"><input name="appSys" value="${car.appSys}"
						loxiaType="input" trim="true" /></td>

					<!-- GPS设备号 -->
					<td class="label">GPS设备号</td>
					<td class="content"><input name="gpsNo" value="${car.gpsNo}"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- GPS安装日 -->
					<td class="label">GPS安装时间</td>
					<td class="content"><input name="gpsIndate"
						value="${car.gpsIndate}" loxiaType="date" /></td>
					<!-- 购买来源 -->
					<td class="label">购买来源</td>
					<td class="content"><bizoption:bizoption biztypekey="1088"
							name="buyFrom" isChoose="false" selected="${car.buyFrom}" /></td>
				</tr>
				<tr>
					<!-- 购买来源其他 -->
					<td class="label">购买来源其他</td>
					<td class="content"><input name="buyfromOther"
						value="${car.buyfromOther}" loxiaType="input" trim="true" /></td>

					<!-- 购买原因 -->
					<td class="label">购买原因</td>
					<td class="content"><bizoption:bizoption biztypekey="1089"
							name="buyReason" isChoose="false" selected="${car.buyReason}" /></td>
				</tr>
				<tr>
					<!-- 车商名称 -->
					<td class="label">车商名称</td>
					<td class="content"><input name="dealer" value="${car.dealer}"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 车商电话 -->
					<td class="label">车商电话</td>
					<td class="content"><input name="dealerTel"
						value="${car.dealerTel}" loxiaType="input" trim="true" /></td>
					<!-- 资产状态 -->
					<td class="label">资产状态</td>
					<td class="content"><bizoption:bizoption biztypekey="1081"
							name="collateralStatus" isChoose="false"
							selected="${car.collateralStatus}" /></td>

				</tr>
				<tr>
					<!-- 抵押/过户时间 -->
					<td class="label">抵押时间</td>
					<td class="content"><input name="collateralTime"
						value="${car.collateralTime}" loxiaType="date" /></td>

					<td class="label">他证号：</td>
					<td class="content"><input name="itCardNo"
						value="${car.itCardNo}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label">备注</td>
					<td class="content"><input name="remark" value="${car.remark}"
						loxiaType="input" trim="true" /></td>
				</tr>

			</table>

			<div class="divBgColor">
				<fmt:message key="label.assessCar.edit.assess.info" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估人员：</td>
					<td class="content"><input name="appraiserName"
						value="${car.appraiserName}" loxiaType="input" trim="true" /></td>

					<!-- 评估时间 -->
					<td class="label">评估时间：</td>
					<td class="content"><input name="assessTime"
						value="${car.assessTime}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 评估总价 -->
					<td class="label">评估总价：</td>
					<td class="content"><input name="assessTotalprice"
						value="${car.assessTotalprice}" loxiaType="number" decimal="2"
						trim="true" max="9999999999999.99" /></td>

					<!-- 信息来源 -->
					<td class="label">信息来源：</td>
					<td class="content"><input name="infoSource"
						value="${car.infoSource}" loxiaType="input" trim="true" /></td>
				</tr>
			</table>
			<c:forEach items="${relationList}" var="personRelation"
				varStatus="loop">
				<div id="collateralRelation${loop.index}">
					<br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>押品所有人</strong></td>
								<td width="80%" align="right"><input type="button"
									onclick="deleteRelation(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /></td>
							</tr>
						</table>
					</div>
					<input type="hidden"
						name="resonRelations[${loop.index}].relationId"
						value="${personRelation.relationId}" />
					<table class="col3">
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
							<td class="content"><input id="relationobjName"
								loxiaType="input" trim="true" mandatory="true"
								name="resonRelations[${loop.index}].relationobjName"
								value="${personRelation.relationobjName}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td class="label"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content"><input id="cardCode" mandatory="true"
								checkmaster="validateIdentify" loxiaType="input"
								name="resonRelations[${loop.index}].cardCode"
								value="${personRelation.cardCode}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content"><input id="mobilePhone"
								loxiaType="input" trim="true" mandatory="true"
								name="resonRelations[${loop.index}].mobilePhone"
								checkmaster="validatemobile"
								value="${personRelation.mobilePhone}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td class="label"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content"><input
								id="resonRelations[${count}].email" loxiaType="input"
								name="resonRelations[${loop.index}].email"
								value="${personRelation.email}" /></td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content"><input id="workUnit" loxiaType="input"
								name="resonRelations[${loop.index}].workUnit"
								value="${personRelation.workUnit}" /></td>
							<td class="label"><fmt:message key="label.applyDetail.im"
									bundle="${lang}" /></td>
							<td class="content"><input id="resonRelations[${count}].im"
								loxiaType="input" name="resonRelations[${loop.index}].im"
								value="${personRelation.im}" /></td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content"><input id="position" loxiaType="input"
								name="resonRelations[${loop.index}].position"
								value="${personRelation.position}" /></td>
							<td class="label">工资收入：</td>
							<td class="content"><input id="incomeWorkunit"
								loxiaType="input"
								name="resonRelations[${loop.index}].incomeWorkunit"
								value="${personRelation.incomeWorkunit}" /></td>

						</tr>
						<tr>
							<td class="label">单位地址：</td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="resonRelations[${loop.index}].address.province"
												pid="pc${loop.index}" cid="cc${loop.index}"
												did="dc${loop.index}"
												seledProvince="${personRelation.province3}" /></td>
										<td class="content"><linkage:select type="city"
												name="resonRelations[${loop.index}].address.city"
												cid="cc${loop.index}" did="dc${loop.index}"
												seledCity="${personRelation.city3}" /></td>
										<td class="content"><linkage:select type="district"
												name="resonRelations[${loop.index}].address.district"
												did="dc${loop.index}"
												seledDistrict="${personRelation.district3}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="resonRelations[${loop.index}].address.town"
											value="${personRelation.town3}" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="label">居住地址：</td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="resonRelations[${loop.index}].address2.province"
												pid="pa${loop.index}" cid="ca${loop.index}"
												did="da${loop.index}"
												seledProvince="${personRelation.province2}" /></td>
										<td class="content"><linkage:select type="city"
												name="resonRelations[${loop.index}].address2.city"
												cid="ca${loop.index}" did="da${loop.index}"
												seledCity="${personRelation.city2}" /></td>
										<td class="content"><linkage:select type="district"
												name="resonRelations[${loop.index}].address2.district"
												did="da${loop.index}"
												seledDistrict="${personRelation.district2}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="resonRelations[${loop.index}].address2.town"
											value="${personRelation.town2}" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.address1" bundle="${lang}" /></td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="resonRelations[${loop.index}].address3.province"
												pid="pb${loop.index}" cid="cb${loop.index}"
												did="db${loop.index}"
												seledProvince="${personRelation.province1}" /></td>
										<td class="content"><linkage:select type="city"
												name="resonRelations[${loop.index}].address3.city"
												cid="cb${loop.index}" did="db${loop.index}"
												seledCity="${personRelation.city1}" /></td>
										<td class="content"><linkage:select type="district"
												name="resonRelations[${loop.index}].address3.district"
												did="db${loop.index}"
												seledDistrict="${personRelation.district1}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="resonRelations[${loop.index}].address3.town"
											value="${personRelation.town1}" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
			<div id="formRelation"></div>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="addCollateralRelation">添加押品所有人</button>
			</div>
			<div class="buttonlist buttonDivWidth" id="carAssessBut">
				<button id="submitCarAssess" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
				</button>
				<button id="backOper" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
				</button>
			</div>
		</form>
	</div>
</body>
