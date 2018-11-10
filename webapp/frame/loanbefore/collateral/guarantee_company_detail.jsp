<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/guarantee_company_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.guarantee.title.ent" bundle="${lang}" />
		</div>
		<input type="hidden" id="com_projectId" name="comProjectId"
			value="${projectId}" /> <input type="hidden" name="guaranteeId"
			value="${com.guaranteeId }" />
		<table class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
			<tr>
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.name" bundle="${lang}" /></td>
				<td class="content">${com.guaranteeName }</td>
				<!-- 营业执照-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.org_code" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.cardNo }</td>
			</tr>
			<tr>
				<!-- 法人代表名称-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
				<td class="content">${com.legalPerson }</td>
				<!-- 法人代表身份证号 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.leal_person.cardNo" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.legalCardNo }</td>
			</tr>
			<tr>
				<!-- 企业性质 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.character" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1013"
						value="${com.property }" name="property" /></td>
				<!--企业成立日期 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.begin_date"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.establishDate }</td>
			</tr>
			<tr>
				<!-- 注册资本币种 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.reg_currency"
						bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1103"
						name="registerMoneyType" value="${com.registerMoneyType }" /></td>
				<!-- 注册资本 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.reg_assets"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.registerMoney }</td>
			</tr>
			<tr>
				<!-- 工商营业执照号码 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.business_registrate"
						bundle="${lang}" /></td>
				<td class="content">${com.licenseNo }</td>
				<!-- 国标行业分类-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.nation_standard_classify"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1014"
						name="industryType" value="${com.industryType }" /></td>
			</tr>
			<tr>
				<!-- 主营业务-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.scope_major"
						bundle="${lang}" /></td>
				<td class="content">${com.mainBusiness }</td>
				<!-- 公司E－Mail-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.email" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.compEmail }</td>
			</tr>
			<tr>
				<!-- 担保金额-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.money" bundle="${lang}" /></td>
				<td class="content">${com.guaranteeMoney }</td>
				<!-- 担保比例 -->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.moneyRate" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.guaranteeRate }</td>
			</tr>
			<tr>
				<td class="label BgColor">实际控制人：</td>
				<td class="content">${com.actualController}</td>
				<td class="label BgColor">实际控制人职务：</td>
				<td class="content tabBorderRight">${com.actualControllerPosition}</td>
			</tr>
			<tr>
				<td class="label BgColor">实际控制人电话：</td>
				<td class="content">${com.actualControllerTel}</td>
				<td class="label BgColor">实际控制人手机：</td>
				<td class="content tabBorderRight">${com.actualControllerPhone}</td>
			</tr>
			<tr>
				<td class="label BgColor">联系人：</td>
				<td class="content">${com.contactsPeople}</td>
				<td class="label BgColor">联系人职务：</td>
				<td class="content tabBorderRight">${com.contactsPeoplePosition}</td>
			</tr>
			<tr>
				<td class="label BgColor">联系人电话：</td>
				<td class="content">${com.contactsPeopleTel}</td>
				<td class="label BgColor">联系人手机：</td>
				<td class="content tabBorderRight">${com.contactsPeoplePhone}</td>
			</tr>
			<tr>
				<!-- 联系电话-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.con_phone" bundle="${lang}" /></td>
				<td class="content">${com.contactPhone }</td>
				<!-- 传真电话-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.fax_phone" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.faxPhone }</td>
			</tr>
			<tr>
				<!-- 财务部联系电话-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.financial_phone"
						bundle="${lang}" /></td>
				<td class="content">${com.financeContactPhone }</td>
				<!--备注-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.remark" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${com.remark }</td>

			</tr>
			<tr>
				<!-- 注册地址-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.reg_address"
						bundle="${lang}" /></td>
				<td colspan="3" class="content tabBorderRight">
					${com.address1.pname}${com.address1.cname}${com.address1.dname}${com.address1.detail}
				</td>
			</tr>
			<tr>
				<!-- 通讯地址-->
				<td class="label BgColor"><fmt:message
						key="label.assess.guarantee.enterprise.comm_address"
						bundle="${lang}" /></td>
				<td colspan="3" class="content tabBorderRight">
					${com.address2.pname}${com.address2.cname}${com.address2.dname}${com.address2.detail}
				</td>
			</tr>
		</table>

		<div class="tabbuttonlist buttonDivWidth" id="carAssessBut">
			<button id="backOper" type="button" loxiaType="button"
				class="confirm">
				<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
			</button>
		</div>
	</div>
</body>
