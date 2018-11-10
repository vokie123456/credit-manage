<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/collateral_car_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${count}" />
	<input type="hidden" name="compResultSize" id="compResultSize"
		value="${compCount}" />
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.assessCar.edit.title" bundle="${lang}" />
		</div>
		<input type="hidden" id="car_projectId" name="carProjectId"
			value="${projectId}" /> <input type="hidden" name="collateralId"
			value="${car.collateralId }" />
			<input type="hidden" id="collateralDebt" name="collateralDebt" value="${collateralDebt}" />
		<table  class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
			<tr>
				<td class="label BgColor" >押品类型：</td>
				<td colspan="3" class="content tabBorderRight"><bizoptionname:showname biztypekey="1152"
						value="115211" name="collateralType" /></td>
			</tr>
			<tr>
				<td class="label BgColor" >他证号：</td>
				<td class="content">${car.itCardNo }</td>
				<td class="label BgColor" >公证号：</td>
				<td class="content tabBorderRight">${car.notaryNo }</td>
			</tr>
			<tr>
				<!-- 贷款金额 -->
				<td class="label BgColor" >抵押贷款总额(万元)：</td>
				<td class="content">${car.loanMoney}</td>

				<!-- 贷款余额  -->
				<td class="label BgColor" >抵押贷款余额(万元)：</td>
				<td class="content tabBorderRight">${car.loanBalance}</td>
			</tr>
			<tr>
				<!-- 购买日期 -->
				<td class="label BgColor" >购买时间：</td>
				<td class="content">${car.buyDate}</td>
				<!-- 购买金额-->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.buyMoney" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.buyMoney}</td>
			</tr>
			<tr>
				<!-- 车架号 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
				<td class="content ">${car.winCode}</td>

				<!-- 车牌类型 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.plateType" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.plateType}</td>
			</tr>
			<tr>
				<!-- 车牌号码 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
				<td class="content">${car.plateNo}</td>

				<!-- 出厂日期  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.releaseDate" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.releaseDate}</td>
			</tr>
			<tr>
				<!-- 登记日期 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.recordDate" bundle="${lang}" /></td>
				<td class="content">${car.recordDate}</td>

				<!-- 产地 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.prodArea" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.prodArea}</td>
			</tr>
			<tr>
				<!-- 厂牌 -->
				<td class="label BgColor" ><fmt:message key="label.assessCar.edit.brand"
						bundle="${lang}" /></td>
				<td class="content">${car.brand}</td>
				<!-- 车辆类型  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.carType" bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1082"
						name="carType" value="${car.carType}" /></td>
			</tr>
			<tr>
				<!-- 排量 -->
				<td class="label BgColor" ><fmt:message key="label.assessCar.edit.air"
						bundle="${lang}" /></td>
				<td class="content">${car.air}</td>

				<!-- 型式  -->
				<td class="label BgColor" ><fmt:message key="label.assessCar.edit.model"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.model}</td>
			</tr>
			<tr>
				<!-- 颜色  -->
				<td class="label BgColor" ><fmt:message key="label.assessCar.edit.color"
						bundle="${lang}" /></td>
				<td class="content">${car.color}</td>

				<!-- 里程 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.mileage" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.mileage}</td>
			</tr>
			<tr>
				<!-- 发动机号  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.engine_No" bundle="${lang}" /></td>
				<td class="content">${car.engineNo}</td>
				<!-- 变速箱方式  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.shiftMethod" bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1083"
						name="shiftMethod" value="${car.shiftMethod}" /></td>

			</tr>
			<tr>
				<!-- 车门型式 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.doorMethod" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1084"
						name="doorMethod" value="${car.doorMethod}" /></td>

				<!-- 转动方式 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.drivingMethod" bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1085"
						name="drivingMethod" value="${car.drivingMethod}" /></td>
			</tr>
			<tr>
				<!-- 供油类型 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.supplyoilMethod" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1086"
						name="supplyoilMethod" value="${car.supplyoilMethod}" /></td>
				<!-- 供油系统 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.supplyoilSys" bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1087"
						name="supplyoilSys" value="${car.supplyoilSys}" /></td>
			</tr>
			<tr>
				<!-- 年检日期 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.yearCheck" bundle="${lang}" /></td>
				<td class="content">${car.yearCheck}</td>

				<!-- 车辆动力总成系统 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.powerSys" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.powerSys}</td>
			</tr>
			<tr>
				<!-- 车辆传动系统 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.drivingSys" bundle="${lang}" /></td>
				<td class="content">${car.drivingSys}</td>

				<!-- 车辆循环系统 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.cycleSys" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.cycleSys}</td>
			</tr>
			<tr>
				<!-- 车辆电器系统 -->
				<td class="label BgColor" >车辆电器系统：</td>
				<td class="content">${car.appSys}</td>

				<!-- GPS设备号 -->
				<td class="label BgColor" >GPS设备号：</td>
				<td class="content tabBorderRight">${car.gpsNo}</td>
			</tr>
			<tr>
				<!-- GPS安装日 -->
				<td class="label BgColor" >GPS安装时间：</td>
				<td class="content">${car.gpsIndate}</td>
				<!-- 购买来源 -->
				<td class="label BgColor" >购买来源：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1088"
						name="buyFrom" value="${car.buyFrom}" /></td>
			</tr>
			<tr>
				<!-- 购买来源其他 -->
				<td class="label BgColor" >购买来源其他：</td>
				<td class="content">${car.buyfromOther}</td>

				<!-- 购买原因 -->
				<td class="label BgColor" >购买原因：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1089"
						name="buyReason" value="${car.buyReason}" /></td>
			</tr>
			<tr>
				<!-- 车商名称 -->
				<td class="label BgColor" >车商名称：</td>
				<td class="content">${car.dealer}</td>

				<!-- 车商电话 -->
				<td class="label BgColor" >车商电话：</td>
				<td class="content tabBorderRight">${car.dealerTel}</td>
			</tr>
			<tr>
				<td colspan="4" class="content tabBorderRight"></td>
				<!-- <td class="label BgColor" >&nbsp;</td>
				<td class="content"></td>
				<td class="label BgColor" ></td>
				<td class="content"></td> -->
			</tr>
			<tr>
				<!-- 前顺位抵押权 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.primarycolRight"
						bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1077"
						name="primarycolRight" value="${car.primarycolRight}" /></td>
				<!-- 前顺位抵押金 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.primarycolAmount"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.primarycolAmount}</td>
			</tr>
			<tr>
				<td class="label BgColor" >本次抵押金额(万元)：</td>
				<td class="content">${car.thisAmount}</td>
				<!-- 押品抵押率  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.collateralRate"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${car.collateralRate}</td>
			</tr>
			<tr>
				<!-- 抵押/过户时间 -->
				<td class="label BgColor" >抵押开始时间：</td>
				<td class="content"><fmt:formatDate
						value="${car.collateralTime}" pattern="yyyy-MM-dd" /></td>
				<td class="label BgColor" >抵押结束时间：</td>
				<td class="content tabBorderRight"><fmt:formatDate
						value="${car.collateralTimeEnd}" pattern="yyyy-MM-dd" /></td>
			</tr>
			<tr>
				<!-- 评估人员 -->
				<td class="label BgColor" >评估机构：</td>
				<td class="content">${car.assessName}</td>

				<!-- 评估时间 -->
				<td class="label BgColor" >评估时间：</td>
				<td class="content tabBorderRight">${car.assessTime}</td>
			</tr>
			<tr>
				<!-- 评估总价 -->
				<td class="label BgColor" >评估总价(万元)：</td>
				<td class="content">${car.assessTotalprice}</td>
				<!-- 资产状态 -->
				<td class="label BgColor" >资产状态：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1081"
						name="collateralStatus" value="${car.collateralStatus}" /></td>
			</tr>
			<tr>
				<!-- 备注 -->
				<td class="label BgColor" >备注：</td>
				<td colspan="3" class="content tabBorderRight">${car.remark}</td>
			</tr>

		</table>
		<!-- 共同所有人 -->
		<c:forEach items="${relationList}" var="personRelation"
			varStatus="loop">
			<div id="collateralRelation${loop.index}">
				<br />
				<div class="divBgColor">
						押品所有人
					</div>
				<input type="hidden" name="resonRelations[${loop.index}].relationId"
					value="${personRelation.relationId}" />
				<table class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
						<td class="content">${personRelation.relationobjName}</td>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.workUnit" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${personRelation.workUnit}</td>
					</tr>
					<tr>
						<td class="label BgColor" >证件类型：</td>
						<td class="content"><bizoptionname:showname biztypekey="1007"
								name="resonRelations[${loop.index}].cardType"
								value="${personRelation.cardType}" /></td>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.cardCode" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${personRelation.cardCode}</td>
					</tr>
					<tr>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
						<td class="content">${personRelation.mobilePhone}</td>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.position" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${personRelation.position}</td>
					</tr>
					<tr>
						<td class="label BgColor" ><fmt:message key="label.applyDetail.email"
								bundle="${lang}" /></td>
						<td class="content">${personRelation.email}</td>
						<td class="label BgColor" ><fmt:message key="label.applyDetail.im"
								bundle="${lang}" /></td>
						<td class="content tabBorderRight">${personRelation.im}</td>
					</tr>
					<tr>
						<td class="label BgColor" >工资收入：</td>
						<td class="content tabBorderRight" colspan="3">${personRelation.incomeWorkunit}</td>

					</tr>
					<tr>
						<td class="label BgColor" >单位地址：</td>
						<td class="content tabBorderRight" colspan="3">${personRelation.address.pname}${personRelation.address.cname}${personRelation.address.dname}${personRelation.address.detail}
						</td>
					</tr>
					<tr>
						<td class="label BgColor" >居住地址：</td>
						<td class="content tabBorderRight" colspan="3">${personRelation.address2.pname}${personRelation.address2.cname}${personRelation.address2.dname}${personRelation.address2.detail}
						</td>
					</tr>
					<tr>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.address1" bundle="${lang}" /></td>
						<td class="content tabBorderRight" colspan="3">${personRelation.address3.pname}${personRelation.address3.cname}${personRelation.address3.dname}${personRelation.address3.detail}
						</td>
					</tr>
				</table>
			</div>
		</c:forEach>
		<c:forEach items="${compCollateralRelationList}"
			var="compAssetRelation" varStatus="loop">
			<div id="collateralCompRelation${loop.index}">
				<br />
				<div class="divBgColor">
				押品所有机构
				</div>
				<table  class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
						<td class="content">${compAssetRelation.relationobjName }</td>
						<!-- 营业执照-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.cardNo }</td>
					</tr>
					<tr>
						<!-- 法人代表名称-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
						<td class="content ">${compAssetRelation.legalPerson}</td>
						</td>
						<!-- 法人代表身份证号 -->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.legalCardNo}</td>
					</tr>
					<tr>
						<!-- 企业性质 -->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.character"
								bundle="${lang}" /></td>
						<td class="content"><bizoptionname:showname biztypekey="1013"
								value="${compAssetRelation.property }"
								name="collateralCompRelationVo[${loop.index}].property" /></td>
						<!--企业成立日期 -->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.begin_date"
								bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.establishDate}</td>
					</tr>
					<tr>
						<!-- 注册资本币种 -->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.reg_currency"
								bundle="${lang}" /></td>
						<td class="content"><bizoptionname:showname biztypekey="1103"
								name="collateralCompRelationVo[${loop.index}].registerMoneyType"
								value="${compAssetRelation.registerMoneyType }" /></td>
						<!-- 注册资本 -->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.reg_assets"
								bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.registerMoney}</td>
					</tr>
					<tr>
						<!-- 工商营业执照号码 -->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.business_registrate"
								bundle="${lang}" /></td>
						<td class="content">${compAssetRelation.licenseNo}</td>
						<!-- 国标行业分类-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.nation_standard_classify"
								bundle="${lang}" /></td>
						<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1014"
								name="collateralCompRelationVo[${loop.index}].industryType"
								value="${compAssetRelation.industryType }" /></td>
					</tr>
					<tr>
						<!-- 主营业务-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.scope_major"
								bundle="${lang}" /></td>
						<td class="content">${compAssetRelation.mainBusiness}</td>
						<!-- 公司E－Mail-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.compEmail}</td>
					</tr>
					<tr>
						<td class="label BgColor" >实际控制人：</td>
						<td class="content">${compAssetRelation.actualController}</td>
						<td class="label BgColor" >实际控制人职务：</td>
						<td class="content tabBorderRight">${compAssetRelation.actualControllerPosition}</td>
					</tr>
					<tr>
						<td class="label BgColor" >实际控制人电话：</td>
						<td class="content">${compAssetRelation.actualControllerTel}</td>
						<td class="label BgColor" >实际控制人手机：</td>
						<td class="content tabBorderRight">${compAssetRelation.actualControllerPhone}</td>
					</tr>
					<tr>
						<td class="label BgColor" >联系人：</td>
						<td class="content">${compAssetRelation.contactsPeople}</td>
						<td class="label BgColor" >联系人职务：</td>
						<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePosition}</td>
					</tr>
					<tr>
						<td class="label BgColor" >联系人电话：</td>
						<td class="content">${compAssetRelation.contactsPeopleTel}</td>
						<td class="label BgColor" >联系人手机：</td>
						<td class="content tabBorderRight">${compAssetRelation.contactsPeoplePhone}</td>
					</tr>
					<tr>
						<!-- 联系电话-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.con_phone"
								bundle="${lang}" /></td>
						<td class="content">${compAssetRelation.contactPhone}</td>
						<!-- 传真电话-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.fax_phone"
								bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.faxPhone}</td>
					</tr>
					<tr>
						<!-- 财务部联系电话-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.financial_phone"
								bundle="${lang}" /></td>
						<td class="content">${compAssetRelation.financeContactPhone}</td>
						<!--备注-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.remark" bundle="${lang}" /></td>
						<td class="content tabBorderRight">${compAssetRelation.remark}</td>

					</tr>
					<tr>
						<!-- 注册地址-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.reg_address"
								bundle="${lang}" /></td>
						<td colspan="3"  class="content tabBorderRight">${compAssetRelation.address1.pname}${compAssetRelation.address1.cname}${compAssetRelation.address1.dname}${compAssetRelation.address1.detail}
						</td>
					</tr>
					<tr>
						<!-- 通讯地址-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.comm_address"
								bundle="${lang}" /></td>
					<td colspan="3"  class="content tabBorderRight">${compAssetRelation.address2.pname}${compAssetRelation.address2.cname}${compAssetRelation.address2.dname}${compAssetRelation.address2.detail}
						</td>
					</tr>
				</table>
			</div>
		</c:forEach>
		<div class="tabbuttonlist buttonDivWidth" id="carAssessBut">
			<button id="backOper" type="button" loxiaType="button"
				class="confirm">
				<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
			</button>
		</div>
	</div>
</body>
