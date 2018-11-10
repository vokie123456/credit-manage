<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/collateral_register.js'/>"></script>
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<linkage:define />
</head>


<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultCarSize" id="resultCarSize"
		value="${resultCarSize}" />
	<input type="hidden" name="coll_projectId" id="coll_projectId" value="${projectId}" />
	<input type="hidden" name="isForward" id="isForward" value="${isForward}" />

	<form id="collateralForm">
		<!-- 关系人不为空 -->
		<c:forEach items="${resultCarList}" var="car" varStatus="loop">
			<div id="carDiv${loop.index}">
				<br /> <br />
				<!-- 如果该押品已经进行过评估，则不显示删除按钮 -->
				<c:if test="${car.isAssess != 100111}">
					<div class="divBgColor">
						<table class="col3">
							<tr>
								<td width="150" >押品信息-车辆：</td>
								<td align="right" width="80%"><input type="button"
									onclick="deleteCar(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
									title="删除" /></td>
							</tr>
						</table>
					</div>
				</c:if>

				<table class="col3">
					<tr>
						<td class="label">押品类型：</td>
						<td class="content"><bizoptionname:showname biztypekey="1097"
								value="109711" /></td>

						<!-- 押品号 
						<td class="label"><fmt:message
								key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
						<td class="content">
						-->
						<input id="carList[${loop.index}].carCode"
							name="carList[${loop.index}].carCode" value="${car.carCode}"
							type="hidden" trim="true" readonly="true" />
						</td>
						<td colspan="2"></td>
					</tr>
					<tr>
						<!-- 车架号 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.winCode" bundle="${lang}" /></td>
						<td class="content"><input
							id="carList[${loop.index}].winCode"
							name="carList[${loop.index}].winCode" value="${car.winCode}"
							loxiaType="input" trim="true" /></td>
						<!-- 车牌号码 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.plateNo" bundle="${lang}" /></td>
						<td class="content"><input
							name="carList[${loop.index}].plateNo" value="${car.plateNo}"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<!-- 发票金额 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.invoicePrice" bundle="${lang}" /></td>
						<td class="content"><input
							name="carList[${loop.index}].invoicePrice"
							value="${car.invoicePrice}" loxiaType="number" decimal="2"
							trim="true" /></td>
						<!-- 厂牌 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.brand" bundle="${lang}" /></td>
						<td class="content"><input
							name="carList[${loop.index}].brand" value="${car.brand}"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<!-- 车辆类型  -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.carType" bundle="${lang}" /></td>
						<td class="content"><bizoption:bizoption biztypekey="1082"
								name="carList[${loop.index}].carType" isChoose="false"
								selected="${car.carType}" /></td>
						<!-- 型号 -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.model" bundle="${lang}" /></td>
						<td class="content"><input
							name="carList[${loop.index}].model" value="${car.model}"
							loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<!-- 颜色  -->
						<td class="label"><fmt:message
								key="label.assessCar.edit.color" bundle="${lang}" /></td>
						<td class="content"><input
							name="carList[${loop.index}].color" value="${car.color}"
							loxiaType="input" trim="true" /></td>
						<td colspan="2"></td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<div id="formCarCollateral"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="addCar">添加车辆押品</button>
		</div>

		<input type="hidden" name="resultHouseSize" id="resultHouseSize"
			value="${resultHouseSize}" />
		<!-- 关系人不为空 -->
		<c:forEach items="${resultHouseList}" var="house" varStatus="loop">
			<div id="houseDiv${loop.index}">
				<br /> <br />
				<!-- 如果该押品已经进行过评估，则不显示删除按钮 -->
				<c:if test="${house.isAssess != 100111}">
					<div class="divBgColor">
						<table class="col3">
							<tr>
								<td width="150" >押品信息-房屋</td>
								<td align="right" width="80%"><input type="button"
									onclick="deleteHouse(${loop.index})"
									style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
									title="删除" /></td>
							</tr>
						</table>
					</div>
				</c:if>
				<table class="col3">
					<tr>
						<td class="label">押品类型：</td>
						<td class="content"><bizoptionname:showname biztypekey="1097"
								value="109712" /></td>

						<!-- 押品号 
						<td class="label"><fmt:message
								key="label.assessCar.edit.collateral.no" bundle="${lang}" /></td>
						-->
						<td colspan="2"><input
							id="houseList[${loop.index}].houseCode"
							name="houseList[${loop.index}].houseCode"
							value="${house.houseCode}" type="hidden" trim="true" /></td>
					</tr>
					<tr>
						<!-- 土地证号-->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.no_land" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].noland" value="${house.noland}"
							loxiaType="input" trim="true" /></td>

						<!-- 地号/档案保管号 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.no_archive" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].noarchive"
							value="${house.noarchive}" loxiaType="input" trim="true" /></td>
					</tr>
					<tr>
						<!-- 房产证号 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.no_house" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].nohouse" value="${house.nohouse}"
							loxiaType="input" trim="true" /></td>
						<!-- 房屋坐落  -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.houseAddress" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].houseAddress"
							value="${house.houseAddress}" loxiaType="input" trim="true" /></td>

						</td>
					</tr>
					<tr>
						<!-- 房屋结构 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.houseStructure" bundle="${lang}" /></td>
						<td class="content"><bizoption:bizoption biztypekey="1074"
								name="houseList[${loop.index}].houseStructure" isChoose="false"
								selected="${house.houseStructure}" /></td>

						<!-- 使用面积  -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.areaUse" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].areaUse" value="${house.areaUse}"
							loxiaType="number" decimal="2" trim="true" /></td>
					</tr>
					<tr>
						<!-- 建筑面积-->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.areaBuilding" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].areaBuilding"
							value="${house.areaBuilding}" loxiaType="number" decimal="2"
							trim="true" /></td>

						<!-- 公摊面积 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.areaShare" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].areaShare"
							value="${house.areaShare}" loxiaType="number" decimal="2"
							trim="true" /></td>
					</tr>
					<tr>
						<!-- 总楼层 -->
						<td class="label"><fmt:message
								key="label.assessHouse.edit.floorTotal" bundle="${lang}" /></td>
						<td class="content"><input
							name="houseList[${loop.index}].floorTotal"
							value="${house.floorTotal}" loxiaType="number" trim="true" /></td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<div id="formHouseCollateral"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addHouse">添加房屋押品</button>
		</div>




		<!-- 添加担保人模块 -->
		<input type="hidden" name="resultPersonSize" id="resultPersonSize"
			value="${resultPersonSize}" />
		<!-- 关系人不为空 -->
		<c:forEach items="${resultPersonList}" var="per" varStatus="loop">
		<div id="personDiv${loop.index}">
			<div class="divBgColor">
				<table class="col3">
					<tr>
						<td width="150"><fmt:message
								key="label.assess.guarantee.person" bundle="${lang}" /></td>
						<td align="right" width="80%"><input type="button"
							onclick="deletePerson(${loop.index})"
							style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
							title="删除" /></td>
					</tr>
				</table>
			</div>

			<table class="col3">
				<tr>
					<!-- 姓名 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
					<td class="content"><input id=""
						name="personList[${loop.index}].personName" loxiaType="input"
						trim="true" value="${per.personName }" /></td>
					<!-- 证件类型-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1007"
							name="personList[${loop.index}].cardType" isChoose="false"
							selected="${per.cardType }" /></td>
				</tr>
				<tr>
					<!-- 证件号码 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
					<td class="content"><input checkmaster="validateIdentify"
						name="personList[${loop.index}].cardNo" loxiaType="input"
						trim="true" value="${per.cardNo }" /></td>
					<!-- 手机-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
					<td class="content"><input  
						name="personList[${loop.index}].mobilePhone" checkmaster="validatemobile"
						value="${per.mobilePhone }" loxiaType="number" trim="true" /></td>
				</tr>
				<tr>
					<!-- 工作单位-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
					<td class="content"><input
						name="personList[${loop.index}].workUint" value="${per.workUint }"
						loxiaType="input" trim="true" /></td>
					<td class="label"><fmt:message
							key="label.assess.guarantee.position" bundle="${lang}" /></td>
					<td class="content"><input
						name="personList[${loop.index}].position" value="${per.position }"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 工资收入-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.income" bundle="${lang}" /></td>
					<td class="content"><input
						name="personList[${loop.index}].salary" value="${per.salary }"
						loxiaType="input" loxiaType="number" trim="true" /></td>
					<!-- 关系 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.relation" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1020"
							name="personList[${loop.index}].relation" isChoose="false"
							selected="${per.relation }" /></td>
				</tr>
				<tr>
					<!-- 公司地址 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkage:select type="province"
										name="personList[${loop.index}].address3.province"
										pid="pa${loop.index}" cid="ca${loop.index}"
										did="da${loop.index}" seledProvince="${per.address3.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${per.address3.city}"
										name="personList[${loop.index}].address3.city"
										cid="ca${loop.index}" did="da${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${per.address3.district}"
										name="personList[${loop.index}].address3.district"
										did="da${loop.index}" /></td>
								<td class="content"><input id="town3"
									value="${per.address3.town}"
									name="personList[${loop.index}].address3.town"
									loxiaType="input" trim="true" /></td>
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
								<td class="content"><linkage:select type="province"
										name="personList[${loop.index}].address1.province"
										pid="pb${loop.index}" cid="cb${loop.index}"
										did="db${loop.index}" seledProvince="${per.address1.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${per.address1.city}"
										name="personList[${loop.index}].address1.city"
										cid="cb${loop.index}" did="db${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${per.address1.district}"
										name="personList[${loop.index}].address1.district"
										did="db${loop.index}" /></td>
								<td class="content"><input id="town1"
									value="${per.address1.town}"
									name="personList[${loop.index}].address1.town"
									loxiaType="input" trim="true" /></td>
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
								<td class="content"><linkage:select type="province"
										name="personList[${loop.index}].address2.province"
										pid="pc${loop.index}" cid="cc${loop.index}"
										did="dc${loop.index}" seledProvince="${per.address2.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${per.address2.city}"
										name="personList[${loop.index}].address2.city"
										cid="cc${loop.index}" did="dc${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${per.address2.district}"
										name="personList[${loop.index}].address2.district"
										did="dc${loop.index}" /></td>
								<td class="content"><input id="town2"
									value="${per.address2.town}"
									name="personList[${loop.index}].address2.town"
									loxiaType="input" trim="true" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<!-- 电子邮件 -->
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.email" bundle="${lang}" /></td>
					<td class="content"><input id="" loxiaType="input" 
						name="personList[${loop.index}].email" trim="true"
						checkmaster="validateEmail" value="${per.email }" /></td>
					<!-- 即时通讯方式 -->
					<td class="label"><fmt:message key="label.assess.guarantee.im"
							bundle="${lang}" /></td>
					<td class="content"><input id="" loxiaType="input"
						name="personList[${loop.index}].communication" trim="true"
						value="${per.communication }" /></td>
				</tr>
			</table>
			</div>
		</c:forEach>

		<div id="formPersonCollateral"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addPerson">添加担保人</button>
		</div>




		<!-- 添加担保方（公司）模块 -->

		<input type="hidden" name="resultCompSize" id="resultCompSize"
			value="${resultCompSize}" />
		<!-- 关系人不为空 -->
		<c:forEach items="${resultCompList}" var="com" varStatus="loop">
		<div id="compDiv${loop.index}">
			<div class="divBgColor">
				<table class="col3">
					<tr>
						<td width="150"><fmt:message
								key="label.assess.guarantee.side" bundle="${lang}" /></td>
						<td align="right" width="80%"><input type="button"
							onclick="deleteComp(${loop.index})"
							style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
							title="删除" /></td>
						<td colspan="2"></td>
					</tr>
				</table>
			</div>
			<table class="col3">
				<!-- 企业名称 -->
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
					<td class="content"><input id="enterpriseName"
						name="compList[${loop.index}].compName" loxiaType="input"
						trim="true" value="${com.compName }" /></td>
					<!-- 企业英文名 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.English_name"
							bundle="${lang}" /></td>
					<td class="content"><input id="EnglishName"
						name="compList[${loop.index}].englishName" loxiaType="input"
						trim="true" value="${com.englishName }" /></td>
				</tr>
				<tr>
					<!-- 企业性质 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.character"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1013"
							selected="${com.property }"
							name="compList[${loop.index}].property" isChoose="false" /></td>
					<!-- 法人代表名称-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].legalPerson"
						value="${com.legalPerson }" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					</td>
					<!-- 法人代表身份证号 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
					<td class="content"><input checkmaster="validateIdentify"
						name="compList[${loop.index}].cardNo" value="${com.cardNo }" 
						loxiaType="number" trim="true" /></td>
					<!-- 组织机构代码-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].orgCode" value="${com.orgCode }"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 工商营业执照号码 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.business_registrate"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].licenseNo" value="${com.licenseNo }"
						loxiaType="input" trim="true" /></td>
					<!--企业成立日期 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.begin_date"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].establishDate"
						value="${com.establishDate }" loxiaType="date" trim="true" /></td>
				</tr>
				<tr>
					<!-- 注册资本币种 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_currency"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1103"
							name="compList[${loop.index}].registerMoneyType" isChoose="false"
							selected="${com.registerMoneyType }" /></td>
					<!-- 注册资本 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_assets"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].registerMoney"
						value="${com.registerMoney }" loxiaType="number" trim="true" /></td>
				</tr>
				<!-- 所在国家-->
				<!--  
				<tr>
					
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.nation" bundle="${lang}" /></td>
					<td><input name="compList[${loop.index}].inCountry" value="${com.inCountry }"
						loxiaType="number" trim="true" /></td>
				</tr>
				-->
				<tr>
					<!-- 注册地址-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_address"
							bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkage:select type="province"
										name="compList[${loop.index}].address1.province"
										pid="pd${loop.index}" cid="cd${loop.index}"
										did="dd${loop.index}" seledProvince="${com.address1.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${com.address1.city}"
										name="compList[${loop.index}].address1.city"
										cid="cd${loop.index}" did="dd${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${com.address1.district}"
										name="compList[${loop.index}].address1.district"
										did="dd${loop.index}" /></td>
								<td class="content"><input id="town1"
									value="${com.address1.town}"
									name="compList[${loop.index}].address1.town" loxiaType="input"
									trim="true" /></td>
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
										name="compList[${loop.index}].address2.province"
										pid="pe${loop.index}" cid="ce${loop.index}"
										did="de${loop.index}" seledProvince="${com.address2.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${com.address2.city}"
										name="compList[${loop.index}].address2.city"
										cid="ce${loop.index}" did="de${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${com.address2.district}"
										name="compList[${loop.index}].address2.district"
										did="de${loop.index}" /></td>
								<td class="content"><input id="town2"
									value="${com.address2.town}"
									name="compList[${loop.index}].address2.town" loxiaType="input"
									trim="true" /></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<!-- 国标行业分类-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.nation_standard_classify"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1014"
							name="compList[${loop.index}].industryType" isChoose="false"
							selected="${com.industryType }" /></td>
					<!-- 主营业务-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.scope_major"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].mainBusiness"
						value="${com.mainBusiness }" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 公司E－Mail-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].compEmail" value="${com.compEmail }"
						loxiaType="input" trim="true" checkmaster="validateEmail" /></td>
					<!-- 公司网址-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.website" bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].compUrl" value="${com.compUrl }"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 联系电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.con_phone"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].contactPhone"
						value="${com.contactPhone }" loxiaType="input" trim="true" /></td>
					<!-- 传真电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.fax_phone"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].faxPhone" value="${com.faxPhone }"
						loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 财务部联系电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.financial_phone"
							bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].financeContactPhone"
						value="${com.financeContactPhone }" loxiaType="input" trim="true" /></td>
					<!--备注-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.remark" bundle="${lang}" /></td>
					<td class="content"><input
						name="compList[${loop.index}].remark" value="${com.remark }"
						loxiaType="input" trim="true" /></td>

				</tr>
			</table>
			</div>
		</c:forEach>

		<div id="formCompCollateral"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="addComp">添加担保公司</button>
		</div>


		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="saveCollateral">保存</button>
		</div>
		</br>
	</form>
</body>

</html>
