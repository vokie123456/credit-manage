<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<div class="divBgColor">
	<table class="col3">
		<tr>
			<td width="150"><fmt:message
					key="label.assess.guarantee.side" bundle="${lang}" /></td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteComp(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table class="col3">
	<!-- 企业名称 -->
	<tr>
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
		<td class="content"><input id="enterpriseName"
			name="compList[${count}].compName" loxiaType="input" trim="true" /></td>
		<!-- 企业英文名 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.English_name"
				bundle="${lang}" /></td>
		<td class="content"><input id="EnglishName"
			name="compList[${count}].englishName" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 企业性质 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.character" bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1013"
				name="compList[${count}].property" isChoose="false" /></td>
		<!-- 法人代表名称-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].legalPerson"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 法人代表身份证号 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].cardNo" checkmaster="validateIdentify"
			value="" loxiaType="number" trim="true" /></td>
		<!-- 组织机构代码-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].orgCode"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 工商营业执照号码 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.business_registrate"
				bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].licenseNo"
			value="" loxiaType="input" trim="true" /></td>
		<!--企业成立日期 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.begin_date" bundle="${lang}" /></td>
		<td class="content"><input
			name="compList[${count}].establishDate" value="" loxiaType="date"
			trim="true" /></td>
	</tr>
	<tr>
		<!-- 注册资本币种 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.reg_currency"
				bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1103"
				name="compList[${count}].registerMoneyType" isChoose="false" /></td>
		<!-- 注册资本 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.reg_assets" bundle="${lang}" /></td>
		<td class="content"><input
			name="compList[${count}].registerMoney" value="" loxiaType="number"
			trim="true" /></td>
	</tr>
	<!-- 所在国家-->
	<!--  
	<tr>
		
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.nation" bundle="${lang}" /></td>
		<td><input name="compList[${count}].inCountry" value=""
			loxiaType="number" trim="true" /></td>
	</tr>
	-->
	<tr>
		<!-- 注册地址-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.reg_address" bundle="${lang}" /></td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="compList[${count}].address1.province" pid="pd${count}"
							cid="cd${count}" did="dd${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="compList[${count}].address1.city" cid="cd${count}"
							did="dd${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="compList[${count}].address1.district" did="dd${count}" /></td>
					<td class="content"><input id="town1"
						name="compList[${count}].address1.town" loxiaType="input"
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
							name="compList[${count}].address2.province" pid="pe${count}"
							cid="ce${count}" did="de${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="compList[${count}].address2.city" cid="ce${count}"
							did="de${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="compList[${count}].address2.district" did="de${count}" /></td>
					<td class="content"><input id="town2"
						name="compList[${count}].address2.town" loxiaType="input"
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
				name="compList[${count}].industryType" isChoose="false" /></td>
		<!-- 主营业务-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.scope_major" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].mainBusiness"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 公司E－Mail-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].compEmail"
			value="" loxiaType="input" trim="true" checkmaster="validateEmail" /></td>
		<!-- 公司网址-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.website" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].compUrl"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 联系电话-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.con_phone" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].contactPhone"
			value="" loxiaType="input" trim="true" /></td>
		<!-- 传真电话-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.fax_phone" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].faxPhone"
			value="" loxiaType="input" trim="true" /></td>
	</tr>
	<tr>
		<!-- 财务部联系电话-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.financial_phone"
				bundle="${lang}" /></td>
		<td class="content"><input
			name="compList[${count}].financeContactPhone" value=""
			loxiaType="input" trim="true" /></td>
		<!--备注-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.remark" bundle="${lang}" /></td>
		<td class="content"><input name="compList[${count}].remark"
			value="" loxiaType="input" trim="true" /></td>

	</tr>
</table>