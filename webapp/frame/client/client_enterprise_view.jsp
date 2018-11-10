<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_enterprise_view.js'/>"></script>
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
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_detail">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#detail-1">个人客户</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#detail-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#detail-2">客户资质相关</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#detail-2">历史押品信息</a></li>
		</ul>

		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="detail-1">

			<div id="formApplyAdd">
				<div class="divBgColor">企业资料</div>
				<input type="hidden" id="enterprise_clientid"
					value="${enterpriseBasic.clientId }">
				<table>
					<tr>
						<td class="label">营业执照:</td>
						<td width="150">${enterpriseBasic.organizationCode}</td>
						<!-- 客户来源   -->
						<td class="label"><fmt:message
								key="label.applyDetail.clientFrom" bundle="${lang}" /></td>
						<td align="left" colspan="2"><bizoptionname:showname
								biztypekey="1004" value="${enterpriseBasic.clientFrom }" /></td>
					</tr>
					<tr>
						<td class="label">企业名称:</td>
						<td colspan="4">${enterpriseBasic.clientName}</td>
					</tr>
					<tr>
						<td class="label">成立时间:</td>
						<td align="left" width="150">${enterpriseBasic.beginDate}</td>
						<td class="label">注册资本:</td>
						<td width="150">${enterpriseBasic.registeredAssets}</td>
						<td></td>
					</tr>
					<tr>
						<td class="label">注册地:</td>
						<td><linkageshow:show type="province" name="enterpriseBasic"
								property="province1" /></td>
						<td><linkageshow:show type="city" name="enterpriseBasic"
								property="city1" /></td>
						<td><linkageshow:show type="district" name="enterpriseBasic"
								property="district1" /></td>
						<td>${enterpriseBasic.town1}</td>
					</tr>
					<tr>
						<td class="label">办公地址:</td>
						<td><linkageshow:show type="province" name="enterpriseBasic"
								property="province2" /></td>
						<td><linkageshow:show type="city" name="enterpriseBasic"
								property="city2" /></td>
						<td><linkageshow:show type="district" name="enterpriseBasic"
								property="district2" /></td>
						<td>${enterpriseBasic.town2}</td>
					</tr>
					<tr>
						<td class="label">生产地址:</td>
						<td><linkageshow:show type="province" name="enterpriseBasic"
								property="province3" /></td>
						<td><linkageshow:show type="city" name="enterpriseBasic"
								property="city3" /></td>
						<td><linkageshow:show type="district" name="enterpriseBasic"
								property="district3" /></td>
						<td>${enterpriseBasic.town3}</td>
					</tr>
					<tr>
						<td class="label">法人代表:</td>
						<td align="left">${enterpriseBasic.lealPerson}</td>
						<td class="label">身份证号码:</td>
						<td align="left">${enterpriseBasic.cardNo}</td>
						<td></td>
					</tr>
					<tr>
						<td class="label">电话:</td>
						<td align="left">${enterpriseBasic.telephone}</td>
						<td class="label">电子邮件:</td>
						<td align="left">${enterpriseBasic.email}</td>
						<td></td>
					</tr>
					<tr>
						<td class="label" rowspan="2">经营范围:</td>
						<td align="center">主营:</td>
						<td colspan="3">${enterpriseBasic.scopeMajor}</td>
					</tr>
					<tr>
						<td align="center">兼营:</td>
						<td colspan="3">${enterpriseBasic.scopeMiner}</td>
					</tr>
					<tr>
						<td class="label">科技企业认定情况:</td>
						<td colspan="3">${enterpriseBasic.technologyAffirm}</td>
					</tr>
					<tr>
						<td class="label">企业相关资质证书:</td>
						<td colspan="3">${enterpriseBasic.qualificationCert}</td>
					</tr>
					<tr>
						<td class="label">专利情况:</td>
						<td colspan="3">${enterpriseBasic.patents}</td>
					</tr>
					<tr>
						<td class="label" rowspan="2">相关证件:</td>
						<td align="center">营业执照编号:</td>
						<td align="center">${enterpriseBasic.licenseCode1}</td>
						<td align="center">法人代码证编号:</td>
						<td align="center">${enterpriseBasic.licenseCode2}</td>
					</tr>
					<tr>
						<td align="center">税务登记证编号:</td>
						<td align="center">${enterpriseBasic.licenseCode3}</td>
						<td align="center">贷款卡编号:</td>
						<td align="center">${enterpriseBasic.licenseCode4}</td>
					</tr>
					<tr>
						<td class="label" rowspan="2">年检:</td>
						<td align="center">营业执照:</td>
						<td align="center">${enterpriseBasic.annualCheck1}</td>
						<td align="center">法人代码证:</td>
						<td align="center">${enterpriseBasic.annualCheck2}</td>
					</tr>
					<tr>
						<td align="center">税务登记证:</td>
						<td align="center">${enterpriseBasic.annualCheck3}</td>
						<td align="center">贷款卡:</td>
						<td align="center">${enterpriseBasic.annualCheck4}</td>
					</tr>
					<tr>
						<td class="label">企业性质:</td>
						<td align="center" colspan="4"><bizoptionname:showname
								biztypekey="1013" value="${enterpriseBasic.workType}" /></td>
					</tr>
					<tr>
						<td class="label">单位行业:</td>
						<td align="center" colspan="4" width="230"><bizoptionname:showname
								biztypekey="1014" value="${enterpriseBasic.workIndustry}" /></td>
					</tr>
					<tr>
						<td class="label">主营产品:</td>
						<td colspan="3">${enterpriseBasic.prodMajor}</td>
					</tr>
					<tr>
						<td class="label">兼营产品:</td>
						<td colspan="3">${enterpriseBasic.prodMiner}</td>
					</tr>
					<tr>
						<td class="label">主要市场:</td>
						<td colspan="3">${enterpriseBasic.marketMajor}</td>
					</tr>
					<tr>
						<td class="label" rowspan="4">员工构成:</td>
						<td align="center">员工总数:</td>
						<td align="center">${enterpriseBasic.elemcount1}</td>
						<td align="center">大专以上人数</td>
						<td align="center">${enterpriseBasic.elemcount5}</td>
					</tr>
					<tr>
						<td align="center">技术开发人员总数:</td>
						<td align="center">${enterpriseBasic.elemcount2}</td>
						<td align="center">其中本科学历人数</td>
						<td align="center">${enterpriseBasic.elemcount6}</td>
					</tr>
					<tr>
						<td align="center">硕士及以上人数:</td>
						<td align="center">${enterpriseBasic.elemcount8}</td>
						<td align="center">中高级技术职称人数</td>
						<td align="center">${enterpriseBasic.elemcount4}</td>
					</tr>
					<tr>
						<td align="center">管理人员人数:</td>
						<td align="center">${enterpriseBasic.elemcount3}</td>
						<td align="center">本科以上人数</td>
						<td align="center">${enterpriseBasic.elemcount7}</td>
					</tr>
				</table>
			</div>
			</div>
			
			<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="detail-2"></div>
	</div>
</body>
</html>