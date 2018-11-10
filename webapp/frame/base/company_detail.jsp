<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/company_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">

	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">公司基本信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">股东信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">联系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">结算账户信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">服务信息</a></li>
			<!--  
			<li class="ui-state-default ui-corner-top"><a href="#div-2">生成超级管理员</a></li>
		    -->
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<form id="frm-addcompany" method="POST">
				<input id="compCode" name="compCode" type="hidden"
					value="${company.compCode}" />
				<table>
					<tr>
						<td class="label">公司名称：</td>
						<td>${company.compName}</td>
						<td class="label">营业执照：</td>
						<td>${company.organizationCode}</td>
						<td class="label">公司缩写：</td>
						<td>${company.compAbbr}</td>
					</tr>
					<tr>
						<td class="label">上级主管单位：</td>
						<td><bizoptionname:showname biztypekey="1127"
								value="${company.upDepartment}" /></td>
						<td class="label">公司英文名：</td>
						<td>${company.compEnglishName}</td>
					</tr>
					<tr>
						<td class="label">企业性质：</td>
						<td><bizoptionname:showname biztypekey="1127"
								value="${company.compProperty}" /></td>
						<td class="label">经营组织类型：</td>
						<td><bizoptionname:showname biztypekey="1128"
								value="${company.businessType}" /></td>
					</tr>
					<tr>
						<td class="label">法人代表名称：</td>
						<td>${company.legalName}</td>
						<td class="label">法人代表证件类型：</td>
						<td><bizoptionname:showname biztypekey="1007"
								value="${company.legalCardType}" /></td>
					</tr>
					<tr>
						<td class="label">法人代表证件号：</td>
						<td>${company.legalCardNo}</td>
						<td class="label">营业执照到期日：</td>
						<td>${company.orgCodeExpire}</td>
					</tr>
					<tr>
						<td class="label">注册资金(万元)：</td>
						<td>${company.registerCapital}</td>
						<td class="label">注册资金币种：</td>
						<td><bizoptionname:showname biztypekey="1103"
								value="${company.registerCurrency}" /></td>
					</tr>
					<tr>
						<td class="label">实收资本(万元)：</td>
						<td>${company.paidCapital}</td>
						<td class="label">实收资本币种：</td>
						<td><bizoptionname:showname biztypekey="1103"
								value="${company.paidCurrency}" /></td>
					</tr>

					<tr>

						<td class="label">企业成立时间：</td>
						<td>${company.startDate}</td>
					</tr>
					<tr>

						<td class="label">所在国家：</td>
						<td>${company.addrCountry}</td>
					</tr>

					<tr>
						<td class="label">公司地址：</td>
						<td align="left" class="col_1"><linkageshow:show
								type="province" name="addrProvince" property="province" /></td>
						<td align="left" class="col_2"><linkageshow:show type="city"
								name="addrCity" property="city" /></td>
						<td align="left" class="col_3"><linkageshow:show
								type="district" name="addrDistrict" property="district" /></td>
						<td align="left" class="col_4">${company.addrDetail}</td>
					</tr>

					<tr>
						<td class="label">注册地址邮政编码：</td>
						<td>${company.registPostCode}</td>
						<td class="label">通讯地址：</td>
						<td>${company.mailingAddr}</td>
					</tr>
					<tr>
						<td class="label">通讯地址邮政编码：</td>
						<td>${company.mailingPostCode}</td>
						<td class="label">职工人数：</td>
						<td>${company.employees}</td>
					</tr>
					<tr>
						<td class="label">主营业务：</td>
						<td>${company.mainBusiness}</td>
						<td class="label">兼营业务：</td>
						<td>${company.otherBusiness}</td>
					</tr>
					<tr>
						<td class="label">是否集团客户：</td>
						<td><bizoptionname:showname biztypekey="1001"
								value="${company.ifGroupClient}" /></td>
						<td class="label">公司网址：</td>
						<td>${company.compWebsite}</td>
					</tr>

					<tr>
						<td class="label">公司简介：</td>
						<td colspan="6">${company.intro}</td>
					</tr>
					
					<tr>
						<td class="label">结算银行：</td>
						<td><bizoptionname:showname biztypekey="1104"
								value="${company.fundSettlementBank}" /></td>
						<td class="label">放贷总金：</td>
						<td>${company.lendingAllCapital}元</td>
					</tr>
					<tr>
						<td class="label">咨询电话：</td>
						<td>${company.telConsult}</td>
						<td class="label">日常联系电话：</td>
						<td>${company.telOffice}</td>
					</tr>
				</table>
			</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>

</body>
</html>