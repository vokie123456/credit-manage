<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_enterprise_store_add.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">企业申请</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">押品登记</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">电子文档</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<!-- 个人申请贷款 -->
			<form id="applyAddForm" method="post">
				<input type="hidden" id="projectStauts"
					name="clientProject.projectStauts" /> <input type="hidden"
					id="applyId" name="applyId" value="${enterpriseBasic.applyId}" />
				<input type="hidden" id="projectId" name="clientProject.projectId"
					value="${enterpriseBasic.projectId}" />
				<div class="divBgColor">流程选择</div>
				<table>
					<tr>
						<td class="label">流程选择：</td>
						<td class="content"><select id="wfCode" name="wfCode">
								<c:forEach items="${compWorkflowVos }" var="compWorkflowVo">
									<c:choose>
										<c:when test="${wfCode == compWorkflowVo.wfCode }">
											<option value="${compWorkflowVo.wfCode }" selected="selected">${compWorkflowVo.wfName }</option>
										</c:when>
										<c:otherwise>
											<option value="${compWorkflowVo.wfCode }">${compWorkflowVo.wfName }</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
						</select></td>
					</tr>
				</table>
				<br />
				<div class="divBgColor">贷款信息</div>
				<table>
					<tr>
						<!-- 客户来源   -->
						<td class="label"><fmt:message
								key="label.applyDetail.clientFrom" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1004"
								id="clientFrom" name="clientBasic.clientFrom"
								checked="${enterpriseBasic.clientFrom}"></radio:radio><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
				</table>
				<table>
					<tr>
						<!-- 希望贷款金额   -->
						<td class="label"><fmt:message
								key="label.applyDetail.loanHopeMoney" bundle="${lang}" /></td>
						<td class="content"><input id="loanHopeMoney"
							loxiaType="number" decimal="2" trim="true" mandatory="true"
							name="applyBasic.loanHopeMoney"
							value="${enterpriseBasic.loanHopeMoney}" /> <label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
				</table>
				<table>
					<tr>
						<!-- 贷款用途  键值对数据 -->
						<td class="label"><fmt:message
								key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1099"
								id="loanPurpose" name="applyBasic.loanPurpose"
								checked="${enterpriseBasic.loanPurpose}"></radio:radio> <label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
					<tr>
						<!-- 信息来源  personBasic.infoFrom -->
						<td class="label"><fmt:message
								key="label.applyDetail.infoFrom" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1022"
								id="infoFrom" name="applyBasic.infoFrom"
								checked="${enterpriseBasic.infoFrom}"></radio:radio> <label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>

					<tr>
						<!-- 贷款产品 -->
						<td class="label"><fmt:message
								key="label.loan.product.loan.name" bundle="${lang}" /> <input
							type="hidden" id="edit_productid" value="${pc.productId }" /></td>
						<td class="content"><select id="loanProduct" name="productId"
							class="ui-loxia-default ui-corner-all" /> <label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>

				</table>
				<br /> <br />
				<!-- 企业信息查询（存量客户 增量客户）证件类型 身份证号码   -->
				<div class="divBgColor">企业资料</div>
				<div class="content_middle">
					<div id="formApplyAdd">
						<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
						<table class="col3">
							<td class="label">组织机构代码：</td>
							<td class="content"><input id="organizationCode"
								name="enterpriseBasic.organizationCode" loxiaType="input"
								trim="true" mandatory="true" readonly="readonly"
								value="${enterpriseBasic.organizationCode}" /> <label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td colspan="2"></td>
							<tr>
								<td class="label">企业名称：</td>
								<td class="content"><input id="clientName"
									name="clientBasic.clientName" loxiaType="input" trim="true"
									mandatory="true" value="${enterpriseBasic.clientName}" /> <label
									class="del_mandatory">&nbsp;&nbsp;*</label></td>
								<td class="label">成立时间：</td>
								<td class="content"><input id="beginDate" loxiaType="date"
									name="enterpriseBasic.beginDate" trim="true" mandatory="true"
									value="${enterpriseBasic.beginDate}" /> <label
									class="del_mandatory">&nbsp;&nbsp;*</label></td>
							</tr>
							<tr>
								<td class="label">注册资本：</td>
								<td class="content"><input id="registeredAssets"
									name="enterpriseBasic.registeredAssets" loxiaType="number"
									decimal="2" trim="true" mandatory="true"
									value="${enterpriseBasic.registeredAssets}" /><label
									class="del_mandatory">&nbsp;&nbsp;*</label></td>
								<td class="label">企业性质：</td>
								<td class="content"><bizoption:bizoption biztypekey="1013"
										id="workType" name="enterpriseBasic.workType" isChoose="false"
										mandatory="true" selected="${enterpriseBasic.workType}" /> <label
									class="del_mandatory">&nbsp;&nbsp;*</label></td>
							</tr>
							<tr>
								<td class="label">注册地址：</td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="content"><linkage:select type="province"
													name="address1.province" pid="pi0" cid="ci0" did="di0"
													mandatory="true"
													seledProvince="${enterpriseBasic.province1}" /></td>
											<td class="content"><linkage:select type="city"
													name="address1.city" cid="ci0" did="di0" mandatory="true"
													seledCity="${enterpriseBasic.city1}" /></td>
											<td class="content"><linkage:select type="district"
													name="address1.district" did="di0" mandatory="true"
													seledDistrict="${enterpriseBasic.district1}" /></td>
											<td class="content"><input id="town"
												name="address1.town" loxiaType="input" trim="true"
												mandatory="true" value="${enterpriseBasic.town1}" /><label
												class="del_mandatory">&nbsp;&nbsp;*</label></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="label">办公地址：</td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="content"><linkage:select type="province"
													name="address2.province" pid="pi1" cid="ci1" did="di1"
													mandatory="true"
													seledProvince="${enterpriseBasic.province2}" /></td>
											<td class="content"><linkage:select type="city"
													name="address2.city" cid="ci1" did="di1" mandatory="true"
													seledCity="${enterpriseBasic.city2}" /></td>
											<td class="content"><linkage:select type="district"
													name="address2.district" did="di1" mandatory="true"
													seledDistrict="${enterpriseBasic.district2}" /></td>
											<td class="content"><input id="town2"
												name="address2.town" loxiaType="input" trim="true"
												mandatory="true" value="${enterpriseBasic.town2}" /> <label
												class="del_mandatory">&nbsp;&nbsp;*</label></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="label">生产地址：</td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="content"><linkage:select type="province"
													name="address3.province" pid="pi2" cid="ci2" did="di2"
													seledProvince="${enterpriseBasic.province3}" /></td>
											<td class="content"><linkage:select type="city"
													name="address3.city" cid="ci2" did="di2"
													seledCity="${enterpriseBasic.city3}" /></td>
											<td class="content"><linkage:select type="district"
													name="address3.district" did="di2"
													seledDistrict="${enterpriseBasic.district3}" /></td>
											<td class="content"><input id="town3"
												name="address3.town" loxiaType="input" trim="true"
												value="${enterpriseBasic.town3}" /></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="label">单位行业：</td>
								<td class="content"><bizoption:bizoption biztypekey="1014"
										id="workIndustry" name="enterpriseBasic.workIndustry"
										isChoose="false" mandatory="true"
										selected="${enterpriseBasic.workIndustry}" /> <label
									class="del_mandatory">&nbsp;&nbsp;*</label></td>
								<td class="label">法人代表：</td>
								<td class="content"><input id="lealPerson"
									loxiaType="input" name="enterpriseBasic.lealPerson" trim="true"
									value="${enterpriseBasic.lealPerson}" /></td>
							</tr>
							<tr>
								<td class="label">身份证号码：</td>
								<td class="content"><input id="cardNo" loxiaType="input"
									name="enterpriseBasic.cardNo" trim="true"
									value="${enterpriseBasic.cardNo}"
									checkmaster="validateIdentify" /></td>
								<td class="label">电话：</td>
								<td class="content"><input id="telephone" loxiaType="input"
									name="enterpriseBasic.telephone" trim="true"
									value="${enterpriseBasic.telephone}" /></td>
							</tr>
							<tr>
								<td class="label">电子邮件：</td>
								<td class="content"><input id="email" loxiaType="input"
									name="enterpriseBasic.email" trim="true"
									value="${enterpriseBasic.email}" checkmaster="validateEmail" /></td>
								<td colspan="2"></td>
							</tr>
							<tr>
								<td class="label">经营范围/主营：</td>
								<td colspan="3"><input id="scopeMajor" loxiaType="input"
									style="width: 94%;" name="enterpriseBasic.scopeMajor"
									trim="true" value="${enterpriseBasic.scopeMajor}" /></td>
							</tr>
							<tr>
								<td class="label">经营范围/兼营：</td>
								<td colspan="3"><input id="scopeMiner" loxiaType="input"
									style="width: 94%;" name="enterpriseBasic.scopeMiner"
									trim="true" value="${enterpriseBasic.scopeMiner}" /></td>
							</tr>
							<tr>
								<td class="label">科技企业认定情况：</td>
								<td colspan="3"><input id="technologyAffirm"
									loxiaType="input" style="width: 94%;"
									name="enterpriseBasic.technologyAffirm" trim="true"
									value="${enterpriseBasic.technologyAffirm}" /></td>
							</tr>
							<tr>
								<td class="label">企业相关资质证书：</td>
								<td colspan="3"><input id="qualificationCert"
									loxiaType="input" style="width: 94%;"
									name="enterpriseBasic.qualificationCert" trim="true"
									value="${enterpriseBasic.qualificationCert}" /></td>
							</tr>
							<tr>
								<td class="label">专利情况：</td>
								<td colspan="3"><input id="patents" loxiaType="input"
									style="width: 94%;" name="enterpriseBasic.patents" trim="true"
									value="${enterpriseBasic.patents}" /></td>
							</tr>
							<tr>
								<td class="label">主营产品：</td>
								<td colspan="3"><input id="prodMajor" loxiaType="input"
									style="width: 94%;" name="enterpriseBasic.prodMajor"
									trim="true" value="${enterpriseBasic.prodMajor}" /></td>
							</tr>
							<tr>
								<td class="label">兼营产品：</td>
								<td colspan="3"><input id="prodMiner" loxiaType="input"
									style="width: 94%;" name="enterpriseBasic.prodMiner"
									trim="true" value="${enterpriseBasic.prodMiner}" /></td>
							</tr>
							<tr>
								<td class="label">主要市场：</td>
								<td colspan="3"><input id="marketMajor" loxiaType="input"
									style="width: 94%;" name="enterpriseBasic.marketMajor"
									trim="true" value="${enterpriseBasic.marketMajor}" /></td>
							</tr>
							<tr>
								<td class="label">相关证件：</td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="label">营业执照编号：</td>
											<td class="content"><input id="licenseInfo1.licenseCode"
												loxiaType="input" name="licenseInfo1.licenseCode"
												trim="true" value="${enterpriseBasic.licenseCode1}" /></td>
											<td class="label">法人代码证编号：</td>
											<td class="content"><input id="licenseInfo2.licenseCode"
												loxiaType="input" name="licenseInfo2.licenseCode"
												trim="true" value="${enterpriseBasic.licenseCode2}" /></td>
										</tr>
										<tr>
											<td class="label">税务登记证编号：</td>
											<td class="content"><input id="licenseInfo3.licenseCode"
												loxiaType="input" name="licenseInfo3.licenseCode"
												trim="true" value="${enterpriseBasic.licenseCode3}" /></td>
											<td class="label">贷款卡编号：</td>
											<td class="content"><input id="licenseInfo4.licenseCode"
												loxiaType="input" name="licenseInfo4.licenseCode"
												trim="true" value="${enterpriseBasic.licenseCode4}" /></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="label">年检日期：</td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="label">营业执照：</td>
											<td class="content"><input id="licenseInfo1.annualCheck"
												loxiaType="date" name="licenseInfo1.annualCheck" trim="true"
												value="${enterpriseBasic.annualCheck1}" /></td>
											<td class="label">法人代码证：</td>
											<td class="content"><input id="licenseInfo2.annualCheck"
												loxiaType="date" name="licenseInfo2.annualCheck" trim="true"
												value="${enterpriseBasic.annualCheck2}" /></td>
										</tr>
										<tr>
											<td class="label">税务登记证：</td>
											<td class="content"><input id="licenseInfo3.annualCheck"
												loxiaType="date" name="licenseInfo3.annualCheck" trim="true"
												value="${enterpriseBasic.annualCheck3}" /></td>
											<td class="label">贷款卡：</td>
											<td class="content"><input id="licenseInfo4.annualCheck"
												loxiaType="date" name="licenseInfo4.annualCheck" trim="true"
												value="${enterpriseBasic.annualCheck4}" /></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="label">员工构成：</td>
								<td colspan="3">
									<table class="col3">
										<tr>
											<td class="label">员工总数：</td>
											<td class="content"><input id="element1.elementCount"
												loxiaType="number" name="element1.elementCount" trim="true"
												value="${enterpriseBasic.elemcount1}" /></td>
											<td class="label">大专以上人数：</td>
											<td class="content"><input id="element2.elementCount"
												loxiaType="number" name="element2.elementCount" trim="true"
												value="${enterpriseBasic.elemcount5}" /></td>
										</tr>
										<tr>
											<td class="label">技术开发人员总数：</td>
											<td class="content"><input id="element3.elementCount"
												loxiaType="number" name="element3.elementCount" trim="true"
												value="${enterpriseBasic.elemcount2}" /></td>
											<td class="label">其中本科学历人数：</td>
											<td class="content"><input id="element4.elementCount"
												loxiaType="number" name="element4.elementCount" trim="true"
												value="${enterpriseBasic.elemcount6}" /></td>
										</tr>
										<tr>
											<td class="label">硕士及以上人数：</td>
											<td class="content"><input id="element5.elementCount"
												loxiaType="number" name="element5.elementCount" trim="true"
												value="${enterpriseBasic.elemcount8}" /></td>
											<td class="label">中高级技术职称人数：</td>
											<td class="content"><input id="element6.elementCount"
												loxiaType="number" name="element6.elementCount" trim="true"
												value="${enterpriseBasic.elemcount4}" /></td>
										</tr>
										<tr>
											<td class="label">管理人员人数：</td>
											<td class="content"><input id="element7.elementCount"
												loxiaType="number" name="element7.elementCount" trim="true"
												value="${enterpriseBasic.elemcount3}" /></td>
											<td class="label">本科以上人数：</td>
											<td class="content"><input id="element8.elementCount"
												loxiaType="number" name="element8.elementCount" trim="true"
												value="${enterpriseBasic.elemcount7}" /></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>

				</br>
				<div class="divBgColor">业务人员信息</div>
				<div class="content_middle">
					<table class="col3">
						<tr>
							<td class="label">营业所：</td>
							<td class="content"><bizorg:bizorg id="bizHall"
									name="clientProject.bizHall" compCode="${compCode }"
									selected="${enterpriseBasic.orgCodeNo}" isBusiness="true" /></td>
							<!--  
						<td class="label">销售团队</td>
						<td class="content"><input id="clientProject.salerTeam"
							loxiaType="number" name="clientProject.salerTeam"
							value="${enterpriseBasic.salerTeam}" /></td>
					    -->
							<td colspan="2"></td>
						</tr>
						<tr>
							<td class="label">客户经理A：</td>
							<td class="content"><userDepartment:userDepartment
									bizHall="${bizHall}" id="saleraCode"
									name="clientProject.saleraCode"
									selected="${enterpriseBasic.saleraCode}" mandatory="true" /><label
								class="del_mandatory">*</label></td>
							<td class="label">客户经理B：</td>
							<td class="content"><userDepartment:userDepartment
									bizHall="${bizHall}" id="saleraCode"
									name="clientProject.salerbCode"
									selected="${enterpriseBasic.salerbCode}" isChoose="true" /></td>
						</tr>
					</table>
				</div>
				<div class="buttonlist buttonDivWidth">
					<button type="submit" loxiaType="button" class="confirm"
						id="saveApply">暂存</button>
					<button type="button" loxiaType="button" class="confirm"
						id="submitApply">提交</button>
					<button type="reset" loxiaType="button" class="confirm"
						title="tip：<fmt:message key="button.reset" bundle="${lang}"/>"
						id="reset2">
						<fmt:message key="button.reset" bundle="${lang}" />
					</button>
					<button type="button" loxiaType="button" class="confirm" id="back">
						<fmt:message key="button.toback" bundle="${lang}" />
					</button>
				</div>
			</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
</body>