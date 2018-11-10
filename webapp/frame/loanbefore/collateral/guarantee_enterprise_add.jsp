<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/guarantee_enterprise_add.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.guarantee.title.com" bundle="${lang}" />
		</div>

		<form id="guaranteeComEditForm" method="post">
			<input type="hidden" id="com_projectId" name="comProjectId"
				value="${projectId}" /> <input type="hidden" name="guaranteeId"
				value="${com.guaranteeId }" />
			<table class="col3">
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
					<td class="content"><input name="guaranteeName"
						loxiaType="input" trim="true" value="${com.guaranteeName }" /></td>
					<!-- 营业执照-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
					<td class="content"><input name="cardNo"
						value="${com.cardNo }" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 法人代表名称-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
					<td class="content"><input name="legalPerson"
						value="${com.legalPerson }" loxiaType="input" trim="true" /></td>
					<!-- 法人代表身份证号 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
					<td class="content"><input name="legalCardNo" id="cardNo"
						value="${com.legalCardNo }" loxiaType="input" trim="true"
						checkmaster="validateCardNo" /></td>
				</tr>
				<tr>
					<!-- 企业性质 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.character"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1013"
							selected="${com.property }" name="property" isChoose="false" /></td>
					<!--企业成立日期 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.begin_date"
							bundle="${lang}" /></td>
					<td class="content"><input name="establishDate"
						value="${com.establishDate }" loxiaType="date" trim="true" /></td>
				</tr>
				<tr>
					<!-- 注册资本币种 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_currency"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1103"
							name="registerMoneyType" isChoose="false"
							selected="${com.registerMoneyType }" /></td>
					<!-- 注册资本 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.reg_assets"
							bundle="${lang}" /></td>
					<td class="content"><input name="registerMoney"
						value="${com.registerMoney }" loxiaType="money"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 工商营业执照号码 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.business_registrate"
							bundle="${lang}" /></td>
					<td class="content"><input name="licenseNo"
						value="${com.licenseNo }" loxiaType="input" trim="true" /></td>
					<!-- 国标行业分类-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.nation_standard_classify"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1014"
							name="industryType" isChoose="false"
							selected="${com.industryType }" /></td>
				</tr>
				<tr>
					<!-- 主营业务-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.scope_major"
							bundle="${lang}" /></td>
					<td class="content"><input name="mainBusiness"
						value="${com.mainBusiness }" loxiaType="input" trim="true" /></td>
					<!-- 公司E－Mail-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
					<td class="content"><input name="compEmail"
						value="${com.compEmail }" loxiaType="input" trim="true"
						checkmaster="validateEmail" /></td>
				</tr>
				<tr>
					<!-- 担保金额-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.money2" bundle="${lang}" /></td>
					<td class="content"><input name="guaranteeMoney"
						value="${com.guaranteeMoney }" loxiaType="money"
						trim="true" id="guaranteeMoney" onchange="countRate()"/></td>
					<!-- 担保比例 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.moneyRate2" bundle="${lang}" /></td>
					<td class="content"><input name="guaranteeRate" id="guaranteeRate"
						value="${com.guaranteeRate }" decimal="2" loxiaType="number"
						trim="true" /></td>
				</tr>
				<tr>
					<td class="label">实际控制人：</td>
					<td class="content"><input id="actualController"
						loxiaType="input" name="actualController" trim="true"
						value="${com.actualController}" /></td>
					<td class="label">实际控制人职务：</td>
					<td class="content"><input id="actualControllerPosition"
						loxiaType="input" name="actualControllerPosition" trim="true"
						value="${com.actualControllerPosition}" /></td>
				</tr>
				<tr>
					<td class="label">实际控制人电话：</td>
					<td class="content"><input id="actualControllerTel"
						loxiaType="input" name="actualControllerTel" trim="true"
						value="${com.actualControllerTel}" /></td>
					<td class="label">实际控制人手机：</td>
					<td class="content"><input id="actualControllerPhone"
						loxiaType="input" name="actualControllerPhone" trim="true"
						value="${com.actualControllerPhone}" checkmaster="validatemobile" /></td>
				</tr>
				<tr>
					<td class="label">联系人：</td>
					<td class="content"><input id="contactsPeople"
						loxiaType="input" name="contactsPeople" trim="true"
						value="${com.contactsPeople}" /></td>
					<td class="label">联系人职务：</td>
					<td class="content"><input id="contactsPeoplePosition"
						loxiaType="input" name="contactsPeoplePosition" trim="true"
						value="${com.contactsPeoplePosition}" /></td>
				</tr>
				<tr>
					<td class="label">联系人电话：</td>
					<td class="content"><input id="contactsPeopleTel"
						loxiaType="input" name="contactsPeopleTel" trim="true"
						value="${com.contactsPeopleTel}" /></td>
					<td class="label">联系人手机：</td>
					<td class="content"><input id="contactsPeoplePhone"
						loxiaType="input" name="contactsPeoplePhone" trim="true"
						value="${com.contactsPeoplePhone}" checkmaster="validatemobile" /></td>
				</tr>
				<tr>
					<!-- 联系电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.con_phone"
							bundle="${lang}" /></td>
					<td class="content"><input name="contactPhone"
						value="${com.contactPhone }" loxiaType="input" trim="true" /></td>
					<!-- 传真电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.fax_phone"
							bundle="${lang}" /></td>
					<td class="content"><input name="faxPhone"
						value="${com.faxPhone }" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 财务部联系电话-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.enterprise.financial_phone"
							bundle="${lang}" /></td>
					<td class="content"><input name="financeContactPhone"
						value="${com.financeContactPhone }" loxiaType="input" trim="true" /></td>
					<!--备注-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.remark" bundle="${lang}" /></td>
					<td class="content"><input name="remark"
						value="${com.remark }" loxiaType="input" trim="true" /></td>

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
										name="address1.province" pid="pd${loop.index}"
										cid="cd${loop.index}" did="dd${loop.index}"
										seledProvince="${com.address1.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${com.address1.city}" name="address1.city"
										cid="cd${loop.index}" did="dd${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${com.address1.district}"
										name="address1.district" did="dd${loop.index}" /></td>
								<td class="content"><input id="town1"
									value="${com.address1.detail}" name="address1.detail"
									loxiaType="input" trim="true" /></td>
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
										name="address2.province" pid="pe${loop.index}"
										cid="ce${loop.index}" did="de${loop.index}"
										seledProvince="${com.address2.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${com.address2.city}" name="address2.city"
										cid="ce${loop.index}" did="de${loop.index}" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${com.address2.district}"
										name="address2.district" did="de${loop.index}" /></td>
								<td class="content"><input id="town2"
									value="${com.address2.detail}" name="address2.detail"
									loxiaType="input" trim="true" /></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

			<div class="buttonlist buttonDivWidth" id="carAssessBut">
				<button id="submitGuaranteeCom" type="button" loxiaType="button"
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
