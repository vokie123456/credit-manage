<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.enterpriseClientMaterialEntry"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_client_material_detail.js'/>"></script>
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
				href="#div-1">基本情况</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">资产负债表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">利润表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">现金流量表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">企业主要财务指标</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<!-- 基本情况 -->
			<div class="divBgColor">企业资料</div>
			<div class="content_middle">
				<table class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
					<tr>
						<td class="label BgColor">营业执照：</td>
						<td class="content">${enterpriseBasic.organizationCode}</td>
						<td class="label BgColor">企业名称：</td>
						<td class="content tabBorderRight">${enterpriseBasic.clientName}</td>
					</tr>
					<tr>
						<td class="label BgColor">注册资本(万元)：</td>
						<td class="content">${enterpriseBasic.registeredAssets}</td>
						<td class="label BgColor">成立时间：</td>
						<td class="content tabBorderRight"><fmt:formatDate
								value='${enterpriseBasic.beginDate}' pattern='yyyy-MM-dd'></fmt:formatDate></td>
					</tr>
					<tr>
						<td class="label BgColor">企业性质：</td>
						<td class="content"><bizoptionname:showname biztypekey="1013"
								value="${enterpriseBasic.workType}" /></td>
						<td class="label BgColor"><fmt:message
								key="label.applyDetail.workSize" bundle="${lang}" /></td>
						<td class="content tabBorderRight"><bizoptionname:showname biztypekey="1015"
								value="${enterpriseBasic.workSize}" /></td>
					</tr>
					<tr>
						<td class="label BgColor">所属行业：</td>
						<td class="content"><bizoptionname:showname biztypekey="1014"
								value="${enterpriseBasic.workIndustry}" /></td>
						<td class="label BgColor">贷款卡号码：</td>
						<td class="content tabBorderRight">${enterpriseBasic.creditCard}</td>
					</tr>
					<tr>
						<td class="label BgColor">注册地址：</td>
						<td colspan="3" class="tabBorderRight">
							<table class="col3">
								<tr>
									<td class="content borBottom tabBorderRight"><linkageshow:show type="province"
											name="enterpriseBasic" property="province1" /><linkageshow:show type="city"
											name="enterpriseBasic" property="city1" /><linkageshow:show type="district"
											name="enterpriseBasic" property="district1" />${enterpriseBasic.detail1}</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="label BgColor">办公地址：</td>
						<td colspan="3" class="tabBorderRight">
							<table class="col3">
								<tr>
									<td class="content borBottom tabBorderRight"><linkageshow:show type="province"
											name="enterpriseBasic" property="province2" /><linkageshow:show type="city"
											name="enterpriseBasic" property="city2" /><linkageshow:show type="district"
											name="enterpriseBasic" property="district2" />${enterpriseBasic.detail2}</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="label BgColor">生产地址：</td>
						<td colspan="3" class="tabBorderRight">
							<table class="col3">
								<tr>
									<td class="content borBottom tabBorderRight"><linkageshow:show type="province"
											name="enterpriseBasic" property="province3" /><linkageshow:show type="city"
											name="enterpriseBasic" property="city3" /><linkageshow:show type="district"
											name="enterpriseBasic" property="district3" />${enterpriseBasic.detail3}</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="label BgColor">法人代表：</td>
						<td class="content">${enterpriseBasic.lealPerson}</td>
						<td class="label BgColor">身份证号码：</td>
						<td class="content tabBorderRight">${enterpriseBasic.cardNo}</td>
					</tr>
					<tr>
						<td class="label BgColor">实际控制人：</td>
						<td class="content">${enterpriseBasic.actualController}</td>
						<td class="label BgColor">实际控制人职务：</td>
						<td class="content tabBorderRight">${enterpriseBasic.actualControllerPosition}</td>
					</tr>
					<tr>
						<td class="label BgColor">实际控制人电话：</td>
						<td class="content">${enterpriseBasic.actualControllerTel}</td>
						<td class="label BgColor">实际控制人手机：</td>
						<td class="content tabBorderRight">${enterpriseBasic.actualControllerPhone}</td>
					</tr>
					<tr>
						<td class="label BgColor">联系人：</td>
						<td class="content">${enterpriseBasic.contactsPeople}</td>
						<td class="label BgColor">联系人职务：</td>
						<td class="content tabBorderRight">${enterpriseBasic.contactsPeoplePosition}</td>
					</tr>
					<tr>
						<td class="label BgColor">联系人电话：</td>
						<td class="content">${enterpriseBasic.contactsPeopleTel}</td>
						<td class="label BgColor">联系人手机：</td>
						<td class="content tabBorderRight">${enterpriseBasic.contactsPeoplePhone}</td>
					</tr>
					<tr>
						<td class="label BgColor">电话/传真：</td>
						<td class="content">${enterpriseBasic.telephone}</td>
						<td class="label BgColor">电子邮件：</td>
						<td class="content tabBorderRight">${enterpriseBasic.email}</td>
					</tr>
					<tr>
						<td class="label BgColor">主营范围：</td>
						<td class="content tabBorderRight" colspan="3">${enterpriseBasic.scopeMajor}</td>
					</tr>
					<tr>   
						<td class="label BgColor">兼营范围：</td>
						<td class="content tabBorderRight" colspan="3">${enterpriseBasic.scopeMiner}</td>
					</tr>
					<tr>
						<td class="label BgColor">科技企业认定情况：</td>
						<td colspan="3" class="content tabBorderRight">${enterpriseBasic.technologyAffirm}</td>
					</tr>
					<tr>
						<td class="label BgColor">企业相关资质证书：</td>
						<td colspan="3" class="content tabBorderRight">${enterpriseBasic.qualificationCert}</td>
					</tr>
					<tr>
						<td class="label BgColor">专利情况：</td>
						<td colspan="3" class="content tabBorderRight">${enterpriseBasic.patents}</td>
					</tr>
					
					<tr>
						<td class="label BgColor">主营产品：</td>
						<td colspan="3" class="content tabBorderRight">${enterpriseBasic.prodMajor}</td>
					</tr>
					<tr>
						<td class="label BgColor">兼营产品：</td>
						<td colspan="3" class="content tabBorderRight">${enterpriseBasic.prodMiner}</td>
					</tr>
					<tr>
						<td class="label BgColor">主要市场：</td>
						<td colspan="3" class="content tabBorderRight">${enterpriseBasic.marketMajor}</td>
					</tr>
					<tr>
						<td class="label BgColor">员工构成：</td>      
						<td colspan="3" class="tabBorderRight">
							<table class="textalignCenter borTop " cellpadding="0"
					cellspacing="0">
								<tr>
									<td class="label ">员工总数：</td>
									<td class="content">${enterpriseBasic.elemcount1}</td>
									<td class="label">大专以上人数：</td>
									<td class="content tabBorderRight">${enterpriseBasic.elemcount5}</td>
								</tr>
								<tr>
									<td class="label">技术开发人员总数：</td>
									<td class="content">${enterpriseBasic.elemcount2}</td>
									<td class="label">其中本科学历人数：</td>
									<td class="content tabBorderRight">${enterpriseBasic.elemcount6}</td>
								</tr>
								<tr>
									<td class="label">硕士及以上人数：</td>
									<td class="content">${enterpriseBasic.elemcount8}</td>
									<td class="label">中高级技术职称人数：</td>
									<td class="content tabBorderRight">${enterpriseBasic.elemcount4}</td>
								</tr>
								<tr>
									<td class="label borBottom">管理人员人数：</td>
									<td class="content borBottom">${enterpriseBasic.elemcount3}</td>
									<td class="label borBottom">本科以上人数：</td>
									<td class="content tabBorderRight borBottom">${enterpriseBasic.elemcount7}</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</div>
			<br />
			<div class="divBgColor">主要股东</div>
			<div class="content_middle_more">
				<table width="100%" id="tabEnterpriseShareholders"  class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr class="tabcustomTr">
							<th>股东名称</th>
							<th>证件类型</th>
							<th>证件号码</th>
							<th>出资额(万元)</th>
							<th>占比%</th>
							<th>出资方式</th>
							<th class="tabBorderRight">联系电话</th>
						</tr>
					</thead>
					<tbody id="enterpriseShareholdersBody">
						<c:forEach items="${enterpriseBasic.enterpriseShareholders}"
							var="enterpriseShareholders" varStatus="loop">
							<tr>
								<td>${enterpriseShareholders.relationobjName }</td>
								<td><bizoptionname:showname biztypekey="1102,1007"
										value="${enterpriseShareholders.cardType }" /></td>
								<td>${enterpriseShareholders.cardNo }</td>
								<td>${enterpriseShareholders.investmentAmount }</td>
								<td>${enterpriseShareholders.shareStock }</td>
								<td><bizoptionname:showname biztypekey="1130"
										value="${enterpriseShareholders.investmentWay }" /></td>
								<td class="tabBorderRight">${enterpriseShareholders.telephone }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<br />
			<div class="divBgColor">主要高管</div>
			<div class="content_middle_more">
				<table width="100%" class="textalignCenter tabcustom" cellpadding="0"
					cellspacing="0">
					<thead>
						<tr class="tabcustomTr">
							<th>姓名</th>
							<th>证件类型</th>
							<th>证件号码</th>
							<th>职位</th>
							<th>年龄</th>
							<th>职称</th>
							<th class="tabBorderRight">个人持股比例%</th>
						</tr>
					</thead>
					<tbody id="enterpriseSeniorsBody">
						<c:forEach items="${enterpriseBasic.enterpriseSeniors}"
							var="enterpriseSeniors" varStatus="loop">
							<tr>
								<td>${enterpriseSeniors.relationobjName}</td>
								<td><bizoptionname:showname biztypekey="1102,1007"
										value="${enterpriseSeniors.cardType }" /></td>
								<td>${enterpriseSeniors.cardNo }</td>
								<td>${enterpriseSeniors.position}</td>
								<td>${enterpriseSeniors.age}</td>
								<td>${enterpriseSeniors.jobTitle}</td>
								<td class="tabBorderRight">${enterpriseSeniors.shareStock}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
	<input type="hidden" id="clientId" value="${enterpriseBasic.clientId }"
		name="enterpriseBasic.clientId" />
</body>
</html>
