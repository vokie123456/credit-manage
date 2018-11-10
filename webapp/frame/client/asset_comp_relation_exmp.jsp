<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 关系人模板 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<linkage:define />
</head>
<br />
<div class="divBgColor">
	<table class="col3">
		<tr>
			<td width="150"><strong>资产所有机构</strong></td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteAssetCompRelation(${compCount})"
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
			name="compAssetRelations[${compCount }].relationobjName"
			loxiaType="input" trim="true" /></td>
		<!-- 营业执照-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].cardNo" loxiaType="input"
			trim="true" /></td>
	</tr>
	<tr>
		<!-- 法人代表名称-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].legalPerson"
			loxiaType="input" trim="true" /></td>
		</td>
		<!-- 法人代表身份证号 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].legalCardNo" id="cardNo"
			loxiaType="input" trim="true" checkmaster="validateCardNo"/></td>
	</tr>
	<tr>
		<!-- 企业性质 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.character" bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1013"
				selected="${com.property }"
				name="compAssetRelations[${compCount }].property" isChoose="false" /></td>
		<!--企业成立日期 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.begin_date" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].establishDate"
			loxiaType="date" trim="true" /></td>
	</tr>
	<tr>
		<!-- 注册资本币种 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.reg_currency"
				bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1103"
				name="compAssetRelations[${compCount }].registerMoneyType"
				isChoose="false" selected="${com.registerMoneyType }" /></td>
		<!-- 注册资本 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.reg_assets" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].registerMoney"
			loxiaType="money" trim="true" /></td>
	</tr>
	<tr>
		<!-- 工商营业执照号码 -->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.business_registrate"
				bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].licenseNo" loxiaType="input"
			trim="true" /></td>
		<!-- 国标行业分类-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.nation_standard_classify"
				bundle="${lang}" /></td>
		<td class="content"><bizoption:bizoption biztypekey="1014"
				name="compAssetRelations[${compCount }].industryType"
				isChoose="false" selected="${com.industryType }" /></td>
	</tr>
	<tr>
		<!-- 主营业务-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.scope_major" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].mainBusiness"
			loxiaType="input" trim="true" /></td>
		<!-- 公司E－Mail-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].compEmail" loxiaType="input"
			trim="true" checkmaster="validateEmail" /></td>
	</tr>
	<tr>
		<td class="label">实际控制人：</td>
		<td class="content"><input id="actualController"
			loxiaType="input"
			name="compAssetRelations[${compCount }].actualController" trim="true" /></td>
		<td class="label">实际控制人职务：</td>
		<td class="content"><input id="actualControllerPosition"
			loxiaType="input"
			name="compAssetRelations[${compCount }].actualControllerPosition"
			trim="true" /></td>
	</tr>
	<tr>
		<td class="label">实际控制人电话：</td>
		<td class="content"><input id="actualControllerTel"
			loxiaType="input"
			name="compAssetRelations[${compCount }].actualControllerTel"
			trim="true" /></td>
		<td class="label">实际控制人手机：</td>
		<td class="content"><input id="actualControllerPhone"
			loxiaType="input" checkmaster="validatemobile"
			name="compAssetRelations[${compCount }].actualControllerPhone"
			trim="true" /></td>
	</tr>
	<tr>
		<td class="label">联系人：</td>
		<td class="content"><input id="contactsPeople" loxiaType="input"
			name="compAssetRelations[${compCount }].contactsPeople" trim="true" /></td>
		<td class="label">联系人职务：</td>
		<td class="content"><input id="contactsPeoplePosition"
			loxiaType="input"
			name="compAssetRelations[${compCount }].contactsPeoplePosition"
			trim="true" /></td>
	</tr>
	<tr>
		<td class="label">联系人电话：</td>
		<td class="content"><input id="contactsPeopleTel"
			loxiaType="input"
			name="compAssetRelations[${compCount }].contactsPeopleTel"
			trim="true" /></td>
		<td class="label">联系人手机：</td>
		<td class="content"><input id="contactsPeoplePhone"
			loxiaType="input" checkmaster="validatemobile"
			name="compAssetRelations[${compCount }].contactsPeoplePhone"
			trim="true" /></td>
	</tr>
	<tr>
		<!-- 联系电话-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.con_phone" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].contactPhone"
			loxiaType="input" trim="true" /></td>
		<!-- 传真电话-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.fax_phone" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].faxPhone" loxiaType="input"
			trim="true" /></td>
	</tr>
	<tr>
		<!-- 财务部联系电话-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.financial_phone"
				bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].financeContactPhone"
			loxiaType="input" trim="true" /></td>
		<!--备注-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.remark" bundle="${lang}" /></td>
		<td class="content"><input
			name="compAssetRelations[${compCount }].remark" loxiaType="input"
			trim="true" /></td>

	</tr>
	<tr>
		<!-- 注册地址-->
		<td class="label"><fmt:message
				key="label.assess.guarantee.enterprise.reg_address" bundle="${lang}" /></td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="compAssetRelations[${compCount }].address1.province"
							pid="pd${compCount }" cid="cd${compCount }" did="dd${compCount }" /></td>
					<td class="content"><linkage:select type="city"
							name="compAssetRelations[${compCount }].address1.city"
							cid="cd${compCount }" did="dd${compCount }" /></td>
					<td class="content"><linkage:select type="district"
							name="compAssetRelations[${compCount }].address1.district"
							did="dd${compCount }" /></td>
					<td class="content"><input id="detail1"
						name="compAssetRelations[${compCount }].address1.detail"
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
							name="compAssetRelations[${compCount }].address2.province"
							pid="pe${compCount }" cid="ce${compCount }" did="de${compCount }" /></td>
					<td class="content"><linkage:select type="city"
							name="compAssetRelations[${compCount }].address2.city"
							cid="ce${compCount }" did="de${compCount }" /></td>
					<td class="content"><linkage:select type="district"
							name="compAssetRelations[${compCount }].address2.district"
							did="de${compCount }" /></td>
					<td class="content"><input id="town2"
						name="compAssetRelations[${compCount }].address2.detail"
						loxiaType="input" trim="true" /></td>
				</tr>
			</table>
		</td>
	</tr>
</table>