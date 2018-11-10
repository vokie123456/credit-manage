<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/collateral_manage_house_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="houseCollateralDetail">
		<div class="divBgColor">
			<fmt:message key="label.assessHouse.edit.title" bundle="${lang}" />
			<input type="hidden" id="houseAssessFlag" value="${flag }" />
		</div>
		<form id="assessHouseEditForm" method="post">
			<input type="hidden" id="house_projectId" name="houseProjectId"
				value="${house.houseProjectId}" />
			<table class="col3">
				<tr>
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.type" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1097"
							value="109712" /></td>

					<!-- 押品号 
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
					
					-->
					<td colspan="2"><input id="houseCode"
						value="${house.houseCode}" type="hidden" /></td>
				</tr>
				<tr>
					<!-- 土地证号-->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
					<td class="content">${house.noland}</td>

					<!-- 地号/档案保管号 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
					<td class="content">${house.noarchive}</td>
				</tr>
				<tr>
					<!-- 房产证号 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
					<td class="content">${house.nohouse}</td>
					<!-- 房屋坐落  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
					<td class="content">${house.houseAddress}</td>
				</tr>
				<tr>
					<!-- 房屋结构 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStructure" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1074"
							value="${house.houseStructure}" /></td>

					<!-- 使用面积  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaUse" bundle="${lang}" /></td>
					<td class="content">${house.areaUse}</td>
				</tr>
				<tr>
					<!-- 建筑面积-->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaBuilding" bundle="${lang}" /></td>
					<td class="content">${house.areaBuilding}</td>

					<!-- 公摊面积 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaShare" bundle="${lang}" /></td>
					<td class="content">${house.areaShare}</td>
				</tr>
				<tr>
					<!-- 总楼层 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.floorTotal" bundle="${lang}" /></td>
					<td class="content">${house.floorTotal}</td>
					<!-- 所在楼层  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.floorLoacl" bundle="${lang}" /></td>
					<td class="content">${house.floorLoacl}</td>
				</tr>
				<tr>
					<!-- 设计/规划用途 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.housePlan" bundle="${lang}" /></td>
					<td class="content">${house.housePlan}</td>

					<!-- 取得方式  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseGetway" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1075"
							value="${house.houseGetway}" /></td>
				</tr>
				<tr>
					<!-- 房产类型  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseType" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1076"
							value="${house.houseType}" /></td>
					</td>
				</tr>
				<tr>
					<td class="label">他证号：</td>
					<td class="content">${house.itCardNo}</td>
					<!-- 前顺位抵押金额  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolAmount" bundle="${lang}" /></td>
					<td class="content">${house.primarycolAmount}</td>
				</tr>
				<tr>
					<!-- 前顺位抵押权 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolRight" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1077"
							value="${house.primarycolRight}" /></td>

					<!-- 前贷余额 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolBalance" bundle="${lang}" /></td>
					<td class="content">${house.primarycolBalance}</td>
				</tr>
				<tr>
					<!-- 房产现状 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStatus" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1078"
							value="${house.houseStatus}" /></td>

					<!-- 房产现状说明 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStatusdesc" bundle="${lang}" /></td>
					<td class="content">${house.houseStatusdesc}</td>
				</tr>
				<tr>
					<!-- 家有老幼拜访情况 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.youngOld" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1079"
							value="${house.youngOld}" /></td>

					<!-- 家访租约情况 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseLease" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1080"
							value="${house.houseLease}" /></td>
				</tr>
				<tr>
					<!-- 是否有产权纠纷 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.ifPropertydisputes" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1001"
							value="${house.ifPropertydisputes}" /></td>
					<!-- 资产状态 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralStatus" bundle="${lang}" /></td>

					<td class="content"><c:if test="${flag eq 'edit' }">
							<bizoption:bizoption biztypekey="1081" id="collateralStatus"
								isChoose="true" name="collateralStatus"
								selected="${house.collateralStatus}" /></td>
					</c:if>
					<c:if test="${flag eq 'detail' }">
						<bizoptionname:showname biztypekey="1081"
							value="${house.collateralStatus}" />
					</c:if>
					</td>
				</tr>
				<tr>
					<!-- 抵押/过户时间 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralTime" bundle="${lang}" /></td>
					<td class="content"><c:if test="${flag eq 'edit' }">
							<input id="collateralTime" value="${house.collateralTime}"
								loxiaType="date" trim="true" />
						</c:if> <c:if test="${flag eq 'detail' }">
					       ${house.collateralTime}
					    </c:if></td>

					<!-- 备注 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.remark" bundle="${lang}" /></td>
					<td class="content">${house.remark}</td>
				</tr>

			</table>

			<div class="divBgColor">
				<fmt:message key="label.assessCar.edit.assess.info" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估人员：</td>
					<td class="content">${house.appraiserName}</td>

					<!-- 评估时间 -->
					<td class="label">评估时间：</td>
					<td class="content">${house.assessTime}</td>
				</tr>
				<tr>
					<!-- 评估单价 -->
					<td class="label">评估单价：</td>
					<td class="content">${house.assessSingleprice}</td>
					<!-- 评估总价 -->
					<td class="label">评估总价：</td>
					<td class="content">${house.assessTotalprice}</td>
				</tr>
				<tr>
					<!-- 信息来源 -->
					<td class="label">信息来源：</td>
					<td class="content">${house.infoSource}</td>
				</tr>
			</table>
			<c:forEach items="${relationMap}" var="m">
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
			<div class="buttonlist buttonDivWidth" id="houseAssessButDiv">
				<button id="submitHouseAssess" type="button" loxiaType="button"
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
</html>
