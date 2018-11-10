<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/collateral_manage_car_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.assessCar.edit.title" bundle="${lang}" />
			<input type="hidden" id="carAssessFlag" value="${flag }" />
		</div>
		<form id="assessCarEditForm" method="post">
			<input type="hidden" name="CarProjectId" id="car_projectId"
				value="${car.carProjectId}" />
			<table class="col3">
				<tr>
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.type" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1097"
							value="109711" name="collateralType" /></td>

					<!-- 押品号 
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
					<td class="col_1" align="left">${car.carCode}
					-->
					<td colspan="2"><input id="carCode" name="carCode"
						value="${car.carCode}" type="hidden" trim="true" readonly="true" /></td>
				</tr>
				<tr>
					<!-- 车架号 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
					<td class="content">${car.winCode}</td>

					<!-- 车牌类型 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateType" bundle="${lang}" /></td>
					<td class="content">${car.plateType}</td>
				</tr>
				<tr>
					<!-- 车牌号码 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
					<td class="content">${car.plateNo}</td>

					<!-- 车价  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carPrice" bundle="${lang}" /></td>
					<td class="content">${car.carPrice}</td>
				</tr>
				<tr>
					<!-- 发票金额 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
					<td class="content">${car.invoicePrice}</td>

					<!-- 出厂日期  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.releaseDate" bundle="${lang}" /></td>
					<td class="content">${car.releaseDate}</td>
				</tr>
				<tr>
					<!-- 登记日期 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.recordDate" bundle="${lang}" /></td>
					<td class="content">${car.recordDate}</td>

					<!-- 产地 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.prodArea" bundle="${lang}" /></td>
					<td class="content">${car.prodArea}</td>
				</tr>
				<tr>
					<!-- 厂牌 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.brand" bundle="${lang}" /></td>
					<td class="content">${car.brand}</td>
					<!-- 车辆类型  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.carType" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1082"
							value="${car.carType}" /></td>
				</tr>
				<tr>
					<!-- 排量 -->
					<td class="label"><fmt:message key="label.assessCar.edit.air"
							bundle="${lang}" /></td>
					<td class="content">${car.air}</td>

					<!-- 型式  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.model" bundle="${lang}" /></td>
					<td class="content">${car.model}</td>
				</tr>
				<tr>
					<!-- 颜色  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.color" bundle="${lang}" /></td>
					<td class="content">${car.color}</td>

					<!-- 里程 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.mileage" bundle="${lang}" /></td>
					<td class="content">${car.mileage}</td>
				</tr>
				<tr>
					<!-- 发动机号  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.engine_No" bundle="${lang}" /></td>
					<td class="content">${car.engineNo}</td>
					<!-- 变速箱方式  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.shiftMethod" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1083"
							value="${car.shiftMethod}" /></td>
				</tr>
				<tr>
					<!-- 车门型式 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.doorMethod" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1084"
							value="${car.doorMethod}" /></td>

					<!-- 转动方式 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.drivingMethod" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1085"
							value="${car.drivingMethod}" /></td>
				</tr>
				<tr>
					<!-- 供油类型 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.supplyoilMethod" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1086"
							value="${car.supplyoilMethod}" /></td>

					<!-- 供油系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.supplyoilSys" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1087"
							value="${car.supplyoilSys}" /></td>
				</tr>
				<tr>
					<!-- 年检日期 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.yearCheck" bundle="${lang}" /></td>
					<td class="content">${car.yearCheck}</td>
					<!-- 车辆动力总成系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.powerSys" bundle="${lang}" /></td>
					<td class="content">${car.powerSys}</td>
				</tr>
				<tr>
					<!-- 车辆传动系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.drivingSys" bundle="${lang}" /></td>
					<td class="content">${car.drivingSys}</td>

					<!-- 车辆循环系统 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.cycleSys" bundle="${lang}" /></td>
					<td class="content">${car.cycleSys}</td>
				</tr>
				<tr>
					<!-- 车辆电器系统 -->
					<td class="label">车辆电器系统：</td>
					<td class="content">${car.appSys}</td>

					<!-- GPS设备号 -->
					<td class="label">GPS设备号：</td>
					<td class="content">${car.gpsNo}</td>
				</tr>
				<tr>
					<!-- GPS安装日 -->
					<td class="label">GPS安装时间：</td>
					<td class="content">${car.gpsIndate}<!-- 购买来源 -->
					<td class="label">购买来源：</td>
					<td class="content"><bizoptionname:showname biztypekey="1088"
							value="${car.buyFrom}" /></td>
				</tr>
				<tr>
					<!-- 购买来源其他 -->
					<td class="label">购买来源其他：</td>
					<td class="content">${car.buyfromOther}</td>

					<!-- 购买原因 -->
					<td class="label">购买原因：</td>
					<td class="content"><bizoptionname:showname biztypekey="1089"
							value="${car.buyReason}" /></td>
				</tr>
				<tr>
					<!-- 车商名称 -->
					<td class="label">车商名称：</td>
					<td class="content">${car.dealer}</td>
				</tr>
				<tr>
					<!-- 车商电话 -->
					<td class="label">车商电话：</td>
					<td class="content">${car.dealerTel}</td>
					<!-- 资产状态 -->
					<td class="label">资产状态：</td>
					<td class="content"><c:if test="${flag eq 'edit' }">
							<bizoption:bizoption biztypekey="1081" id="collateralStatus"
								isChoose="false" name="collateralStatus"
								selected="${car.collateralStatus}" />
						</c:if> <c:if test="${flag eq 'detail' }">
							<bizoptionname:showname biztypekey="1081"
								value="${car.collateralStatus}" />
						</c:if></td>
					</td>
				</tr>
				<tr>
					<!-- 抵押/过户时间 -->
					<td class="label">抵押时间：</td>
					<td class="content"><c:if test="${flag eq 'edit' }">
							<input id="collateralTime" value="${car.collateralTime}"
								loxiaType="date" trim="true" />
						</c:if> <c:if test="${flag eq 'detail' }">
					       ${car.collateralTime}
					    </c:if></td>

					<td class="label">他证号：</td>
					<td class="content">${car.itCardNo}</td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label">备注：</td>
					<td class="content">${car.remark}</td>
				</tr>
			</table>

			<div class="divBgColor">
				<fmt:message key="label.assessCar.edit.assess.info" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估人员：</td>
					<td class="content">${car.appraiserName}<!-- 评估时间 -->
					<td class="label">评估时间：</td>
					<td class="content">${car.assessTime}</td>
				</tr>
				<tr>
					<!-- 评估总价 -->
					<td class="label">评估总价：</td>
					<td class="content">${car.assessTotalprice}</td>

					<!-- 信息来源 -->
					<td class="label">信息来源：</td>
					<td class="content">${car.infoSource}</td>
				</tr>
			</table>
			<c:forEach items="${relationMap}" var="m">
				<table>
					<div class="divBgColor">
						押品所有人
					</div>

					<table class="col3">
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
							<td class="content">${m.key.relationobjName}</td>
							<td class="label"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content">${m.key.cardCode}</td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content">${m.key.mobilePhone}</td>
							<td class="label"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content">${m.key.email}</td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content">${m.key.workUnit}</td>
							<td class="label"><fmt:message key="label.applyDetail.im"
								bundle="${lang}" /></td>
						<td class="content">${m.key.im}</td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content">${m.key.position}</td>
							<td class="label">工资收入：</td>
							<td class="content">${m.key.incomeWorkunit}</td>

						</tr>
						<c:forEach items="${m.value}" var="address">
							<c:if test="${address.addrType=='102111'}">
								<!-- 地址信息循环 -->
								<tr>
									<td class="label"><fmt:message
											key="label.applyDetail.address1" bundle="${lang}" /></td>
									<td colspan="4">
										<table class="col3">
											<tr>
												<td class="content"><linkageshow:show type="province"
														name="address" property="province" /></td>
												<td class="content"><linkageshow:show type="city"
														name="address" property="city" /></td>
												<td class="content"><linkageshow:show type="district"
														name="address" property="district" /></td>
												<td class="content">${address.town}${address.road}${address.no}${address.detail}</td>
											</tr>
										</table>
									</td>
								</tr>
							</c:if>
						</c:forEach>

						<c:forEach items="${m.value}" var="address">
							<c:if test="${address.addrType=='102113'}">
								<tr>
									<td class="label"><fmt:message
											key="label.applyDetail.address3" bundle="${lang}" /></td>
									<td colspan="3">
										<table class="col3">
											<tr>
												<td class="content"><linkageshow:show type="province"
														name="address" property="province" /></td>
												<td class="content"><linkageshow:show type="city"
														name="address" property="city" /></td>
												<td class="content"><linkageshow:show type="district"
														name="address" property="district" /></td>
												<td class="content">${address.town}${address.road}${address.no}${address.detail}</td>
											</tr>
										</table>
									</td>
								</tr>
							</c:if>
						</c:forEach>

						<c:forEach items="${m.value}" var="address">
							<c:if test="${address.addrType=='102112'}">
								<tr>
									<td class="label"><fmt:message
											key="label.applyDetail.address2" bundle="${lang}" /></td>
									<td colspan="3">
										<table class="col3">
											<tr>
												<td class="content"><linkageshow:show type="province"
														name="address" property="province" /></td>
												<td class="content"><linkageshow:show type="city"
														name="address" property="city" /></td>
												<td class="content"><linkageshow:show type="district"
														name="address" property="district" /></td>
												<td class="content">${address.town}${address.road}${address.no}${address.detail}</td>
											</tr>
										</table>
									</td>
								</tr>
							</c:if>
						</c:forEach>
					</table>
					</br>
					</c:forEach>
					<div class="buttonlist buttonDivWidth" id="carAssessButDiv">
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
