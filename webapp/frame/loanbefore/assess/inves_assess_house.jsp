<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/inves_assess_house.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="houseCollateralDetail">
		<div class="divBgColor">
			<fmt:message key="label.assessHouse.edit.title" bundle="${lang}" />
		</div>
		<input type="hidden" id="assessStatus" value="${assessStatus }" />
		<form id="assessHouseEditForm" method="post">
			<input type="hidden" id="house_projectId" name="houseProjectId"
				value="${house.houseProjectId}" />
			<table class="col3">
				<tr>
					<td class="label">押品类型</td>
					<td class="content"><bizoptionname:showname biztypekey="1097"
							value="109712" name="collateralType" /></td>

					<!-- 押品号 
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
					-->
					<td colspan="2"><input id="houseCode" name="houseCode"
						value="${house.houseCode}" type="hidden" trim="true"
						readonly="true" /></td>
				</tr>
				<tr>
					<!-- 土地证号-->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
					<td class="content"><input name="noland"
						value="${house.noland}" loxiaType="input" trim="true" /></td>

					<!-- 地号/档案保管号 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
					<td class="content"><input name="noarchive"
						value="${house.noarchive}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 房产证号 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
					<td class="content"><input name="nohouse"
						value="${house.nohouse}" loxiaType="input" trim="true" /></td>
					<!-- 房屋坐落  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
					<td class="content"><input name="houseAddress"
						value="${house.houseAddress}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 房屋结构 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStructure" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1074"
							name="houseStructure" isChoose="false"
							selected="${house.houseStructure}" /></td>

					<!-- 使用面积  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaUse" bundle="${lang}" /></td>
					<td class="content"><input name="areaUse"
						value="${house.areaUse}" loxiaType="number" decimal="2"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 建筑面积-->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaBuilding" bundle="${lang}" /></td>
					<td class="content"><input name="areaBuilding"
						value="${house.areaBuilding}" loxiaType="number" decimal="2"
						trim="true" /></td>

					<!-- 公摊面积 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.areaShare" bundle="${lang}" /></td>
					<td class="content"><input name="areaShare"
						value="${house.areaShare}" loxiaType="number" decimal="2"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 总楼层 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.floorTotal" bundle="${lang}" /></td>
					<td class="content"><input name="floorTotal"
						value="${house.floorTotal}" loxiaType="number" trim="true" /></td>
					<!-- 所在楼层  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.floorLoacl" bundle="${lang}" /></td>
					<td class="content"><input name="floorLoacl"
						value="${house.floorLoacl}" loxiaType="number" trim="true" /></td>

				</tr>
				<tr>
					<!-- 设计/规划用途 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.housePlan" bundle="${lang}" /></td>
					<td class="content"><input name="housePlan"
						value="${house.housePlan}" loxiaType="input" trim="true" /></td>

					<!-- 取得方式  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseGetway" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1075"
							name="houseGetway" isChoose="false"
							selected="${house.houseGetway}" /></td>
				</tr>
				<tr>
					<!-- 房产类型  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseType" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1076"
							name="houseType" isChoose="false" selected="${house.houseType}" /></td>
				</tr>
				<tr>
					<td class="label">他证号：</td>
					<td class="content"><input name="itCardNo"
						value="${house.itCardNo}" loxiaType="input" trim="true" /></td>
					<!-- 前顺位抵押金额  -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolAmount" bundle="${lang}" /></td>
					<td class="content"><input name="primarycolAmount"
						value="${house.primarycolAmount}" loxiaType="number" decimal="2"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 前顺位抵押权 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolRight" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1077"
							name="primarycolRight" isChoose="false"
							selected="${house.primarycolRight}" /></td>

					<!-- 前贷余额 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.primarycolBalance" bundle="${lang}" /></td>
					<td class="content"><input name="primarycolBalance"
						value="${house.primarycolBalance}" loxiaType="number" decimal="2"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 房产现状 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStatus" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1078"
							name="houseStatus" isChoose="false"
							selected="${house.houseStatus}" /></td>
					<!-- 房产现状说明 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseStatusdesc" bundle="${lang}" /></td>
					<td class="content"><input name="houseStatusdesc"
						value="${house.houseStatusdesc}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 家有老幼拜访情况 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.youngOld" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1080"
							name="youngOld" isChoose="false" selected="${house.youngOld}" /></td>

					<!-- 家访租约情况 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.houseLease" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1080"
							name="houseLease" isChoose="false" selected="${house.houseLease}" /></td>
				</tr>
				<tr>
					<!-- 是否有产权纠纷 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.ifPropertydisputes" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1080"
							name="ifPropertydisputes" isChoose="false"
							selected="${house.ifPropertydisputes}" /></td>
					<!-- 资产状态 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralStatus" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1081"
							name="collateralStatus" isChoose="false"
							selected="${house.collateralStatus}" /></td>

				</tr>
				<tr>
					<!-- 抵押/过户时间 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.collateralTime" bundle="${lang}" /></td>
					<td class="content"><input name="collateralTime"
						value="${house.collateralTime}" loxiaType="date" /></td>

					<!-- 备注 -->
					<td class="label"><fmt:message
							key="label.assessHouse.edit.remark" bundle="${lang}" /></td>
					<td class="content"><input name="remark"
						value="${house.remark}" loxiaType="input" trim="true" /></td>
				</tr>
			</table>
			<br />
			<div class="divBgColor">
				<fmt:message key="label.assessCar.edit.assess.info" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估人员：</td>
					<td class="content"><input name="appraiserName"
						value="${house.appraiserName}" loxiaType="input" trim="true" /></td>

					<!-- 评估时间 -->
					<td class="label">评估时间：</td>
					<td class="content"><input name="assessTime"
						value="${house.assessTime}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 评估单价 -->
					<td class="label">评估单价：</td>
					<td class="content"><input name="assessSingleprice"
						value="${house.assessSingleprice}" loxiaType="number" decimal="2"
						trim="true" max="9999999999999.99" /></td>
					<!-- 评估总价 -->
					<td class="label">评估总价：</td>
					<td class="content"><input name="assessTotalprice"
						value="${house.assessTotalprice}" loxiaType="number" decimal="2"
						trim="true" max="9999999999999.99" /></td>
				</tr>
				<tr>
					<!-- 信息来源 -->
					<td class="label">信息来源：</td>
					<td class="content"><input name="infoSource"
						value="${house.infoSource}" loxiaType="input" trim="true" /></td>
				</tr>
			</table>
			<c:forEach items="${relationList}" var="personRelation"
				varStatus="loop">
				<div id="collateralRelation${loop.index}">
					<br /> <br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>押品所有人</strong></td>
								<td width="80%" align="right"><input type="button"
									onclick="deleteRelation(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /></td>
								<input type="hidden"
									name="resonRelations[${loop.index}].relationId"
									value="${personRelation.relationId}" />
							</tr>
						</table>
					</div>
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
		</form>
		<div class="buttonlist buttonDivWidth" id="houseAssessBut">
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