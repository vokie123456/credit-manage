<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/guarantee_enterprise_detail.js'/>"></script>

<body contextpath="<%=request.getContextPath()%>">
	<form >
	   <input type="hidden" id="com_detail_projectId" value="${com.projectId }"/> 

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
						key="label.assess.guarantee.enterprise.character" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1013"
						value="${com.property }"  /></td>
				<!-- 法人代表名称-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.leal_person" bundle="${lang}" /></td>
				<td class="content">${com.legalPerson }</td>
			</tr>
			<tr>
				</td>
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
										name="add1" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="add1" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="add1" property="district" /></td>
								<td class="content">${add1.town}</td>
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
										name="add2" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="add2" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="add1" property="district" /></td>
								<td class="content">${add2.town}</td>
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
						key="label.assess.guarantee.enterprise.con_phone" bundle="${lang}" /></td>
				<td class="content">${com.contactPhone }</td>
				<!-- 传真电话-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.enterprise.fax_phone" bundle="${lang}" /></td>
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
		
		<div class="buttonlist buttonDivWidth">
		        <button id="compReback" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
				</button>
		</div>
	</form>
</body>