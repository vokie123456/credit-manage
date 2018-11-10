<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/guarantee_enterprise_edit.js'/>"></script>

<body contextpath="<%=request.getContextPath()%>">
	<form id="guaranteeCompEditForm">
		<input type="hidden" name="projectId" id="com_projectId"
			value="${com.projectId }" /> <input type="hidden" name="compCode"
			value="${com.compCode }" />

		<div class="divBgColor">
			<table class="col3">
				<tr>
					<td width="150"><fmt:message key="label.assess.guarantee.side"
							bundle="${lang}" /></td>
				</tr>
			</table>
		</div>
		<table class="col3">
			<!-- 企业名称 -->
			<tr>
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
				<td class="content"><input id="enterpriseName" name="compName"
					loxiaType="input" trim="true" value="${com.compName }" /></td>
				<!-- 企业英文名 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.English_name"
						bundle="${lang}" /></td>
				<td class="content"><input id="EnglishName" name="englishName"
					loxiaType="input" trim="true" value="${com.englishName }" /></td>
			</tr>
			<tr>
				<!-- 企业性质 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.character" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1013"
						selected="${com.property }" name="property" isChoose="false" /></td>
				<!-- 法人代表名称-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
				<td class="content"><input name="legalPerson"
					value="${com.legalPerson }" loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				</td>
				<!-- 法人代表身份证号 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
				<td class="content"><input name="cardNo" value="${com.cardNo }"
					loxiaType="number" trim="true" checkmaster="validateIdentify" /></td>
				<!-- 组织机构代码-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
				<td class="content"><input name="orgCode"
					value="${com.orgCode }" loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<!-- 工商营业执照号码 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.business_registrate"
						bundle="${lang}" /></td>
				<td class="content"><input name="licenseNo"
					value="${com.licenseNo }" loxiaType="input" trim="true" /></td>
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
					value="${com.registerMoney }" loxiaType="number" trim="true" /></td>
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
									name="address1.province" pid="p1" cid="c1" did="d1"
									seledProvince="${com.address1.province}" /></td>
							<td class="content"><linkage:select type="city"
									seledCity="${com.address1.city}" name="address1.city" cid="c1"
									did="d1" /></td>
							<td class="content"><linkage:select type="district"
									seledDistrict="${com.address1.district}"
									name="address1.district" did="d1" /></td>
							<td class="content"><input id="town1"
								value="${com.address1.town}" name="address1.town"
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
									name="address2.province" pid="p2" cid="c2" did="d2"
									seledProvince="${com.address2.province}" /></td>
							<td class="content"><linkage:select type="city"
									seledCity="${com.address2.city}" name="address2.city" cid="2"
									did="d2" /></td>
							<td class="content"><linkage:select type="district"
									seledDistrict="${com.address2.district}"
									name="address2.district" did="d2" /></td>
							<td class="content"><input id="town2"
								value="${com.address2.town}" name="address2.town"
								loxiaType="input" trim="true" /></td>
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
						name="industryType" isChoose="false"
						selected="${com.industryType }" /></td>
				<!-- 主营业务-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.scope_major"
						bundle="${lang}" /></td>
				<td class="content"><input name="mainBusiness"
					value="${com.mainBusiness }" loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<!-- 公司E－Mail-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
				<td class="content"><input name="compEmail"
					value="${com.compEmail }" loxiaType="input" trim="true" /></td>
				<!-- 公司网址-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.website" bundle="${lang}" /></td>
				<td class="content"><input name="compUrl"
					value="${com.compUrl }" loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<!-- 联系电话-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.con_phone" bundle="${lang}" /></td>
				<td class="content"><input name="contactPhone"
					value="${com.contactPhone }" loxiaType="input" trim="true" /></td>
				<!-- 传真电话-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.fax_phone" bundle="${lang}" /></td>
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
				<td class="content"><input name="remark" value="${com.remark }"
					loxiaType="input" trim="true" /></td>

			</tr>
		</table>

		<div class="buttonlist buttonDivWidth">
			<button id="saveCompInfo" type="submit" loxiaType="button"
				class="confirm">
				<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
			</button>

			<button id="reback" type="button" loxiaType="button" class="confirm">
				<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>