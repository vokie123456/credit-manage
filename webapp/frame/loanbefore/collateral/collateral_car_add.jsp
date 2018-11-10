<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/collateral_car_add.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${count}" />
	<input type="hidden" name="compResultSize" id="compResultSize"
		value="${compCount}" />
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.assessCar.edit.title" bundle="${lang}" />
		</div>

		<form id="assessCarEditForm" method="post">
			<input type="hidden" id="car_projectId" name="carProjectId"
				value="${projectId}" /> <input type="hidden" name="collateralId"
				value="${car.collateralId }" />
				<input type="hidden" id="collateralDebt" name="collateralDebt" value="${collateralDebt}" />
			<table class="col3">
				<tr>
					<td class="label">押品类型：</td>
					<td class="content"><bizoptionname:showname biztypekey="1152"
							value="115211" name="collateralType" /></td>
				</tr>
				<tr>
					<td class="label">他证号：</td>

					<td class="content"><input name="itCardNo" loxiaType="input"
						trim="true" value="${car.itCardNo }" /></td>
					<td class="label">公证号：</td>
					<td class="content"><input name="notaryNo" loxiaType="input"
						trim="true" value="${car.notaryNo }" /></td>
				</tr>
				<tr>
					<!-- 贷款金额 -->
					<td class="label">抵押贷款总额(万元)：</td>
					<td class="content"><input name="loanMoney"
						value="${car.loanMoney}" loxiaType="money" trim="true" /></td>

					<!-- 贷款余额  -->
					<td class="label">抵押贷款余额(万元)：</td>
					<td class="content"><input name="loanBalance"
						value="${car.loanBalance}" loxiaType="money" /></td>
				</tr>
				<tr>
					<!-- 购买日期 -->
					<td class="label">购买时间：</td>
					<td class="content"><input name="buyDate"
						value="${car.buyDate}" loxiaType="date" trim="true" /></td>
					<!-- 购买金额-->
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.buyMoney" bundle="${lang}" /></td>
					<td class="content"><input name="buyMoney"
						value="${car.buyMoney}" loxiaType="money" trim="true" /></td>
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
					<td class="label">车辆电器系统：</td>
					<td class="content"><input name="appSys" value="${car.appSys}"
						loxiaType="input" trim="true" /></td>

					<!-- GPS设备号 -->
					<td class="label">GPS设备号：</td>
					<td class="content"><input name="gpsNo" value="${car.gpsNo}"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- GPS安装日 -->
					<td class="label">GPS安装时间：</td>
					<td class="content"><input name="gpsIndate"
						value="${car.gpsIndate}" loxiaType="date" /></td>
					<!-- 购买来源 -->
					<td class="label">购买来源：</td>
					<td class="content"><bizoption:bizoption biztypekey="1088"
							name="buyFrom" isChoose="false" selected="${car.buyFrom}" /></td>
				</tr>
				<tr>
					<!-- 购买来源其他 -->
					<td class="label">购买来源其他：</td>
					<td class="content"><input name="buyfromOther"
						value="${car.buyfromOther}" loxiaType="input" trim="true" /></td>

					<!-- 购买原因 -->
					<td class="label">购买原因：</td>
					<td class="content"><bizoption:bizoption biztypekey="1089"
							name="buyReason" isChoose="false" selected="${car.buyReason}" /></td>
				</tr>
				<tr>
					<!-- 车商名称 -->
					<td class="label">车商名称：</td>
					<td class="content"><input name="dealer" value="${car.dealer}"
						loxiaType="input" trim="true" /></td>

					<!-- 车商电话 -->
					<td class="label">车商电话：</td>
					<td class="content"><input name="dealerTel"
						value="${car.dealerTel}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<td class="label">&nbsp;</td>
					<td class="content"></td>
					<td class="label"></td>
					<td class="content"></td>
				</tr>
				<tr>
					<!-- 前顺位抵押权 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.primarycolRight"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1077"
							name="primarycolRight" isChoose="false"
							selected="${car.primarycolRight}" /></td>
					<!-- 前顺位抵押金 -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.primarycolAmount"
							bundle="${lang}" /></td>
					<td class="content"><input name="primarycolAmount"
						value="${car.primarycolAmount}" loxiaType="money" trim="true" /></td>
				</tr>
				<tr>
					<td class="label">本次抵押金额(万元)：</td>
					<td class="content"><input name="thisAmount" id="thisAmount" onchange="countRate()"
						value="${car.thisAmount}" loxiaType="money" trim="true"
						/></td>
					<!-- 押品抵押率  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.collateral.collateralRate"
							bundle="${lang}" /></td>
					<td class="content"><input name="collateralRate" id="collateralRate"
						value="${car.collateralRate}" loxiaType="number" trim="true"
						decimal="2" /></td>
				</tr>
				<tr>
					<!-- 抵押/过户时间 -->
					<td class="label">抵押开始时间：</td>
					<td class="content"><input name="collateralTime" id="collateralTime"
						value="<fmt:formatDate value="${car.collateralTime}" pattern="yyyy-MM-dd"/>" loxiaType="date" checkmaster="setMinDate"/></td>
					<td class="label">抵押结束时间：</td>
					<td class="content"><input name="collateralTimeEnd" id="collateralTimeEnd"
						value="<fmt:formatDate value="${car.collateralTimeEnd}" pattern="yyyy-MM-dd"/>" loxiaType="date" checkmaster="setMaxDate"/></td>
				</tr>
				<tr>
					<!-- 评估人员 -->
					<td class="label">评估机构：</td>
					<td class="content"><input name="assessName"
						value="${car.assessName}" loxiaType="input" trim="true" /></td>

					<!-- 评估时间 -->
					<td class="label">评估时间：</td>
					<td class="content"><input name="assessTime"
						value="${car.assessTime}" loxiaType="date" /></td>
				</tr>
				<tr>
					<!-- 评估总价 -->
					<td class="label">评估总价(万元)：</td>
					<td class="content"><input name="assessTotalprice"
						value="${car.assessTotalprice}" loxiaType="money"
						trim="true" /></td>
					<!-- 资产状态 -->
					<td class="label">资产状态：</td>
					<td class="content"><bizoption:bizoption biztypekey="1081"
							name="collateralStatus" isChoose="false"
							selected="${car.collateralStatus}" /></td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label">备注：</td>
					<td colspan="3"><textarea rows="6" style="width: 94%;" name="remark"
							loxiaType="input">${car.remark}</textarea></td>
				</tr>

			</table>
			<!-- 共同所有人 -->
			<c:forEach items="${relationList}" var="personRelation"
				varStatus="loop">
				<div id="collateralRelation${loop.index}">
					<br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>押品所有人</strong></td>
								<td width="80%" align="right">
								<img  src="../images/icon_del.gif" alt="删除"  onclick="deleteRelation(${loop.index})" class="curSor" title="删除"/>
								<%-- <input type="button"
									onclick="deleteRelation(${loop.index})" class="comContactdel" 
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /> --%></td>
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
								loxiaType="input" trim="true"
								name="resonRelations[${loop.index}].relationobjName"
								value="${personRelation.relationobjName}" /></td>
							<td class="label"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content"><input id="workUnit" loxiaType="input"
								name="resonRelations[${loop.index}].workUnit"
								value="${personRelation.workUnit}" /></td>
						</tr>
						<tr>
							<td class="label">证件类型：</td>
							<td class="content"><bizoption:bizoption biztypekey="1007"
									id="cardType" name="resonRelations[${loop.index}].cardType"
									isChoose="false" selected="${personRelation.cardType}"
									checkmaster="validateCardType" /></td>
							<td class="label"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content"><input id="cardNo" loxiaType="input"
								name="resonRelations[${loop.index}].cardCode"
								value="${personRelation.cardCode}" checkmaster="validateCardNo" /></td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content"><input id="mobilePhone"
								loxiaType="input" trim="true"
								name="resonRelations[${loop.index}].mobilePhone"
								checkmaster="validatemobile"
								value="${personRelation.mobilePhone}" /></td>
							<td class="label"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content"><input id="position" loxiaType="input"
								name="resonRelations[${loop.index}].position"
								value="${personRelation.position}" /></td>
						</tr>
						<tr>
							<td class="label"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content"><input
								id="resonRelations[${count}].email" loxiaType="input"
								name="resonRelations[${loop.index}].email"
								value="${personRelation.email}" /></td>
							<td class="label"><fmt:message key="label.applyDetail.im"
									bundle="${lang}" /></td>
							<td class="content"><input id="resonRelations[${count}].im"
								loxiaType="input" name="resonRelations[${loop.index}].im"
								value="${personRelation.im}" /></td>
						</tr>
						<tr>
							<td class="label">工资收入：</td>
							<td class="content"><input id="incomeWorkunit"
								loxiaType="number" decimal="2"
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
												seledProvince="${personRelation.address.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="resonRelations[${loop.index}].address.city"
												cid="cc${loop.index}" did="dc${loop.index}"
												seledCity="${personRelation.address.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="resonRelations[${loop.index}].address.district"
												did="dc${loop.index}"
												seledDistrict="${personRelation.address.district}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="resonRelations[${loop.index}].address.detail"
											value="${personRelation.address.detail}" /></td>
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
												seledProvince="${personRelation.address2.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="resonRelations[${loop.index}].address2.city"
												cid="ca${loop.index}" did="da${loop.index}"
												seledCity="${personRelation.address2.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="resonRelations[${loop.index}].address2.district"
												did="da${loop.index}"
												seledDistrict="${personRelation.address2.district}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="resonRelations[${loop.index}].address2.detail"
											value="${personRelation.address2.detail}" /></td>
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
												seledProvince="${personRelation.address3.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="resonRelations[${loop.index}].address3.city"
												cid="cb${loop.index}" did="db${loop.index}"
												seledCity="${personRelation.address3.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="resonRelations[${loop.index}].address3.district"
												did="db${loop.index}"
												seledDistrict="${personRelation.address3.district}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="resonRelations[${loop.index}].address3.detail"
											value="${personRelation.address3.detail}" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
			<c:forEach items="${compCollateralRelationList}"
				var="compAssetRelation" varStatus="loop">
				<div id="collateralCompRelation${loop.index}">
					<br /> <br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>押品所有机构</strong></td>
								<td width="80%" align="right">
								<img  src="../images/icon_del.gif" alt="删除"  onclick="deleteCollateralCompRelation(${loop.index})" class="curSor" title="删除"/>
								<%-- <input type="button"
									onclick="deleteCollateralCompRelation(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /> --%></td>
							</tr>
						</table>
					</div>
					<table class="col3">
						<tr>
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].relationobjName"
								loxiaType="input" trim="true"
								value="${compAssetRelation.relationobjName }" /></td>
							<!-- 营业执照-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].cardNo"
								loxiaType="input" trim="true"
								value="${compAssetRelation.cardNo }" /></td>
						</tr>
						<tr>
							<!-- 法人代表名称-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].legalPerson"
								loxiaType="input" trim="true"
								value="${compAssetRelation.legalPerson}" /></td>
							</td>
							<!-- 法人代表身份证号 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.leal_person.cardNo"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].legalCardNo"
								loxiaType="input" trim="true" id="cardNo"
								value="${compAssetRelation.legalCardNo}"
								checkmaster="validateCardNo" /></td>
						</tr>
						<tr>
							<!-- 企业性质 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.character"
									bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1013"
									selected="${compAssetRelation.property }"
									name="collateralCompRelationVo[${loop.index}].property"
									isChoose="false" /></td>
							<!--企业成立日期 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.begin_date"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].establishDate"
								loxiaType="date" trim="true"
								value="${compAssetRelation.establishDate}" /></td>
						</tr>
						<tr>
							<!-- 注册资本币种 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.reg_currency"
									bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1103"
									name="collateralCompRelationVo[${loop.index}].registerMoneyType"
									isChoose="false"
									selected="${compAssetRelation.registerMoneyType }" /></td>
							<!-- 注册资本 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.reg_assets"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].registerMoney"
								loxiaType="money" trim="true"
								value="${compAssetRelation.registerMoney}" /></td>
						</tr>
						<tr>
							<!-- 工商营业执照号码 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.business_registrate"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].licenseNo"
								loxiaType="input" trim="true"
								value="${compAssetRelation.licenseNo}" /></td>
							<!-- 国标行业分类-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.nation_standard_classify"
									bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1014"
									name="collateralCompRelationVo[${loop.index}].industryType"
									isChoose="false" selected="${compAssetRelation.industryType }" /></td>
						</tr>
						<tr>
							<!-- 主营业务-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.scope_major"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].mainBusiness"
								loxiaType="input" trim="true"
								value="${compAssetRelation.mainBusiness}" /></td>
							<!-- 公司E－Mail-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].compEmail"
								loxiaType="input" trim="true" checkmaster="validateEmail"
								value="${compAssetRelation.compEmail}" /></td>
						</tr>
						<tr>
							<td class="label">实际控制人：</td>
							<td class="content"><input id="actualController"
								loxiaType="input"
								name="collateralCompRelationVo[${loop.index}].actualController"
								trim="true" value="${compAssetRelation.actualController}" /></td>
							<td class="label">实际控制人职务：</td>
							<td class="content"><input id="actualControllerPosition"
								loxiaType="input"
								name="collateralCompRelationVo[${loop.index}].actualControllerPosition"
								trim="true"
								value="${compAssetRelation.actualControllerPosition}" /></td>
						</tr>
						<tr>
							<td class="label">实际控制人电话：</td>
							<td class="content"><input id="actualControllerTel"
								loxiaType="input"
								name="collateralCompRelationVo[${loop.index}].actualControllerTel"
								trim="true" value="${compAssetRelation.actualControllerTel}" /></td>
							<td class="label">实际控制人手机：</td>
							<td class="content"><input id="actualControllerPhone"
								loxiaType="input" checkmaster="validatemobile"
								name="collateralCompRelationVo[${loop.index}].actualControllerPhone"
								trim="true" value="${compAssetRelation.actualControllerPhone}" /></td>
						</tr>
						<tr>
							<td class="label">联系人：</td>
							<td class="content"><input id="contactsPeople"
								loxiaType="input"
								name="collateralCompRelationVo[${loop.index}].contactsPeople"
								trim="true" value="${compAssetRelation.contactsPeople}" /></td>
							<td class="label">联系人职务：</td>
							<td class="content"><input id="contactsPeoplePosition"
								loxiaType="input"
								name="collateralCompRelationVo[${loop.index}].contactsPeoplePosition"
								trim="true" value="${compAssetRelation.contactsPeoplePosition}" /></td>
						</tr>
						<tr>
							<td class="label">联系人电话：</td>
							<td class="content"><input id="contactsPeopleTel"
								loxiaType="input"
								name="collateralCompRelationVo[${loop.index}].contactsPeopleTel"
								trim="true" value="${compAssetRelation.contactsPeopleTel}" /></td>
							<td class="label">联系人手机：</td>
							<td class="content"><input id="contactsPeoplePhone"
								loxiaType="input" checkmaster="validatemobile"
								name="collateralCompRelationVo[${loop.index}].contactsPeoplePhone"
								trim="true" value="${compAssetRelation.contactsPeoplePhone}" /></td>
						</tr>
						<tr>
							<!-- 联系电话-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.con_phone"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].contactPhone"
								loxiaType="input" trim="true"
								value="${compAssetRelation.contactPhone}" /></td>
							<!-- 传真电话-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.fax_phone"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].faxPhone"
								loxiaType="input" trim="true"
								value="${compAssetRelation.faxPhone}" /></td>
						</tr>
						<tr>
							<!-- 财务部联系电话-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.financial_phone"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].financeContactPhone"
								loxiaType="input" trim="true"
								value="${compAssetRelation.financeContactPhone}" /></td>
							<!--备注-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.remark" bundle="${lang}" /></td>
							<td class="content"><input
								name="collateralCompRelationVo[${loop.index}].remark"
								loxiaType="input" trim="true"
								value="${compAssetRelation.remark}" /></td>

						</tr>
						<tr>
							<!-- 注册地址-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.reg_address"
									bundle="${lang}" /></td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="collateralCompRelationVo[${loop.index}].address1.province"
												pid="p1${loop.index}" cid="c1${loop.index}"
												did="d1${loop.index}"
												seledProvince="${compAssetRelation.address1.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="collateralCompRelationVo[${loop.index}].address1.city"
												cid="c1${loop.index}" did="d1${loop.index}"
												seledCity="${compAssetRelation.address1.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="collateralCompRelationVo[${loop.index}].address1.district"
												did="d1${loop.index}"
												seledDistrict="${compAssetRelation.address1.district}" /></td>
										<td class="content"><input id="detail1"
											name="collateralCompRelationVo[${loop.index}].address1.detail"
											loxiaType="input" trim="true"
											value="${compAssetRelation.address1.detail}" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<!-- 通讯地址-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.comm_address"
									bundle="${lang}" /></td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="collateralCompRelationVo[${loop.index}].address2.province"
												pid="p2${loop.index}" cid="c2${loop.index}"
												did="d2${loop.index}"
												seledProvince="${compAssetRelation.address2.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="collateralCompRelationVo[${loop.index}].address2.city"
												cid="c2${loop.index}" did="d2${loop.index}"
												seledCity="${compAssetRelation.address2.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="collateralCompRelationVo[${loop.index}].address2.district"
												did="d2${loop.index}"
												seledDistrict="${compAssetRelation.address2.district}" /></td>
										<td class="content"><input id="detail1"
											name="collateralCompRelationVo[${loop.index}].address2.detail"
											loxiaType="input" trim="true"
											value="${compAssetRelation.address2.detail}" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
			<div id="formRelation"></div>
			<div id="formCollateralComRelation"></div>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="addCollateralRelation">添加押品所有人</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addCollateralGuaranteeCom">添加押品所有机构</button>
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
