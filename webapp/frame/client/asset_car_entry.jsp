<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/asset_car_entry.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="relationResultSize" id="relationResultSize"
		value="${relationResultSize}" />
	<input type="hidden" name="compRelationResultSize"
		id="compRelationResultSize" value="${compRelationResultSize}" />
	<form id="assetInfoForm" method="post">
		<div class="content_middle_more">
			<table class="col3">
				<tr>
					<td class="label">资产类型：</td>
					<td class="content"><bizoptionname:showname biztypekey="1097"
							value="${assetBasic.assetType }" /><input type="hidden"
						name="assetBasic.assetType" value="${assetBasic.assetType }" /> <label
						class="del_mandatory">&nbsp;*</label></td>
					<!--  
					<td class="label">是否抵押：</td>
					<td class="content"><bizoption:bizoption biztypekey="1001"
							id="ifCollateral" name="assetBasic.ifCollateral" isChoose="true"
							mandatory="true" selected="${assetBasic.ifCollateral }" /> <label
						class="del_mandatory">&nbsp;*</label></td>
					-->
				</tr>
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
						name="assetBasic.buyDate"
						value="${assetBasic.buyDate }" /></td>
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
					<td class="label"><fmt:message
							key="label.assessCar.edit.brand" bundle="${lang}" /></td>
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
					<td class="label"><fmt:message
							key="label.assessCar.edit.model" bundle="${lang}" /></td>
					<td class="content"><input name="assetBasicCar.model"
						value="${assetBasicCar.model}" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 颜色  -->
					<td class="label"><fmt:message
							key="label.assessCar.edit.color" bundle="${lang}" /></td>
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
						value="${assetBasicCar.buyfromOther}" loxiaType="input"
						trim="true" /></td>

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

			<!-- 共同所有人 -->
			<c:forEach items="${relationList}" var="personRelation"
				varStatus="loop">
				<div id="assetRelation${loop.index}">
					<br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>资产所有人</strong></td>
								<td width="80%" align="right"><input type="button"
									onclick="deleteRelation(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /></td>
							</tr>
						</table>
					</div>
					<table class="col3">
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
							<td class="content"><input id="relationobjName"
								loxiaType="input" trim="true"
								name="personAssetRelations[${loop.index}].relationobjName"
								value="${personRelation.relationobjName}" /></td>
						<td class="label"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content"><input id="workUnit" loxiaType="input"
								name="personAssetRelations[${loop.index}].workUnit"
								value="${personRelation.workUnit}" /></td>
						</tr>
						<tr>
							<td class="label">证件类型：</td>
							<td class="content"><bizoption:bizoption biztypekey="1007"
									id="cardType" name="personAssetRelations[${loop.index}].cardType"
									isChoose="false" selected="${personRelation.cardType}" checkmaster="validateCardType" /></td>
							<td class="label"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content"><input id="cardNo" loxiaType="input"
								name="personAssetRelations[${loop.index}].cardCode"
								value="${personRelation.cardCode}" checkmaster=""validateIdentify"" /></td>
						</tr>
						<tr>
							<td class="label"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content"><input id="mobilePhone"
								loxiaType="input" trim="true"
								name="personAssetRelations[${loop.index}].mobilePhone"
								checkmaster="validatemobile"
								value="${personRelation.mobilePhone}" /></td>
							<td class="label"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content"><input id="position" loxiaType="input"
								name="personAssetRelations[${loop.index}].position"
								value="${personRelation.position}" /></td>
						</tr>
							<td class="label"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content"><input
								id="resonRelations[${count}].email" loxiaType="input"
								name="personAssetRelations[${loop.index}].email"
								value="${personRelation.email}" checkmaster="validateEmail" /></td>
							<td class="label">工资收入：</td>
							<td class="content"><input id="incomeWorkunit"
								loxiaType="number" decimal="2"
								name="personAssetRelations[${loop.index}].incomeWorkunit"
								value="${personRelation.incomeWorkunit}" /></td>
						</tr>
						<tr>
							<td class="label">单位地址：</td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="personAssetRelations[${loop.index}].address.province"
												pid="pc${loop.index}" cid="cc${loop.index}"
												did="dc${loop.index}"
												seledProvince="${personRelation.address.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="personAssetRelations[${loop.index}].address.city"
												cid="cc${loop.index}" did="dc${loop.index}"
												seledCity="${personRelation.address.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="personAssetRelations[${loop.index}].address.district"
												did="dc${loop.index}"
												seledDistrict="${personRelation.address.district}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="personAssetRelations[${loop.index}].address.detail"
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
												name="personAssetRelations[${loop.index}].address2.province"
												pid="pa${loop.index}" cid="ca${loop.index}"
												did="da${loop.index}"
												seledProvince="${personRelation.address2.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="personAssetRelations[${loop.index}].address2.city"
												cid="ca${loop.index}" did="da${loop.index}"
												seledCity="${personRelation.address2.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="personAssetRelations[${loop.index}].address2.district"
												did="da${loop.index}"
												seledDistrict="${personRelation.address2.district}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="personAssetRelations[${loop.index}].address2.detail"
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
												name="personAssetRelations[${loop.index}].address3.province"
												pid="pb${loop.index}" cid="cb${loop.index}"
												did="db${loop.index}"
												seledProvince="${personRelation.address3.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="personAssetRelations[${loop.index}].address3.city"
												cid="cb${loop.index}" did="db${loop.index}"
												seledCity="${personRelation.address3.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="personAssetRelations[${loop.index}].address3.district"
												did="db${loop.index}"
												seledDistrict="${personRelation.address3.district}" /></td>
										<td class="content"><input id="town" loxiaType="input"
											name="personAssetRelations[${loop.index}].address3.detail"
											value="${personRelation.address3.detail}" /></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
			<c:forEach items="${compAssetRelationList}" var="compAssetRelation"
				varStatus="loop">
				<div id="assetCompRelation${loop.index}">
					<br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>资产所有机构</strong></td>
								<td width="80%" align="right"><input type="button"
									onclick="deleteAssetCompRelation(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /></td>
							</tr>
						</table>
					</div>
					<table class="col3">
						<tr>

							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].relationobjName"
								loxiaType="input" trim="true"
								value="${compAssetRelation.relationobjName }" /></td>
							<!-- 营业执照-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].cardNo"
								loxiaType="input" trim="true"
								value="${compAssetRelation.cardNo }" /></td>
						</tr>
						<tr>
							<!-- 法人代表名称-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].legalPerson"
								loxiaType="input" trim="true"
								value="${compAssetRelation.legalPerson}" /></td>
							</td>
							<!-- 法人代表身份证号 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.leal_person.cardNo"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].legalCardNo"
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
									name="compAssetRelations[${loop.index}].property"
									isChoose="false" /></td>
							<!--企业成立日期 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.begin_date"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].establishDate"
								loxiaType="date" trim="true" 
								value="${compAssetRelation.establishDate}" /></td>
						</tr>
						<tr>
							<!-- 注册资本币种 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.reg_currency"
									bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1103"
									name="compAssetRelations[${loop.index}].registerMoneyType"
									isChoose="false"
									selected="${compAssetRelation.registerMoneyType }" /></td>
							<!-- 注册资本 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.reg_assets"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].registerMoney"
								loxiaType="money" trim="true"
								value="${compAssetRelation.registerMoney}" /></td>
						</tr>
						<tr>
							<!-- 工商营业执照号码 -->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.business_registrate"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].licenseNo"
								loxiaType="input" trim="true"
								value="${compAssetRelation.licenseNo}" /></td>
							<!-- 国标行业分类-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.nation_standard_classify"
									bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1014"
									name="compAssetRelations[${loop.index}].industryType"
									isChoose="false" selected="${compAssetRelation.industryType }" /></td>
						</tr>
						<tr>
							<!-- 主营业务-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.scope_major"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].mainBusiness"
								loxiaType="input" trim="true"
								value="${compAssetRelation.mainBusiness}" /></td>
							<!-- 公司E－Mail-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].compEmail"
								loxiaType="input" trim="true" checkmaster="validateEmail"
								value="${compAssetRelation.compEmail}" /></td>
						</tr>
						<tr>
							<td class="label">实际控制人：</td>
							<td class="content"><input id="actualController"
								loxiaType="input"
								name="compAssetRelations[${loop.index}].actualController"
								trim="true" value="${compAssetRelation.actualController}" /></td>
							<td class="label">实际控制人职务：</td>
							<td class="content"><input id="actualControllerPosition"
								loxiaType="input"
								name="compAssetRelations[${loop.index}].actualControllerPosition"
								trim="true"
								value="${compAssetRelation.actualControllerPosition}" /></td>
						</tr>
						<tr>
							<td class="label">实际控制人电话：</td>
							<td class="content"><input id="actualControllerTel"
								loxiaType="input"
								name="compAssetRelations[${loop.index}].actualControllerTel"
								trim="true" value="${compAssetRelation.actualControllerTel}" /></td>
							<td class="label">实际控制人手机：</td>
							<td class="content"><input id="actualControllerPhone"
								loxiaType="input" checkmaster="validatemobile"
								name="compAssetRelations[${loop.index}].actualControllerPhone"
								trim="true" value="${compAssetRelation.actualControllerPhone}" /></td>
						</tr>
						<tr>
							<td class="label">联系人：</td>
							<td class="content"><input id="contactsPeople"
								loxiaType="input"
								name="compAssetRelations[${loop.index}].contactsPeople"
								trim="true" value="${compAssetRelation.contactsPeople}" /></td>
							<td class="label">联系人职务：</td>
							<td class="content"><input id="contactsPeoplePosition"
								loxiaType="input"
								name="compAssetRelations[${loop.index}].contactsPeoplePosition"
								trim="true" value="${compAssetRelation.contactsPeoplePosition}" /></td>
						</tr>
						<tr>
							<td class="label">联系人电话：</td>
							<td class="content"><input id="contactsPeopleTel"
								loxiaType="input"
								name="compAssetRelations[${loop.index}].contactsPeopleTel"
								trim="true" value="${compAssetRelation.contactsPeopleTel}" /></td>
							<td class="label">联系人手机：</td>
							<td class="content"><input id="contactsPeoplePhone"
								loxiaType="input" checkmaster="validatemobile"
								name="compAssetRelations[${loop.index}].contactsPeoplePhone"
								trim="true" value="${compAssetRelation.contactsPeoplePhone}" /></td>
						</tr>
						<tr>
							<!-- 联系电话-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.con_phone"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].contactPhone"
								loxiaType="input" trim="true"
								value="${compAssetRelation.contactPhone}" /></td>
							<!-- 传真电话-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.fax_phone"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].faxPhone"
								loxiaType="input" trim="true"
								value="${compAssetRelation.faxPhone}" /></td>
						</tr>
						<tr>
							<!-- 财务部联系电话-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.enterprise.financial_phone"
									bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].financeContactPhone"
								loxiaType="input" trim="true"
								value="${compAssetRelation.financeContactPhone}" /></td>
							<!--备注-->
							<td class="label"><fmt:message
									key="label.assess.guarantee.remark" bundle="${lang}" /></td>
							<td class="content"><input
								name="compAssetRelations[${loop.index}].remark"
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
												name="compAssetRelations[${loop.index}].address1.province"
												pid="pv${loop.index}" cid="cv${loop.index}"
												did="dv${loop.index}"
												seledProvince="${compAssetRelation.address1.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="compAssetRelations[${loop.index}].address1.city"
												cid="cv${loop.index}" did="dv${loop.index}"
												seledCity="${compAssetRelation.address1.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="compAssetRelations[${loop.index}].address1.district"
												did="dv${loop.index}"
												seledDistrict="${compAssetRelation.address1.district}" /></td>
										<td class="content"><input id="detail1"
											name="compAssetRelations[${loop.index}].address1.detail"
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
												name="compAssetRelations[${loop.index}].address2.province"
												pid="pn${loop.index}" cid="cn${loop.index}"
												did="dn${loop.index}"
												seledProvince="${compAssetRelation.address2.province}" /></td>
										<td class="content"><linkage:select type="city"
												name="compAssetRelations[${loop.index}].address2.city"
												cid="cn${loop.index}" did="dn${loop.index}"
												seledCity="${compAssetRelation.address2.city}" /></td>
										<td class="content"><linkage:select type="district"
												name="compAssetRelations[${loop.index}].address2.district"
												did="dn${loop.index}"
												seledDistrict="${compAssetRelation.address2.district}" /></td>
										<td class="content"><input id="detail1"
											name="compAssetRelations[${loop.index}].address2.detail"
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
			<div id="formAssetComRelation"></div>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="addAssetRelation">添加资产所有人</button>
				<button type="button" loxiaType="button" class="confirm"
					id="addAssetGuaranteeCom">添加资产所有机构</button>
			</div>
		</div>
		<input type="hidden" id="clientId" value="${clientId }" /> <input
			type="hidden" id="assetId" value="${assetBasic.assetId }" />
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitAssetCar">保存</button>
		</div>
	</form>
</body>