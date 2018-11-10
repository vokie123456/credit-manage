<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_enterprise_edit.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.del_all {
	text-align: right;
}
</style>
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
				href="#div-1">企业客户</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">客户资质相关</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">历史押品信息</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<!-- 个人申请贷款 -->
			<form id="applyAddForm" method="post">

				<!-- 企业信息查询（存量客户 增量客户）证件类型 身份证号码   -->
				<div id="formApplyAdd">
					<div class="divBgColor">企业资料</div>
					<table>
						<tr>
							<!-- 客户来源   -->
							<td class="label"><fmt:message
									key="label.applyDetail.clientFrom" bundle="${lang}" /></td>
							<td align="left" colspan="2"><radio:radio biztypekey="1004"
									id="clientFrom" name="clientBasic.clientFrom"></radio:radio><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">营业执照:</td>
							<td width="150"><input id="organizationCode"
								name="enterpriseBasic.organizationCode" loxiaType="input"
								trim="true" mandatory="true"
								value="${enterpriseBasic.organizationCode}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td class="label">企业名称:</td>
							<td><input id="clientName" name="clientBasic.clientName"
								loxiaType="input" trim="true" mandatory="true"
								value="${enterpriseBasic.clientName}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">成立时间:</td>
							<td><input id="beginDate" loxiaType="date"
								name="enterpriseBasic.beginDate" trim="true"
								value="${enterpriseBasic.beginDate}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td class="label">注册资本:</td>
							<td width="150"><input id="registeredAssets"
								name="enterpriseBasic.registeredAssets" loxiaType="number"
								decimal="2" trim="true" mandatory="true"
								value="${enterpriseBasic.registeredAssets}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td></td>
						</tr>
						<tr>
							<td class="label">注册地:</td>
							<td width="150"><linkage:select type="province"
									name="address1.province" pid="pi0" cid="ci0" did="di0"
									mandatory="true" seledProvince="${enterpriseBasic.province1}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><linkage:select type="city"
									name="address1.city" cid="ci0" did="di0" mandatory="true"
									seledCity="${enterpriseBasic.city1}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><linkage:select type="district"
									name="address1.district" did="di0" mandatory="true"
									seledDistrict="${enterpriseBasic.district1}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><input id="town" name="address1.town"
								loxiaType="input" trim="true" mandatory="true"
								value="${enterpriseBasic.town1}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">办公地址:</td>
							<td width="150"><linkage:select type="province"
									name="address2.province" pid="pi1" cid="ci1" did="di1"
									mandatory="true" seledProvince="${enterpriseBasic.province2}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><linkage:select type="city"
									name="address2.city" cid="ci1" did="di1" mandatory="true"
									seledCity="${enterpriseBasic.city2}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><linkage:select type="district"
									name="address2.district" did="di1" mandatory="true"
									seledDistrict="${enterpriseBasic.district2}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><input id="town2" name="address2.town"
								loxiaType="input" trim="true" mandatory="true"
								value="${enterpriseBasic.town2}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">生产地址:</td>
							<td width="150"><linkage:select type="province"
									name="address3.province" pid="pi2" cid="ci2" did="di2"
									mandatory="true" seledProvince="${enterpriseBasic.province3}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><linkage:select type="city"
									name="address3.city" cid="ci2" did="di2" mandatory="true"
									seledCity="${enterpriseBasic.city3}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><linkage:select type="district"
									name="address3.district" did="di2" mandatory="true"
									seledDistrict="${enterpriseBasic.district3}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td width="150"><input id="town3" name="address3.town"
								loxiaType="input" trim="true" mandatory="true"
								value="${enterpriseBasic.town3}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">企业性质:</td>
							<td align="left" width="150"><bizoption:bizoption
									biztypekey="1013" id="workType" name="enterpriseBasic.workType"
									isChoose="true" mandatory="true"
									selected="${enterpriseBasic.workType}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td class="label">单位行业:</td>
							<td align="left" width="150"><bizoption:bizoption
									biztypekey="1014" id="workIndustry"
									name="enterpriseBasic.workIndustry" isChoose="true"
									mandatory="true" selected="${enterpriseBasic.workIndustry}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">法人代表:</td>
							<td align="left"><input id="lealPerson" loxiaType="input"
								name="enterpriseBasic.lealPerson" trim="true"
								value="${enterpriseBasic.lealPerson}" /></td>
							<td class="label">身份证号码:</td>
							<td align="left"><input id="cardNo" loxiaType="input"
								name="enterpriseBasic.cardNo" trim="true"
								value="${enterpriseBasic.cardNo}" checkmaster="validateCardNo" /></td>
							<td class="label">电话:</td>
							<td align="left"><input id="telephone" loxiaType="input"
								name="enterpriseBasic.telephone" trim="true"
								value="${enterpriseBasic.telephone}" /></td>
						</tr>
						<tr>
							<td class="label">电子邮件:</td>
							<td align="left"><input id="email" loxiaType="input"
								name="enterpriseBasic.email" trim="true"
								value="${enterpriseBasic.email}" /></td>
							<td class="label">经营范围/主营:</td>
							<td><input id="scopeMajor" loxiaType="input"
								name="enterpriseBasic.scopeMajor" trim="true"
								value="${enterpriseBasic.scopeMajor}" /></td>
							<td>经营范围/兼营:</td>
							<td><input id="scopeMiner" loxiaType="input"
								name="enterpriseBasic.scopeMiner" trim="true"
								value="${enterpriseBasic.scopeMiner}" /></td>
						</tr>
						</tr>
						<tr>
							<tr>
								<td class="label">科技企业认定情况:</td>
								<td colspan="5"><input id="technologyAffirm"
									loxiaType="input" name="enterpriseBasic.technologyAffirm"
									trim="true" value="${enterpriseBasic.technologyAffirm}" /></td>
							</tr>
							<tr>
								<td class="label">企业相关资质证书:</td>
								<td colspan="5"><input id="qualificationCert"
									loxiaType="input" name="enterpriseBasic.qualificationCert"
									trim="true" value="${enterpriseBasic.qualificationCert}" /></td>
							</tr>
							<tr>
								<td class="label">专利情况:</td>
								<td colspan="5"><input id="patents" loxiaType="input"
									name="enterpriseBasic.patents" trim="true"
									value="${enterpriseBasic.patents}" /></td>
							</tr>
							<tr>
								<td class="label">主营产品:</td>
								<td colspan="5"><input id="prodMajor" loxiaType="input"
									name="enterpriseBasic.prodMajor" trim="true"
									value="${enterpriseBasic.prodMajor}" /></td>
							</tr>
							<tr>
								<td class="label">兼营产品:</td>
								<td colspan="5"><input id="prodMiner" loxiaType="input"
									name="enterpriseBasic.prodMiner" trim="true"
									value="${enterpriseBasic.prodMiner}" /></td>
							</tr>
							<tr>
								<td class="label">主要市场:</td>
								<td colspan="5"><input id="marketMajor" loxiaType="input"
									name="enterpriseBasic.marketMajor" trim="true"
									value="${enterpriseBasic.marketMajor}" /></td>
							</tr>
							<tr>
								<td class="label" rowspan="2">相关证件:</td>
								<td align="center">营业执照编号:</td>
								<td align="center"><input id="licenseInfo1.licenseCode"
									loxiaType="input" name="licenseInfo1.licenseCode" trim="true"
									value="${enterpriseBasic.licenseCode1}" /></td>
								<td align="center">法人代码证编号:</td>
								<td align="center"><input id="licenseInfo2.licenseCode"
									loxiaType="input" name="licenseInfo2.licenseCode" trim="true"
									value="${enterpriseBasic.licenseCode2}" /></td>
							</tr>
							<tr>
								<td align="center">税务登记证编号:</td>
								<td align="center"><input id="licenseInfo3.licenseCode"
									loxiaType="input" name="licenseInfo3.licenseCode" trim="true"
									value="${enterpriseBasic.licenseCode3}" /></td>
								<td align="center">贷款卡编号:</td>
								<td align="center"><input id="licenseInfo4.licenseCode"
									loxiaType="input" name="licenseInfo4.licenseCode" trim="true"
									value="${enterpriseBasic.licenseCode4}" /></td>
							</tr>
							<tr>
								<td class="label" rowspan="2">年检:</td>
								<td align="center">营业执照:</td>
								<td align="center"><input id="licenseInfo1.annualCheck"
									loxiaType="date" name="licenseInfo1.annualCheck" trim="true"
									value="${enterpriseBasic.annualCheck1}" /></td>
								<td align="center">法人代码证:</td>
								<td align="center"><input id="licenseInfo2.annualCheck"
									loxiaType="date" name="licenseInfo2.annualCheck" trim="true"
									value="${enterpriseBasic.annualCheck2}" /></td>
							</tr>
							<tr>
								<td align="center">税务登记证:</td>
								<td align="center"><input id="licenseInfo3.annualCheck"
									loxiaType="date" name="licenseInfo3.annualCheck" trim="true"
									value="${enterpriseBasic.annualCheck3}" /></td>
								<td align="center">贷款卡:</td>
								<td align="center"><input id="licenseInfo4.annualCheck"
									loxiaType="date" name="licenseInfo4.annualCheck" trim="true"
									value="${enterpriseBasic.annualCheck4}" /></td>
							</tr>
							<tr>
								<td class="label" rowspan="4">员工构成:</td>
								<td align="center">员工总数:</td>
								<td align="center"><input id="element1.elementCount"
									loxiaType="number" name="element1.elementCount" trim="true"
									value="${enterpriseBasic.elemcount1}" /></td>
								<td align="center">大专以上人数</td>
								<td align="center"><input id="element2.elementCount"
									loxiaType="number" name="element2.elementCount" trim="true"
									value="${enterpriseBasic.elemcount5}" /></td>
							</tr>
							<tr>
								<td align="center">技术开发人员总数:</td>
								<td align="center"><input id="element3.elementCount"
									loxiaType="number" name="element3.elementCount" trim="true"
									value="${enterpriseBasic.elemcount2}" /></td>
								<td align="center">其中本科学历人数</td>
								<td align="center"><input id="element4.elementCount"
									loxiaType="number" name="element4.elementCount" trim="true"
									value="${enterpriseBasic.elemcount6}" /></td>
							</tr>
							<tr>
								<td align="center">硕士及以上人数:</td>
								<td align="center"><input id="element5.elementCount"
									loxiaType="number" name="element5.elementCount" trim="true"
									value="${enterpriseBasic.elemcount8}" /></td>
								<td align="center">中高级技术职称人数</td>
								<td align="center"><input id="element6.elementCount"
									loxiaType="number" name="element6.elementCount" trim="true"
									value="${enterpriseBasic.elemcount4}" /></td>
							</tr>
							<tr>
								<td align="center">管理人员人数:</td>
								<td align="center"><input id="element7.elementCount"
									loxiaType="number" name="element7.elementCount" trim="true"
									value="${enterpriseBasic.elemcount3}" /></td>
								<td align="center">本科以上人数</td>
								<td align="center"><input id="element8.elementCount"
									loxiaType="number" name="element8.elementCount" trim="true"
									value="${enterpriseBasic.elemcount7}" /></td>
							</tr>
					</table>
				</div>

				</br> <input type="hidden" id="clientId"
					value="${enterpriseBasic.clientId }"
					name="enterpriseBasic.clientId" />

				<div class="buttonlist buttonDivWidth">
					<button type="submit" loxiaType="button" class="confirm"
						id="btnSave">保存</button>

					<button type="reset" loxiaType="button" class="confirm"
						title="tip：<fmt:message key="button.reset" bundle="${lang}"/>"
						id="btnReset">
						<fmt:message key="button.reset" bundle="${lang}" />
					</button>
				</div>
			</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>

</body>
</html>
