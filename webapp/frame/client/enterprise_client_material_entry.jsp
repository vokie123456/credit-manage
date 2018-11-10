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
	src="<c:url value='/scripts/frame/client/enterprise_client_material_entry.js'/>"></script>
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
			<form id="entryForm" method="post">
				<div class="divBgColor">企业资料</div>
				<div class="content_middle">
					<table class="col3">
						<tr>
							<td class="label">营业执照：</td>
							<td class="content"><input id="organizationCode"
								value="${enterpriseBasic.organizationCode}"
								name="enterpriseBasic.organizationCode" loxiaType="input"
								trim="true" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
							<td class="label">企业名称：</td>
							<td class="content"><input id="clientName"
								name="clientBasic.clientName" loxiaType="input" trim="true"
								mandatory="true" value="${enterpriseBasic.clientName}" /><label
								class="del_mandatory">&nbsp;&nbsp;*</label></td>
						</tr>
						<tr>
							<td class="label">注册资本(万元)：</td>
							<td class="content"><input id="registeredAssets"
								name="enterpriseBasic.registeredAssets" loxiaType="money"
								trim="true" value="${enterpriseBasic.registeredAssets}"
								checkmaster="proportionCount" /></td>
							<td class="label">成立时间：</td>
							<td class="content"><input id="beginDate" loxiaType="date"
								name="enterpriseBasic.beginDate" trim="true"
								value="<fmt:formatDate value='${enterpriseBasic.beginDate}'
									pattern='yyyy-MM-dd'></fmt:formatDate>" /></td>
						</tr>
						<tr>
							<td class="label">企业性质：</td>
							<td class="content"><bizoption:bizoption biztypekey="1013"
									id="workType" name="enterpriseBasic.workType" isChoose="false"
									selected="${enterpriseBasic.workType}" /></td>
							<td class="label"><fmt:message
									key="label.applyDetail.workSize" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1015"
									id="workSize" name="enterpriseBasic.workSize"
									isChoose="true" selected="${enterpriseBasic.workSize}" /></td>
						</tr>
						<tr>
							<td class="label">所属行业：</td>
							<td class="content"><bizoption:bizoption biztypekey="1014"
									id="workIndustry" name="enterpriseBasic.workIndustry"
									isChoose="false" selected="${enterpriseBasic.workIndustry}" /></td>
							<td class="label">贷款卡号码：</td>
							<td class="content"><input id="creditCard" loxiaType="input"
								name="enterpriseBasic.creditCard" trim="true"
								value="${enterpriseBasic.creditCard}" /></td>
						</tr>
						<tr>
							<td class="label">注册地址：</td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="address1.province" pid="pi0" cid="ci0" did="di0"
												seledProvince="${enterpriseBasic.province1}" /></td>
										<td class="content"><linkage:select type="city"
												name="address1.city" cid="ci0" did="di0"
												seledCity="${enterpriseBasic.city1}" /></td>
										<td class="content"><linkage:select type="district"
												name="address1.district" did="di0"
												seledDistrict="${enterpriseBasic.district1}" /></td>
										<td class="content"><input id="town"
											name="address1.detail" loxiaType="input" trim="true"
											value="${enterpriseBasic.detail1}" /></td>
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
												seledProvince="${enterpriseBasic.province2}" /></td>
										<td class="content"><linkage:select type="city"
												name="address2.city" cid="ci1" did="di1"
												seledCity="${enterpriseBasic.city2}" /></td>
										<td class="content"><linkage:select type="district"
												name="address2.district" did="di1"
												seledDistrict="${enterpriseBasic.district2}" /></td>
										<td class="content"><input id="town2"
											name="address2.detail" loxiaType="input" trim="true"
											value="${enterpriseBasic.detail2}" /></td>
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
											name="address3.detail" loxiaType="input" trim="true"
											value="${enterpriseBasic.detail3}" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="label">法人代表：</td>
							<td class="content"><input id="lealPerson" loxiaType="input"
								name="enterpriseBasic.lealPerson" trim="true"
								value="${enterpriseBasic.lealPerson}" /></td>
							<td class="label">身份证号码：</td>
							<td class="content"><input id="cardNo" loxiaType="input"
								name="enterpriseBasic.cardNo" trim="true"
								value="${enterpriseBasic.cardNo}" checkmaster="validateCardNo" /></td>
						</tr>
						<tr>
							<td class="label">实际控制人：</td>
							<td class="content"><input id="actualController"
								loxiaType="input" name="enterpriseBasic.actualController"
								trim="true" value="${enterpriseBasic.actualController}" /></td>
							<td class="label">实际控制人职务：</td>
							<td class="content"><input id="actualControllerPosition"
								loxiaType="input"
								name="enterpriseBasic.actualControllerPosition" trim="true"
								value="${enterpriseBasic.actualControllerPosition}" /></td>
						</tr>
						<tr>
							<td class="label">实际控制人电话：</td>
							<td class="content"><input id="actualControllerTel"
								loxiaType="input" name="enterpriseBasic.actualControllerTel"
								trim="true" value="${enterpriseBasic.actualControllerTel}" /></td>
							<td class="label">实际控制人手机：</td>
							<td class="content"><input id="actualControllerPhone"
								loxiaType="input" name="enterpriseBasic.actualControllerPhone"
								trim="true" value="${enterpriseBasic.actualControllerPhone}"
								checkmaster="validatemobile" /></td>
						</tr>
						<tr>
							<td class="label">联系人：</td>
							<td class="content"><input id="contactsPeople"
								loxiaType="input" name="enterpriseBasic.contactsPeople"
								trim="true" value="${enterpriseBasic.contactsPeople}" /></td>
							<td class="label">联系人职务：</td>
							<td class="content"><input id="contactsPeoplePosition"
								loxiaType="input" name="enterpriseBasic.contactsPeoplePosition"
								trim="true" value="${enterpriseBasic.contactsPeoplePosition}" /></td>
						</tr>
						<tr>
							<td class="label">联系人电话：</td>
							<td class="content"><input id="contactsPeopleTel"
								loxiaType="input" name="enterpriseBasic.contactsPeopleTel"
								trim="true" value="${enterpriseBasic.contactsPeopleTel}" /></td>
							<td class="label">联系人手机：</td>
							<td class="content"><input id="contactsPeoplePhone"
								loxiaType="input" name="enterpriseBasic.contactsPeoplePhone"
								trim="true" value="${enterpriseBasic.contactsPeoplePhone}"
								checkmaster="validatemobile" /></td>
						</tr>
						<tr>
							<td class="label">电话/传真：</td>
							<td class="content"><input id="telephone" loxiaType="input"
								name="enterpriseBasic.telephone" trim="true"
								value="${enterpriseBasic.telephone}" /></td>
							<td class="label">电子邮件：</td>
							<td class="content"><input id="email" loxiaType="input"
								name="enterpriseBasic.email" trim="true"
								value="${enterpriseBasic.email}" checkmaster="validateEmail" /></td>
						</tr>
						<tr>
							<td class="label">主营范围：</td>
							<td colspan="3" class="content"><input id="scopeMajor"
								style="width: 89%;" loxiaType="input"
								name="enterpriseBasic.scopeMajor" trim="true"
								value="${enterpriseBasic.scopeMajor}" /></td>
						</tr>
						<tr>
							<td class="label">兼营范围：</td>
							<td class="content" colspan="3"><input id="scopeMiner"
								style="width: 89%;" loxiaType="input"
								name="enterpriseBasic.scopeMiner" trim="true"
								value="${enterpriseBasic.scopeMiner}" /></td>
						</tr>
						<tr>
							<td class="label">科技企业认定情况：</td>
							<td colspan="3" class="content"><input id="technologyAffirm"
								style="width: 94%;" loxiaType="input"
								name="enterpriseBasic.technologyAffirm" trim="true"
								value="${enterpriseBasic.technologyAffirm}" /></td>
						</tr>
						<tr>
							<td class="label">企业相关资质证书：</td>
							<td colspan="3" class="content"><input
								id="qualificationCert" style="width: 94%;" loxiaType="input"
								name="enterpriseBasic.qualificationCert" trim="true"
								value="${enterpriseBasic.qualificationCert}" /></td>
						</tr>
						<tr>
							<td class="label">专利情况：</td>
							<td colspan="3" class="content"><input id="patents"
								loxiaType="input" style="width: 94%;"
								name="enterpriseBasic.patents" trim="true"
								value="${enterpriseBasic.patents}" /></td>
						</tr>
						
						<tr>
							<td class="label">主营产品：</td>
							<td colspan="3" class="content"><input id="prodMajor"
								loxiaType="input" style="width: 94%;"
								name="enterpriseBasic.prodMajor" trim="true"
								value="${enterpriseBasic.prodMajor}" /></td>
						</tr>
						<tr>
							<td class="label">兼营产品：</td>
							<td colspan="3" class="content"><input id="prodMiner"
								loxiaType="input" style="width: 94%;"
								name="enterpriseBasic.prodMiner" trim="true"
								value="${enterpriseBasic.prodMiner}" /></td>
						</tr>
						<tr>
							<td class="label">主要市场：</td>
							<td colspan="3" class="content"><input id="marketMajor"
								loxiaType="input" style="width: 94%;"
								name="enterpriseBasic.marketMajor" trim="true"
								value="${enterpriseBasic.marketMajor}" /></td>
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
				<div class="divBgColor">主要股东</div>
				<div id="editTabEnterpriseShareholders" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="tabEnterpriseShareholders">
						<thead>
							<tr>
								<th><input type="checkbox" /></th>
								<th>股东名称</th>
								<th>证件类型</th>
								<th>证件号码</th>
								<th>出资额(万元)</th>
								<th>占比%</th>
								<th>出资方式</th>
								<th>联系电话</th>
							</tr>
						</thead>
						<tbody id="enterpriseShareholdersBody">
							<c:forEach items="${enterpriseBasic.enterpriseShareholders}"
								var="enterpriseShareholders" varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="enterpriseShareholders.relationobjName"
										value="${enterpriseShareholders.relationobjName }" /></td>
									<td width="150"><bizoption:bizoption id="cardType"
											name="enterpriseShareholders.cardType" biztypekey="1102,1007"
											checkmaster="validateCardType"
											selected="${enterpriseShareholders.cardType }" /></td>
									<td><input type="text" loxiaType="input" id="cardNo"
										name="enterpriseShareholders.cardNo"
										checkmaster="validateIdentify"
										value="${enterpriseShareholders.cardNo }" /></td>
									<td><input type="text" loxiaType="money"
										name="enterpriseShareholders.investmentAmount"
										value="${enterpriseShareholders.investmentAmount }"
										checkmaster="proportionCount" /></td>
									<td><input type="text" loxiaType="number" decimal="2"
										name="enterpriseShareholders.shareStock"
										value="${enterpriseShareholders.shareStock }"
										readonly="readonly" /></td>
									<td width="100"><bizoption:bizoption
											name="enterpriseShareholders.investmentWay" biztypekey="1130"
											selected="${enterpriseShareholders.investmentWay }" /></td>
									<td><input type="text" loxiaType="input"
										name="enterpriseShareholders.telephone"
										value="${enterpriseShareholders.telephone }" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="enterpriseShareholders.relationobjName" /></td>
								<td width="150"><bizoption:bizoption id="cardType"
										name="enterpriseShareholders.cardType" biztypekey="1102,1007"
										isChoose="true" checkmaster="validateCardType" /></td>
								<td><input type="text" loxiaType="input" id="cardNo"
									name="enterpriseShareholders.cardNo"
									checkmaster="validateIdentify" /></td>
								<td><input type="text" loxiaType="money"
									name="enterpriseShareholders.investmentAmount"
									checkmaster="proportionCount" /></td>
								<td><input type="text" loxiaType="number" decimal="2"
									name="enterpriseShareholders.shareStock" readonly="readonly" /></td>
								<td width="100"><bizoption:bizoption
										name="enterpriseShareholders.investmentWay" biztypekey="1130"
										isChoose="true" /></td>
								<td><input type="text" loxiaType="input"
									name="enterpriseShareholders.telephone" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<br />
				<div class="divBgColor">主要高管</div>
				<div id="editTabEnterpriseSeniors" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="tabEnterpriseSeniors">
						<thead>
							<tr>
								<th><input type="checkbox" /></th>
								<th>姓名</th>
								<th>证件类型</th>
								<th>证件号码</th>
								<th>职位</th>
								<th>年龄</th>
								<th>职称</th>
								<th>个人持股比例%</th>
							</tr>
						</thead>
						<tbody id="enterpriseSeniorsBody">
							<c:forEach items="${enterpriseBasic.enterpriseSeniors}"
								var="enterpriseSeniors" varStatus="loop">
								<tr>
									<td><input type="checkbox" /></td>
									<td><input type="text" loxiaType="input"
										name="enterpriseSeniors.relationobjName"
										value="${enterpriseSeniors.relationobjName}" /></td>
									<td width="150"><bizoption:bizoption id="cardType"
											name="enterpriseSeniors.cardType" biztypekey="1007"
											checkmaster="validateCardType"
											selected="${enterpriseSeniors.cardType }" /></td>
									<td><input type="text" loxiaType="input" id="cardNo"
										name="enterpriseSeniors.cardNo" checkmaster="validateIdentify"
										value="${enterpriseSeniors.cardNo }" /></td>
									<td><input type="text" loxiaType="input"
										name="enterpriseSeniors.position"
										value="${enterpriseSeniors.position}" /></td>
									<td><input type="text" loxiaType="number"
										name="enterpriseSeniors.age" value="${enterpriseSeniors.age}" /></td>
									<td><input type="text" loxiaType="input"
										name="enterpriseSeniors.jobTitle"
										value="${enterpriseSeniors.jobTitle}" /></td>
									<td><input type="text" loxiaType="number" decimal="2"
										name="enterpriseSeniors.shareStock"
										value="${enterpriseSeniors.shareStock}" /></td>
								</tr>
							</c:forEach>
						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" /></td>
								<td><input type="text" loxiaType="input"
									name="enterpriseSeniors.relationobjName" /></td>
								<td width="150"><bizoption:bizoption id="cardType"
										name="enterpriseSeniors.cardType" biztypekey="1007"
										checkmaster="validateCardType" /></td>
								<td><input type="text" loxiaType="input" id="cardNo"
									name="enterpriseSeniors.cardNo" checkmaster="validateIdentify" /></td>
								<td><input type="text" loxiaType="input"
									name="enterpriseSeniors.position" /></td>
								<td><input type="text" loxiaType="number"
									name="enterpriseSeniors.age" /></td>
								<td><input type="text" loxiaType="input"
									name="enterpriseSeniors.jobTitle" /></td>
								<td><input type="text" loxiaType="number" decimal="2"
									name="enterpriseSeniors.shareStock" /></td>
							</tr>
						</tbody>
					</table>
				</div>
			</form>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="submitForm">保存</button>
				<button type="button" loxiaType="button" class="confirm hidden1"
					title="tip：提交" id="addToApply">保存并转至申请</button>
				</button>
			</div>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
	<input type="hidden" id="clientId" value="${enterpriseBasic.clientId }"
		name="enterpriseBasic.clientId" />
		<input type="hidden" id="clientType" />
</body>
</html>
