<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>负债信息编辑</title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
<%-- 	<div class="content_middle_more">
		<table class=" tabcustomPeo"  cellpadding="0"
					cellspacing="0">
			<tr>
				<td class="label BgColor borBottom" style="width:13%;">资产类型：</td>
				<td class=" textalignLeft borBottom tabBorderRight"  style=""><bizoptionname:showname biztypekey="1097"
						value="${assetBasic.assetType }" /><input id="assetType"
					type="hidden" value="${assetBasic.assetType }" /></td>
				<!-- 
				<td class="label BgColor">是否抵押：</td>
				<td class="content"><bizoptionname:showname biztypekey="1001"
						value="${assetBasic.ifCollateral }" /></td>
				-->
			</tr>
		</table>
	</div> --%>
	<div class="content_middle_more" id="loadOther">
		<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
					<tr>
				<td class="label BgColor">资产类型：</td>
				<td class=" content tabBorderRight" colspan="3" ><bizoptionname:showname biztypekey="1097"
						value="${assetBasic.assetType }" /><input id="assetType"
					type="hidden" value="${assetBasic.assetType }" /></td>
		<c:if test="${!empty assetBasicCar }">
				<tr>
					<td class="label BgColor">车贷总额：</td>
					<td class="content">${assetBasic.loanMoney }</td>
					<td class="label BgColor">车贷余额：</td>
					<td class="content tabBorderRight">${assetBasic.loanBalance }</td>
				</tr>
				<tr>
					<td class="label BgColor">购买时间：</td>
					<td class="content">${assetBasic.buyDate }</td>
					<td class="label BgColor">购买金额：</td>
					<td class="content tabBorderRight">${assetBasic.buyMoney }</td>
				</tr>
				<tr>
					<!-- 车架号 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.winCode}</td>

					<!-- 车牌类型 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.plateType" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.plateType}</td>
				</tr>
				<tr>
					<!-- 车牌号码 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.plateNo}</td>

					<!-- 出厂日期  -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.releaseDate" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.releaseDate}</td>
				</tr>
				<tr>
					<!-- 登记日期 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.recordDate" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.recordDate}</td>

					<!-- 产地 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.prodArea" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.prodArea}</td>
				</tr>
				<tr>
					<!-- 厂牌 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.brand" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.brand}</td>
					<!-- 车辆类型  -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.carType" bundle="${lang}" /></td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1082"
							value="${assetBasicCar.carType}" /></td>
				</tr>
				<tr>
					<!-- 排量 -->
					<td class="label BgColor"><fmt:message key="label.assessCar.edit.air"
							bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.air}</td>

					<!-- 型式  -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.model" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.model}</td>
				</tr>
				<tr>
					<!-- 颜色  -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.color" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.color}</td>

					<!-- 里程 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.mileage" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.mileage}</td>
				</tr>
				<tr>
					<!-- 发动机号  -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.engine_No" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.engineNo}</td>
					<!-- 变速箱方式  -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.shiftMethod" bundle="${lang}" /></td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1083"
							value="${assetBasicCar.shiftMethod}" /></td>

				</tr>
				<tr>
					<!-- 车门型式 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.doorMethod" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1084"
							value="${assetBasicCar.doorMethod}" /></td>

					<!-- 转动方式 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.drivingMethod" bundle="${lang}" /></td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1085"
							value="${assetBasicCar.drivingMethod}" /></td>
				</tr>
				<tr>
					<!-- 供油类型 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.supplyoilMethod" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1086"
							value="${assetBasicCar.supplyoilMethod}" /></td>
					<!-- 供油系统 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.supplyoilSys" bundle="${lang}" /></td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1087"
							value="${assetBasicCar.supplyoilSys}" /></td>
				</tr>
				<tr>
					<!-- 年检日期 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.yearCheck" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.yearCheck}</td>

					<!-- 车辆动力总成系统 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.powerSys" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.powerSys}</td>
				</tr>
				<tr>
					<!-- 车辆传动系统 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.drivingSys" bundle="${lang}" /></td>
					<td class="content">${assetBasicCar.drivingSys}</td>

					<!-- 车辆循环系统 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.cycleSys" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicCar.cycleSys}</td>
				</tr>
				<tr>
					<!-- 车辆电器系统 -->
					<td class="label BgColor">车辆电器系统：</td>
					<td class="content">${assetBasicCar.appSys}</td>

					<!-- GPS设备号 -->
					<td class="label BgColor">GPS设备号：</td>
					<td class="content tabBorderRight">${assetBasicCar.gpsNo}</td>
				</tr>
				<tr>
					<!-- GPS安装日 -->
					<td class="label BgColor">GPS安装时间：</td>
					<td class="content">${assetBasicCar.gpsIndate}</td>
					<!-- 购买来源 -->
					<td class="label BgColor">购买来源：</td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1088"
							value="${assetBasicCar.buyFrom}" /></td>
				</tr>
				<tr>
					<!-- 购买来源其他 -->
					<td class="label BgColor">购买来源其他：</td>
					<td class="content">${assetBasicCar.buyfromOther}</td>

					<!-- 购买原因 -->
					<td class="label BgColor">购买原因：</td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1089"
							value="${assetBasicCar.buyReason}" /></td>
				</tr>
				<tr>
					<!-- 车商名称 -->
					<td class="label BgColor">车商名称：</td>
					<td class="content">${assetBasicCar.dealer}</td>

					<!-- 车商电话 -->
					<td class="label BgColor">车商电话：</td>
					<td class="content tabBorderRight">${assetBasicCar.dealerTel}</td>
				</tr>

				<tr>
					<!-- 备注 -->
					<td class="label BgColor">备注：</td>
					<td colspan="4" class="content tabBorderRight">${assetBasicCar.remark}</td>
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
								<td width="150"><strong>资产共同所有人</strong></td>
							</tr>
						</table>
					</div>
					<input type="hidden"
						name="personAssetRelations[${loop.index}].relationId"
						value="${personRelation.relationId}" />
					<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
							<td class="content">${personRelation.relationobjName}</td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.workUnit}</td>
						</tr>
						<tr>
							<td class="label BgColor">证件类型：</td>
							<td class="content"><bizoptionname:showname
									biztypekey="1007" value="${personRelation.cardType}" /></td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.cardCode}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content">${personRelation.mobilePhone}</td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.position}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content">${personRelation.email}</td>
							<td class="label BgColor">工资收入：</td>
							<td class="content tabBorderRight">${personRelation.incomeWorkunit}</td>
						</tr>
						<tr>
							<td class="label BgColor">单位地址：</td>
							<td class="content tabBorderRight" colspan="3">${personRelation.address.pname}${personRelation.address.cname}${personRelation.address.dname}${personRelation.address.detail}</td>
						</tr>
						<tr>
							<td class="label BgColor">居住地址：</td>
										<td class="content tabBorderRight" colspan="3">${personRelation.address2.pname}${personRelation.address2.cname}${personRelation.address2.dname}${personRelation.address2.detail}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.address1" bundle="${lang}" /></td>
										<td class="content tabBorderRight" colspan="3">${personRelation.address3.pname}${personRelation.address3.cname}${personRelation.address3.dname}${personRelation.address3.detail}</td>
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
							</tr>
						</table>
					</div>
					<table  class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.relationobjName }</td>
							<!-- 营业执照-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.cardNo }</td>
						</tr>
						<tr>
							<!-- 法人代表名称-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.legalPerson}</td>
							<!-- 法人代表身份证号 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.leal_person.cardNo"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.legalCardNo}</td>
						</tr>
						<tr>
							<!-- 企业性质 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.character"
									bundle="${lang}" /></td>
							<td class="content"><bizoptionname:showname biztypekey="1013"
									value="${compAssetRelation.property }" /></td>
							<!--企业成立日期 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.begin_date"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.establishDate}</td>
						</tr>
						<tr>
							<!-- 注册资本币种 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_currency"
									bundle="${lang}" /></td>
							<td class="content"><bizoptionname:showname
									biztypekey="1103"
									value="${compAssetRelation.registerMoneyType }" /></td>
							<!-- 注册资本 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_assets"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.registerMoney}</td>
						</tr>
						<tr>
							<!-- 工商营业执照号码 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.business_registrate"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.licenseNo}</td>
							<!-- 国标行业分类-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.nation_standard_classify"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight" ><bizoptionname:showname
									biztypekey="1014" value="${compAssetRelation.industryType }" /></td>
						</tr>
						<tr>
							<!-- 主营业务-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.scope_major"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.mainBusiness}</td>
							<!-- 公司E－Mail-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.compEmail}</td>
						</tr>
						<tr>
							<td class="label BgColor">实际控制人：</td>
							<td class="content">${compAssetRelation.actualController}</td>
							<td class="label BgColor">实际控制人职务：</td>
							<td class="content tabBorderRight">${compAssetRelation.actualControllerPosition}</td>
						</tr>
						<tr>
							<td class="label BgColor">实际控制人电话：</td>
							<td class="content">${compAssetRelation.actualControllerTel}</td>
							<td class="label BgColor">实际控制人手机：</td>
							<td class="content tabBorderRight">${compAssetRelation.actualControllerPhone}</td>
						</tr>
						<tr>
							<td class="label BgColor">联系人：</td>
							<td class="content">${compAssetRelation.contactsPeople}</td>
							<td class="label BgColor">联系人职务：</td>
							<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePosition}</td>
						</tr>
						<tr>
							<td class="label BgColor">联系人电话：</td>
							<td class="content">${compAssetRelation.contactsPeopleTel}</td>
							<td class="label BgColor">联系人手机：</td>
							<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePhone}</td>
						</tr>
						<tr>
							<!-- 联系电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.con_phone"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.contactPhone}</td>
							<!-- 传真电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.fax_phone"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.faxPhone}</td>
						</tr>
						<tr>
							<!-- 财务部联系电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.financial_phone"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.financeContactPhone}</td>
							<!--备注-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.remark" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.remark}</td>

						</tr>
						<tr>
							<!-- 注册地址-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_address"
									bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
								${compAssetRelation.address1.pname}${compAssetRelation.address1.cname}${compAssetRelation.address1.dname}${compAssetRelation.address1.detail}
							</td>
						</tr>
						<tr>
							<!-- 通讯地址-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.comm_address"
									bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
										${compAssetRelation.address2.pname}${compAssetRelation.address2.cname}${compAssetRelation.address2.dname}${compAssetRelation.address2.detail}</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${!empty assetBasicHouse }">
		<!-- 	<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0"> -->
				<tr>
					<td class="label BgColor">房贷总额：</td>
					<td class="content">${assetBasic.loanMoney }</td>
					<td class="label BgColor">房贷余额：</td>
					<td class="content tabBorderRight">${assetBasic.loanBalance }</td>
				</tr>
				<tr>
					<td class="label BgColor">购买时间：</td>
					<td class="content">${assetBasic.buyDate }</td>
					<td class="label BgColor">购买金额：</td>
					<td class="content tabBorderRight">${assetBasic.buyMoney }</td>
				</tr>
				<tr>
					<!-- 土地证号-->
					<td class="label BgColor"><fmt:message
							key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
					<td class="content">${assetBasicHouse.noland}</td>

					<!-- 地号/档案保管号 -->
					<td class="label BgColor">地号/档案保管号：</td>
					<td class="content tabBorderRight">${assetBasicHouse.noarchive}</td>
				</tr>
				<tr>
					<!-- 房产证号 -->
					<td class="label BgColor"><fmt:message
							key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
					<td class="content">${assetBasicHouse.nohouse}</td>
					<!-- 房屋坐落  -->
					<td class="label BgColor"><fmt:message
							key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicHouse.houseAddress}</td>
				</tr>

				<tr>
					<!-- 房产类型  -->
					<td class="label BgColor"><fmt:message
							key="label.assessHouse.edit.houseType" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1076"
							value="${assetBasicHouse.houseType}" /></td>
					<!-- 建筑面积 -->
					<td class="label BgColor">建筑面积：</td>
					<td class="content tabBorderRight">${assetBasicHouse.areaBuilding}</td>
				</tr>
				<tr>
					<!-- 是否有产权纠纷 -->
					<td class="label BgColor"><fmt:message
							key="label.assessHouse.edit.ifPropertydisputes" bundle="${lang}" /></td>
					<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1080"
							value="${assetBasicHouse.ifPropertydisputes}" /></td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label BgColor"><fmt:message
							key="label.assessHouse.edit.remark" bundle="${lang}" /></td>
					<td colspan="3" class="tabBorderRight">${assetBasicHouse.remark}</td>
				</tr>
			</table>
			<br />
			<!-- 共同所有人 -->
			<c:forEach items="${relationList}" var="personRelation"
				varStatus="loop">
				<div id="assetRelation${loop.index}">
					<br />
					<div class="divBgColor">
						<table>
							<tr>
								<td width="150"><strong>资产共同所有人</strong></td>
							</tr>
						</table>
					</div>
					<input type="hidden"
						name="personAssetRelations[${loop.index}].relationId"
						value="${personRelation.relationId}" />
					<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
							<td class="content">${personRelation.relationobjName}</td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.workUnit}</td>
						</tr>
						<tr>
							<td class="label BgColor">证件类型：</td>
							<td class="content"><bizoptionname:showname
									biztypekey="1007" value="${personRelation.cardType}" /></td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.cardCode}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content">${personRelation.mobilePhone}</td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.position}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content">${personRelation.email}</td>
							<td class="label BgColor">工资收入：</td>
							<td class="content tabBorderRight">${personRelation.incomeWorkunit}</td>
						</tr>
						<tr>
							<td class="label BgColor">单位地址：</td>
							<td colspan="3"  class="content tabBorderRight" >${personRelation.address.pname}${personRelation.address.cname}${personRelation.address.dname}${personRelation.address.detail}
							</td>
						</tr>
						<tr>
							<td class="label BgColor">居住地址：</td>
							<td colspan="3" class="content tabBorderRight">
								${personRelation.address2.pname}${personRelation.address2.cname}${personRelation.address2.dname}${personRelation.address2.detail}</td>
								
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.address1" bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
										${personRelation.address3.pname}${personRelation.address3.cname}${personRelation.address3.dname}${personRelation.address3.detail}
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
							</tr>
						</table>
					</div>
					<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.relationobjName }</td>
							<!-- 营业执照-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.cardNo }</td>
						</tr>
						<tr>
							<!-- 法人代表名称-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.legalPerson}</td>
							<!-- 法人代表身份证号 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.leal_person.cardNo"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.legalCardNo}</td>
						</tr>
						<tr>
							<!-- 企业性质 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.character"
									bundle="${lang}" /></td>
							<td><bizoptionname:showname biztypekey="1013"
									value="${compAssetRelation.property }" /></td>
							<!--企业成立日期 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.begin_date"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.establishDate}</td>
						</tr>
						<tr>
							<!-- 注册资本币种 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_currency"
									bundle="${lang}" /></td>
							<td class="content"><bizoptionname:showname
									biztypekey="1103"
									value="${compAssetRelation.registerMoneyType }" /></td>
							<!-- 注册资本 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_assets"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.registerMoney}</td>
						</tr>
						<tr>
							<!-- 工商营业执照号码 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.business_registrate"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.licenseNo}</td>
							<!-- 国标行业分类-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.nation_standard_classify"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight"><bizoptionname:showname
									biztypekey="1014" value="${compAssetRelation.industryType }" /></td>
						</tr>
						<tr>
							<!-- 主营业务-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.scope_major"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.mainBusiness}</td>
							<!-- 公司E－Mail-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.compEmail}</td>
						</tr>
						<tr>
							<td class="label BgColor">实际控制人：</td>
							<td class="content">${compAssetRelation.actualController}</td>
							<td class="label BgColor">实际控制人职务：</td>
							<td class="content tabBorderRight">${compAssetRelation.actualControllerPosition}</td>
						</tr>
						<tr>
							<td class="label BgColor">实际控制人电话：</td>
							<td class="content">${compAssetRelation.actualControllerTel}</td>
							<td class="label BgColor">实际控制人手机：</td>
							<td class="content tabBorderRight">${compAssetRelation.actualControllerPhone}</td>
						</tr>
						<tr>
							<td class="label BgColor">联系人：</td>
							<td class="content">${compAssetRelation.contactsPeople}</td>
							<td class="label BgColor">联系人职务：</td>
							<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePosition}</td>
						</tr>
						<tr>
							<td class="label BgColor">联系人电话：</td>
							<td class="content">${compAssetRelation.contactsPeopleTel}</td>
							<td class="label BgColor">联系人手机：</td>
							<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePhone}</td>
						</tr>
						<tr>
							<!-- 联系电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.con_phone"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.contactPhone}</td>
							<!-- 传真电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.fax_phone"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.faxPhone}</td>
						</tr>
						<tr>
							<!-- 财务部联系电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.financial_phone"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.financeContactPhone}</td>
							<!--备注-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.remark" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.remark}</td>

						</tr>
						<tr>
							<!-- 注册地址-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_address"
									bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
								${compAssetRelation.address1.pname}${compAssetRelation.address1.cname}${compAssetRelation.address1.dname}${compAssetRelation.address1.detail}
							</td>
						</tr>
						<tr>
							<!-- 通讯地址-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.comm_address"
									bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
								${compAssetRelation.address2.pname}${compAssetRelation.address2.cname}${compAssetRelation.address2.dname}${compAssetRelation.address2.detail}
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${!empty assetBasicOther }">
		<!-- <table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0"> -->
				<tr>
					<!-- 资产名称 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.collateral.name" bundle="${lang}" /></td>
					<td class="content tabBorderRight" colspan="3">${assetBasicOther.assetName}</td>
				</tr>
				<tr>
					<td class="label BgColor">贷款总额：</td>
					<td class="content">${assetBasic.loanMoney }</td>
					<td class="label BgColor">贷款余额：</td>
					<td class="content tabBorderRight">${assetBasic.loanBalance }</td>
				</tr>
				<tr>
					<td class="label BgColor">购买时间：</td>
					<td class="content">${assetBasic.buyDate }</td>
					<td class="label BgColor">购买金额：</td>
					<td class="content tabBorderRight">${assetBasic.buyMoney }</td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label BgColor"><fmt:message
							key="label.assessCar.edit.collateral.remark" bundle="${lang}" /></td>
					<td colspan="3" class="content tabBorderRight">${assetBasicOther.remark}</td>
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
								<td width="150"><strong>资产共同所有人</strong></td>
							</tr>
						</table>
					</div>
					<input type="hidden"
						name="personAssetRelations[${loop.index}].relationId"
						value="${personRelation.relationId}" />
					<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
							<td class="content">${personRelation.relationobjName}</td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.workUnit}</td>
						</tr>
						<tr>
							<td class="label BgColor">证件类型：</td>
							<td class="content"><bizoptionname:showname
									biztypekey="1007" value="${personRelation.cardType}" /></td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.cardCode" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.cardCode}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
							<td class="content">${personRelation.mobilePhone}</td>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.position" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${personRelation.position}</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content">${personRelation.email}</td>
							<td class="label BgColor">工资收入：</td>
							<td class="content tabBorderRight">${personRelation.incomeWorkunit}</td>
						</tr>
						<tr>
							<td class="label BgColor">单位地址：</td>
							<td colspan="3" class="content  tabBorderRight">
								${personRelation.address.pname}${personRelation.address.cname}${personRelation.address.dname}${personRelation.address.detail}
							</td>
						</tr>
						<tr>
							<td class="label BgColor">居住地址：</td>
							<td colspan="3" class="content  tabBorderRight">
							${personRelation.address2.pname}${personRelation.address2.cname}${personRelation.address2.dname}${personRelation.address2.detail}
							</td>
						</tr>
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.applyDetail.address1" bundle="${lang}" /></td>
							<td colspan="3" class="content  tabBorderRight">
							${personRelation.address3.pname}${personRelation.address3.cname}${personRelation.address3.dname}${personRelation.address3.detail}
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
							</tr>
						</table>
					</div>
					<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
						<tr>
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.relationobjName }</td>
							<!-- 营业执照-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.cardNo }</td>
						</tr>
						<tr>
							<!-- 法人代表名称-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.legalPerson}</td>
							<!-- 法人代表身份证号 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.leal_person.cardNo"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.legalCardNo}</td>
						</tr>
						<tr>
							<!-- 企业性质 -->
							<td class="label BgColor "><fmt:message
									key="label.assess.guarantee.enterprise.character"
									bundle="${lang}" /></td>
							<td class="content"><bizoptionname:showname biztypekey="1013"
									value="${compAssetRelation.property }" /></td>
							<!--企业成立日期 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.begin_date"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.establishDate}</td>
						</tr>
						<tr>
							<!-- 注册资本币种 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_currency"
									bundle="${lang}" /></td>
							<td class="content"><bizoptionname:showname
									biztypekey="1103"
									value="${compAssetRelation.registerMoneyType }" /></td>
							<!-- 注册资本 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_assets"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.registerMoney}</td>
						</tr>
						<tr>
							<!-- 工商营业执照号码 -->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.business_registrate"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.licenseNo}</td>
							<!-- 国标行业分类-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.nation_standard_classify"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight"><bizoptionname:showname
									biztypekey="1014" value="${compAssetRelation.industryType }" /></td>
						</tr>
						<tr>
							<!-- 主营业务-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.scope_major"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.mainBusiness}</td>
							<!-- 公司E－Mail-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.compEmail}</td>
						</tr>
						<tr>
							<td class="label BgColor">实际控制人：</td>
							<td class="content">${compAssetRelation.actualController}</td>
							<td class="label BgColor">实际控制人职务：</td>
							<td class="content tabBorderRight">${compAssetRelation.actualControllerPosition}</td>
						</tr>
						<tr>
							<td class="label BgColor">实际控制人电话：</td>
							<td class="content">${compAssetRelation.actualControllerTel}</td>
							<td class="label BgColor">实际控制人手机：</td>
							<td class="content tabBorderRight">${compAssetRelation.actualControllerPhone}</td>
						</tr>
						<tr>
							<td class="label BgColor">联系人：</td>
							<td class="content">${compAssetRelation.contactsPeople}</td>
							<td class="label BgColor">联系人职务：</td>
							<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePosition}</td>
						</tr>
						<tr>
							<td class="label BgColor">联系人电话：</td>
							<td class="content">${compAssetRelation.contactsPeopleTel}</td>
							<td class="label BgColor">联系人手机：</td>
							<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePhone}</td>
						</tr>
						<tr>
							<!-- 联系电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.con_phone"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.contactPhone}</td>
							<!-- 传真电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.fax_phone"
									bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.faxPhone}</td>
						</tr>
						<tr>
							<!-- 财务部联系电话-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.financial_phone"
									bundle="${lang}" /></td>
							<td class="content">${compAssetRelation.financeContactPhone}</td>
							<!--备注-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.remark" bundle="${lang}" /></td>
							<td class="content tabBorderRight">${compAssetRelation.remark}</td>

						</tr>
						<tr>
							<!-- 注册地址-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.reg_address"
									bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
								${compAssetRelation.address1.pname}${compAssetRelation.address1.cname}${compAssetRelation.address1.dname}${compAssetRelation.address1.detail}
							</td>
						</tr>
						<tr>
							<!-- 通讯地址-->
							<td class="label BgColor"><fmt:message
									key="label.assess.guarantee.enterprise.comm_address"
									bundle="${lang}" /></td>
							<td colspan="3" class="content tabBorderRight">
								<${compAssetRelation.address2.pname}${compAssetRelation.address2.cname}${compAssetRelation.address2.dname}${compAssetRelation.address2.detail}
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${!empty assetBasicComp }">
				<tr>
					<!-- 企业名称 -->
					<td class="label BgColor"><fmt:message key="label.assessComp.name"
							bundle="${lang}" /></td>
					<td class="content">${assetBasicComp.companyName}</td>

					<!-- 占股比例 -->
					<td class="label BgColor"><fmt:message
							key="label.assessComp.shareStock" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicComp.shareStock}</td>
				</tr>
				<tr>
					<!-- 注册日期 -->
					<td class="label BgColor"><fmt:message key="label.assessComp.reg.date"
							bundle="${lang}" /></td>
					<td class="content "><fmt:formatDate value="${assetBasicComp.registeredDate}" pattern="yyyy-MM-dd"/></td>

					<!-- 注册资本  -->
					<td class="label BgColor"><fmt:message
							key="label.assessComp.releaseAssets" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${assetBasicComp.registeredAssets}</td>
				</tr>
				<tr>
					<td class="label BgColor">办公地址：</td>
						<td colspan="3" class="content tabBorderRight">
						${assetBasicComp.pOffName}${assetBasicComp.cOffName}${assetBasicComp.dOffName}${assetBasicComp.detailOffice}
					</td>
				</tr>
				<tr>
					<td class="label BgColor">注册地址：</td>
						<td colspan="3" class="content tabBorderRight">
						${assetBasicComp.pRegName}${assetBasicComp.cRegName}${assetBasicComp.dRegName}${assetBasicComp.detailRegistered}
					</td>
				</tr>
				<tr>
					<!-- 备注 -->
					<td class="label BgColor">备注：</td>
					<td colspan="3" class="content  tabBorderRight">${assetBasicComp.remark}</td>
				</tr>
			</table>
		</c:if>
	</div>
	<input type="hidden" id="clientId" value="${clientId }" />
	<input type="hidden" id="assetId" value="${assetBasic.assetId }" />
</body>
</html>
