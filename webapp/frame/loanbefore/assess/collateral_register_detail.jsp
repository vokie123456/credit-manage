<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="collateralForm">
		<div class="divBgColor">
			押品信息-车辆
		</div>
		<c:forEach items="${resultCarList}" var="car" varStatus="loop">
			<div id="carDiv${loop.index}">
				<table class="col3">
					<tr>
						<td class="label">押品类型：</td>
						<td class="content"><bizoptionname:showname biztypekey="1097"
								value="109711" /></td>
						<td colspan="2"><input id="carList[${loop.index}].carCode"
							name="carList[${loop.index}].carCode" value="${car.carCode}"
							type="hidden" trim="true" readonly="true" /></td>
					</tr>
					<tr>
						<!-- 车架号 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
						<td class="content">${car.winCode}</td>
						<!-- 车牌号码 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
						<td class="content">${car.plateNo}</td>
					</tr>
					<tr>
						<!-- 发票金额 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
						<td class="content">${car.invoicePrice}</td>
						<!-- 厂牌 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.brand" bundle="${lang}" /></td>
						<td class="content">${car.brand}</td>
					</tr>
					<tr>
						<!-- 车辆类型  -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.carType" bundle="${lang}" /></td>
						<td class="content"><bizoptionname:showname biztypekey="1082"
								value="${car.carType}" /></td>
						<!-- 型号 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.model" bundle="${lang}" /></td>
						<td class="content">${car.model}</td>
					</tr>
					<tr>
						<!-- 颜色  -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.color" bundle="${lang}" /></td>
						<td class="content">${car.color}</td>
						<td colspan="2"></td>
					</tr>
				</table>
			</div>
			<br /> <br />
		</c:forEach>
		<!-- 房屋押品 -->
		<div class="divBgColor">
			押品信息-房屋
		</div>
		<c:forEach items="${resultHouseList}" var="house" varStatus="loop">
			<div id="houseDiv${loop.index}">
				<table class="col3">
					<tr>
						<td class="label">押品类型：</td>
						<td><bizoptionname:showname biztypekey="1097" value="109712" /></td>
						<td colspan="2"><input
							id="houseList[${loop.index}].houseCode"
							name="houseList[${loop.index}].houseCode"
							value="${house.houseCode}" type="hidden" trim="true" /></td>
					</tr>
					<tr>
						<!-- 土地证号-->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
						<td class="content"">${house.noland}</td>
						<!-- 地号/档案保管号 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
						<td class="content"">${house.noarchive}</td>
					</tr>
					<tr>
						<!-- 房产证号 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
						<td class="content"">${house.nohouse}</td>
						<!-- 房屋坐落  -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
						<td class="content"">${house.houseAddress}</td>
					</tr>
					<tr>
						<!-- 房屋结构 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.houseStructure" bundle="${lang}" /></td>
						<td class="content""><bizoptionname:showname
								biztypekey="1074" value="${house.houseStructure}" /></td>
						<!-- 使用面积  -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.areaUse" bundle="${lang}" /></td>
						<td class="content"">${house.areaUse}</td>
					</tr>
					<tr>
						<!-- 建筑面积-->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.areaBuilding" bundle="${lang}" /></td>
						<td class="content"">${house.areaBuilding}</td>

						<!-- 公摊面积 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.areaShare" bundle="${lang}" /></td>
						<td class="content"">${house.areaShare}</td>

					</tr>
					<tr>
						<!-- 总楼层 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.floorTotal" bundle="${lang}" /></td>
						<td class="content"">${house.floorTotal}</td>
					</tr>
				</table>
			</div>
			<br /> <br />
		</c:forEach>


		<!-- 担保人信息 -->
		<div class="divBgColor">
			担保人
		</div>

		<c:forEach items="${resultPersonList}" var="per" varStatus="loop">
			<table class="col3">
				<tr>
					<!-- 姓名 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
					<td class="content">${per.personName }</td>
					<!-- 证件类型-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1007"
							value="${per.cardType }" /></td>
				</tr>
				<tr>
					<!-- 证件号码 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
					<td class="content">${per.cardNo }</td>
					<!-- 手机-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
					<td class="content">${per.mobilePhone }</td>
				</tr>
				<tr>
					<!-- 工作单位-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
					<td class="content">${per.workUint }</td>
					<!-- 职位-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.position" bundle="${lang}" /></td>
					<td class="content">${per.position }</td>
				</tr>
				<tr>
					<!-- 工资收入-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.income" bundle="${lang}" /></td>
					<td class="content">${per.salary }</td>
					<!-- 关系 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.relation" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1020"
							value="${per.relation }" /></td>
				</tr>
				<tr>
					<!-- 公司地址 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkageshow:show type="province"
										name="perAdd3${loop.index}" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="perAdd3${loop.index}" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="perAdd3${loop.index}" property="district" /></td>
								<td class="content">${per.address3.town}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<!-- 户籍地址-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.adress1" bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkageshow:show type="province"
										name="perAdd1${loop.index}" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="perAdd1${loop.index}" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="perAdd1${loop.index}" property="district" /></td>
								<td class="content">${per.address1.town}</td>
							</tr>
						</table>
					</td>
				</tr>
				<!-- 居住地址-->
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.adress2" bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkageshow:show type="province"
										name="perAdd2${loop.index}" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="perAdd2${loop.index}" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="perAdd2${loop.index}" property="district" /></td>
								<td class="content">${per.address2.town}</td>
							</tr>
						</table>
					</td>
				</tr>
				<!-- 电子邮件 -->
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.email" bundle="${lang}" /></td>
					<td align="left" class="content"">${per.email }</td>
					<!-- 即时通讯方式 -->
					<td class="label"><fmt:message key="label.assess.guarantee.im"
							bundle="${lang}" /></td>
					<td align="left" class="content"">${per.communication }</td>
				</tr>
			</table>
			<br /><br />
		</c:forEach>


		<!-- 担保公司信息 -->

		<div class="divBgColor">
			<table>
				<tr>
					<td width="150"">担保公司</td>

				</tr>
			</table>
		</div>
		<c:forEach items="${resultCompList}" var="com" varStatus="loop">
			<table class="col3">
				<!-- 企业名称 -->
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
					<td class="content">${com.compName }</td>
					<!-- 企业英文名 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.English_name"
							bundle="${lang}" /></td>
					<td class="content">${com.englishName }</td>
				</tr>
				<tr>
					<!-- 企业性质 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.character"
							bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1013"
							value="${com.property }" /></td>
					<!-- 法人代表名称-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
					<td class="content">${com.legalPerson }</td>
				</tr>
				<tr>
					<!-- 法人代表身份证号 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
					<td class="content">${com.cardNo }</td>
					<!-- 组织机构代码-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
					<td class="content">${com.orgCode }</td>
				</tr>
				<tr>
					<!-- 工商营业执照号码 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.business_registrate"
							bundle="${lang}" /></td>
					<td class="content">${com.licenseNo }</td>
					<!--企业成立日期 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.begin_date"
							bundle="${lang}" /></td>
					<td class="content">${com.establishDate }</td>
				</tr>
				<tr>
					<!-- 注册资本币种 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_currency"
							bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1103"
							value="${com.registerMoneyType }" /></td>
					<!-- 注册资本 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_assets"
							bundle="${lang}" /></td>
					<td class="content">${com.registerMoney }</td>
				</tr>

				<tr>
					<!-- 注册地址-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_address"
							bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkageshow:show type="province"
										name="comAdd1${loop.index}" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="comAdd1${loop.index}" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="comAdd1${loop.index}" property="district" /></td>
								<td class="content">${com.address1.town}</td>
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
								<td class="content"><linkageshow:show type="province"
										name="comAdd2${loop.index}" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="comAdd2${loop.index}" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="comAdd2${loop.index}" property="district" /></td>
								<td class="content">${com.address2.town}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<!-- 国标行业分类-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.nation_standard_classify"
							bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1014"
							value="${com.industryType }" /></td>
					<!-- 主营业务-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.scope_major"
							bundle="${lang}" /></td>
					<td class="content">${com.mainBusiness }</td>
				</tr>
				<tr>
					<!-- 公司E－Mail-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
					<td class="content">${com.compEmail }</td>
					<!-- 公司网址-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.website" bundle="${lang}" /></td>
					<td class="content">${com.compUrl }</td>
				</tr>
				<tr>
					<!-- 联系电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.con_phone"
							bundle="${lang}" /></td>
					<td class="content">${com.contactPhone }</td>
					<!-- 传真电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.fax_phone"
							bundle="${lang}" /></td>
					<td class="content">${com.faxPhone }</td>
				</tr>
				<tr>
					<!-- 财务部联系电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.financial_phone"
							bundle="${lang}" /></td>
					<td class="content">${com.financeContactPhone }</td>
					<!--备注-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.remark" bundle="${lang}" /></td>
					<td class="content">${com.remark }</td>
				</tr>
			</table>
			<br/><br/>
		</c:forEach>
	</form>
</body>

</html>
