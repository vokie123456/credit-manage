<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<div class="divBgColor">贷款信息</div>
<table class="col3">
	<tr>
		<!-- 客户来源   -->
		<td class="label"><fmt:message key="label.applyDetail.clientFrom"
				bundle="${lang}" /></td>
		<td class="content"><bizoptionname:showname biztypekey="1004"
				value="${applyBasic.clientFrom }" /></td>
		<!-- 希望贷款金额   -->
		<td class="label"><fmt:message
				key="label.applyDetail.loanHopeMoney" bundle="${lang}" /></td>
		<td class="content">${applyBasic.loanHopeMoney }</td>

	</tr>
	<tr>
		<!-- 贷款用途  键值对数据 -->
		<td class="label"><fmt:message
				key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
		<td class="content"><bizoptionname:showname biztypekey="1099"
				value="${applyBasic.loanPurpose }" /></td>
		<!-- 信息来源  personBasic.infoFrom -->
		<td class="label"><fmt:message key="label.applyDetail.infoFrom"
				bundle="${lang}" /></td>
		<td class="content"><bizoptionname:showname biztypekey="1022"
				value="${applyBasic.infoFrom }" /></td>
	</tr>
	<tr>
		<!-- 工作流程  -->
		<td class="label"><fmt:message key="label.applyDetail.wf_code"
				bundle="${lang}" /></td>
		<td class="content">${project.wfName}</td>
		<!-- 产品名称  -->
		<td class="label"><fmt:message key="label.loan.product.loan.name"
				bundle="${lang}" /></td>
		<td class="content">${project.prodName}</td>
	</tr>
</table>

<div class="divBgColor">企业信息</div>
<table class="col3">
	<tr>
		<td class="label">组织机构代码：</td>
		<td class="content">${enterprise.organizationCode}</td>
		<td colspan="2"></td>
	</tr>
	<tr>
		<input type="hidden" id="projectId" name="projectId"
			value="${applyBasic.projectId}" />
		<td class="label">企业名称：</td>
		<td class="content">${applyBasic.clientName}</td>

		<td class="label">成立日期：</td>
		<td class="content">${enterprise.beginDate}</td>
	</tr>
	<tr>
		<td class="label">注册资本：</td>
		<td class="content">${enterprise.registeredAssets }</td>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">法人代表：</td>
		<td class="content">${enterprise.lealPerson }</td>
	</tr>
	<tr>
		<!-- 信息来源  applyPersonBasic.infoFrom -->
		<td class="label">身份证号：</td>
		<td class="content">${enterprise.cardNo }</td>

		<td class="label">电话/传真：</td>
		<td class="content">${enterprise.telephone }</td>
	</tr>
	<tr>
		<td class="label">电子邮件：</td>
		<td class="content">${enterprise.email }</td>
		<td colspan="2"></td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">注册地址：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkageshow:show type="province"
							name="regAddr" property="province" /></td>
					<td class="content"><linkageshow:show type="city"
							name="regAddr" property="city" /></td>
					<td class="content"><linkageshow:show type="district"
							name="regAddr" property="district" /></td>
					<td class="content">${regAddr.town }</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">办公地址：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkageshow:show type="province"
							name="officeAddr" property="province" /></td>
					<td class="content"><linkageshow:show type="city"
							name="officeAddr" property="city" /></td>
					<td class="content"><linkageshow:show type="district"
							name="officeAddr" property="district" /></td>
					<td class="content">${officeAddr.town }</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">生产地址：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkageshow:show type="province"
							name="prodAddr" property="province" /></td>
					<td class="content"><linkageshow:show type="city"
							name="prodAddr" property="city" /></td>
					<td class="content"><linkageshow:show type="district"
							name="prodAddr" property="district" /></td>
					<td class="content">${prodAddr.town }</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="label">经营范围：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="label">主营：</td>
					<td class="content">${enterprise.scopeMajor }</td>
					<td class="label">兼营：</td>
					<td class="content">${enterprise.scopeMiner }</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">科技企业认定情况：</td>
		<td colspan="3">${enterprise.technologyAffirm }</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">企业相关资质证书：</td>
		<td colspan="3">${enterprise.qualificationCert }</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">专利情况：</td>
		<td colspan="3">${enterprise.patents }</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">行业归属：</td>
		<td colspan="3"><bizoptionname:showname biztypekey="1014"
				value="${enterprise.workIndustry }" /></td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">企业性质：</td>
		<td colspan="3"><bizoptionname:showname biztypekey="1013"
				value="${enterprise.workType }" /></td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">主营产品：</td>
		<td colspan="3">${enterprise.prodMajor }</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">兼营产品：</td>
		<td colspan="3">${enterprise.prodMiner }</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">主要市场：</td>
		<td colspan="3">${enterprise.marketMajor }</td>
	</tr>
	<tr>
		<!-- 贷款期限 applyPersonBasic.loanPeriod -->
		<td class="label">员工构成：</td>
		<td colspan="3">
			<table class="col3">
				<c:forEach items="${members }" var="mem" varStatus="status">
					<c:if test="${status.count%2 eq 1}">
						<tr>
					</c:if>
					<td class="label"><bizoptionname:showname biztypekey="1061"
							value="${mem.elementType }" />：</td>
					<td class="content">${mem.elementCount }</td>

					<c:if test="${status.count%2 eq 0}">
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</td>
	</tr>
	<tr>
		<td class="label">相关证照：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<c:forEach items="${license }" var="li">
						<td class="content"><bizoptionname:showname biztypekey="1057"
								value="${li.licenseType }" /></td>
					</c:forEach>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="label">编号：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<c:forEach items="${license }" var="li">
						<td class="content">${li.licenseCode }</td>
					</c:forEach>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="label">年检日期：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<c:forEach items="${license }" var="li">
						<td class="content">${li.annualCheck }</td>
					</c:forEach>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div class="divBgColor">业务人员信息</div>
<table class="col3">
	<tr>
		<td class="label">营业所：</td>
		<td class="content">${project.salerOrg }</td>
		<td colspan="2"></td>
		<!--  
		<td class="label">销售团队</td>
		<td>${project.salerCompany }</td>
		-->
	</tr>
	<tr>
		<td class="label">客户经理A：</td>
		<td class="content">${project.salerAName }</td>
		<td class="label">客户经理B：</td>
		<td class="content">${project.salerBName }</td>
	</tr>
</table>
