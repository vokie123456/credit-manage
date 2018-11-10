
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/collateral_house_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${count}" />
	<input type="hidden" name="compResultSize" id="compResultSize"
		value="${compCount}" />
	<div id="houseCollateralDetail">
		<div class="divBgColor">
			<fmt:message key="label.assessHouse.edit.title" bundle="${lang}" />
		</div>
		<input type="hidden" id="house_projectId" name="houseProjectId"
			value="${projectId}" /> <input type="hidden" name="collateralId"
			value="${house.collateralId}" />
			<input type="hidden" id="collateralDebt" name="collateralDebt" value="${collateralDebt}" />
		<table class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
			<tr>
				<td class="label BgColor" >押品类型：</td>
				<td class="content tabBorderRight" colspan="3"><bizoptionname:showname biztypekey="1152"
						value="115212" name="collateralType" /></td>
			</tr>
			<tr>
				<!-- 它证号-->
				<td class="label BgColor" >他证号：</td>
				<td class="content">${house.itCardNo }</td>
				<!-- 公证号-->
				<td class="label BgColor" >公证号：</td>
				<td class="content tabBorderRight">${house.notaryNo }</td>
			</tr>
			<tr>
				<!-- 贷款金额 -->
				<td class="label BgColor" >抵押贷款总额(万元)：</td>
				<td class="content">${house.loanMoney}</td>

				<!-- 贷款余额  -->
				<td class="label BgColor" >抵押贷款余额(万元)：</td>
				<td class="content tabBorderRight">${house.loanBalance}</td>
			</tr>
			<tr>
				<!-- 购买日期 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.buyDate" bundle="${lang}" /></td>
				<td class="content">${house.buyDate}</td>

				<!-- 购买金额-->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.buyMoney" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${house.buyMoney}</td>
			</tr>
			<tr>
				<!-- 土地证号-->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
				<td class="content">${house.noland}</td>

				<!-- 地号/档案保管号 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${house.noarchive}</td>
			</tr>
			<tr>
				<!-- 房产证号 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
				<td class="content">${house.nohouse}</td>
				<!-- 房屋坐落  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${house.houseAddress}</td>
			</tr>
			<tr>
				<!-- 房产类型  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.houseType" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1076"
						name="houseType" value="${house.houseType}" /></td>
				<!-- 建筑面积 -->
				<td class="label BgColor" >建筑面积：</td>
				<td class="content tabBorderRight">${house.areaBuilding}</td>
			</tr>
			<tr>
				<!-- 家访租约情况 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.houseLease" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1080"
						name="houseLease" value="${house.houseLease}" /></td>
				<!-- 家有老幼拜访情况 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.youngOld" bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1080"
						name="youngOld" value="${house.youngOld}" /></td>
			</tr>
			<tr>
				<!-- 是否有产权纠纷 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.ifPropertydisputes" bundle="${lang}" /></td>
				<td class="content tabBorderRight"  colspan="3"><bizoptionname:showname biztypekey="1080"
						name="ifPropertydisputes" value="${house.ifPropertydisputes}" /></td>
			</tr>
			<tr>
				<td colspan="4" class="content tabBorderRight"></td>
		<!-- 		<td class="label BgColor" >&nbsp;</td>
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
						name="primarycolRight" value="${house.primarycolRight}" /></td>
				<!-- 前顺位抵押金 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.primarycolAmount"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${house.primarycolAmount}</td>
			</tr>
			<tr>
				<td class="label BgColor" >本次抵押金额(万元)：</td>
				<td class="content">${house.thisAmount}</td>
				<!-- 押品抵押率  -->
				<td class="label BgColor" ><fmt:message
						key="label.assessCar.edit.collateral.collateralRate"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${house.collateralRate}</td>
			</tr>
			<tr>
				<!-- 抵押/过户时间 -->
				<td class="label BgColor" >抵押开始时间：</td>
				<td class="content"><fmt:formatDate
						value="${house.collateralTime}" pattern="yyyy-MM-dd" /></td>
				<td class="label BgColor" >抵押结束时间：</td>
				<td class="content tabBorderRight"><fmt:formatDate
						value="${house.collateralTimeEnd}" pattern="yyyy-MM-dd" /></td>
			</tr>

			<tr>
				<!-- 评估人员 -->
				<td class="label BgColor" >评估机构：</td>
				<td class="content">${house.assessName}</td>

				<!-- 评估时间 -->
				<td class="label BgColor" >评估时间：</td>
				<td class="content tabBorderRight">${house.assessTime}</td>
			</tr>
			<tr>
				<!-- 评估总价 -->
				<td class="label BgColor" >评估总价(万元)：</td>
				<td class="content">${house.assessTotalprice}</td>
				<!-- 资产状态 -->
				<td class="label BgColor" >资产状态：</td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1081"
						name="collateralStatus" value="${house.collateralStatus}" /></td>
			</tr>
			<tr>
				<!-- 备注 -->
				<td class="label BgColor" ><fmt:message
						key="label.assessHouse.edit.remark" bundle="${lang}" /></td>
				<td colspan="3" class="content tabBorderRight">${house.remark}</td>
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
						<td colspan="3"  class="content tabBorderRight">
							${personRelation.address.pname}${personRelation.address.cname}${personRelation.address.dname}${personRelation.address.detail}
						</td>
					</tr>
					<tr>
						<td class="label BgColor" >居住地址：</td>
							<td colspan="3"  class="content tabBorderRight">
							${personRelation.address2.pname}${personRelation.address2.cname}${personRelation.address2.dname}${personRelation.address2.detail}
						</td>
					</tr>
					<tr>
						<td class="label BgColor" ><fmt:message
								key="label.applyDetail.address1" bundle="${lang}" /></td>
						<td colspan="3"  class="content tabBorderRight">${personRelation.address3.pname}${personRelation.address3.cname}${personRelation.address3.dname}${personRelation.address3.detail}
						</td>
					</tr>
				</table>  
			</div>
		</c:forEach>
		<c:forEach items="${compCollateralRelationList}"
			var="compAssetRelation" varStatus="loop">
			<div id="collateralCompRelation${loop.index}">
				<br />
				<div class="divBgColor">押品所有机构
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
						<td class="content">${compAssetRelation.legalPerson}</td>
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
						<td colspan="3" class="content tabBorderRight">${compAssetRelation.address1.pname}${compAssetRelation.address1.cname}${compAssetRelation.address1.dname}${compAssetRelation.address1.detail}
						</td>
					</tr>
					<tr>
						<!-- 通讯地址-->
						<td class="label BgColor" ><fmt:message
								key="label.assess.guarantee.enterprise.comm_address"
								bundle="${lang}" /></td>
						<td colspan="3" class="content tabBorderRight">${compAssetRelation.address2.pname}${compAssetRelation.address2.cname}${compAssetRelation.address2.dname}${compAssetRelation.address2.detail}
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
</html>