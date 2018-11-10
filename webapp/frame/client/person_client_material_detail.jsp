<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款新增页面   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_client_material_detail.js'/>"></script>

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
				href="#div-1">基本资料</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">负债信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">资产信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">收入信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人信息</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<!-- 个人申请贷款 -->
			<form id="personAddForm" method="post">
				<!-- 个人资料 -->
				<div class="divBgColor" >个人资料</div>
				<div class="content_middle">
					<table class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
						<tr>
							<!-- 证件类型  personBasic.cardType-->
							<td class="label BgColor borBottom" >证件类型：</td>
							<td class="content paddingwidthLeft10"  style="border-bottom: 0px;"><bizoptionname:showname biztypekey="1007" value="${personBasic.cardType }" /></td>
							<!-- 证件号码  personBasic.cardNo-->
							<td class="label BgColor borBottom" >证件号码：</td>
							<td class="content tabBorderRight"  style="border-bottom: 0px;">${personBasic.cardNo }</td>
						</tr>
					</table>
				</div>   

				<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
				<div id="formPersonAdd">
					<div class="content_middle">
						<!-- 查询条件  查询存量客户-->
						<table  class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
							<input type="hidden" id="clientId"
								value="${personBasic.clientId}" />
							<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
							<tr>
								<!-- 姓名  clientBasic.clientName-->
								<td class="label BgColor" >姓名：</td>
								<td class="content">${personBasic.clientName}</td>
								<!-- 户籍类型  personBasic.household_type-->
								<td class="label BgColor">户籍：</td>   
								<td class="content tabBorderRight"><bizoptionname:showname
										biztypekey="1005" value="${personBasic.householdType }" /></td>
							</tr>
							<tr>
								<!-- 出生日期  personBasic.birthday-->
								<td class="label BgColor">出生日期：</td>
								<td class="content">${personBasic.birthdayAlias}</td>
								<!-- 性别  personBasic.sex-->
								<td class="label BgColor"><fmt:message key="label.applyDetail.sex"
										bundle="${lang}" /></td>
								<td class="content tabBorderRight"><bizoptionname:showname
										biztypekey="1006" value="${personBasic.sex }" /></td>
							</tr>
							<tr>
								<!-- 手机号码  personBasic.mobilePhone-->
								<td class="label BgColor">手机：</td>
								<td class="content">${personBasic.mobilePhone}</td>
								<td class="label BgColor">住宅电话：</td>
								<td class="content tabBorderRight">${personBasic.telephone1}</td>
							</tr>
							<tr>
								<!-- 学历  personBasic.educationLevel-->
								<td class="label BgColor">学历：</td>
								<td class="content"><bizoptionname:showname
										biztypekey="1008" value="${personBasic.educationLevel }" /></td>
								<!-- 婚姻状况  personBasic.maritalStatus-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.maritalStatus" bundle="${lang}" /></td>
								<td class="content tabBorderRight"><bizoptionname:showname
										biztypekey="1009" value="${personBasic.maritalStatus }" /></td>
							</tr>
							<tr>
								<!-- 客户户籍所在地 -->
								<td class="label BgColor">户籍所在地：</td>
								<td colspan="3" class="tabBorderRight">
									<table class="col3">
										<tr>
											<td class="content borBottom tabBorderRight" ><linkageshow:show type="province"
													name="personBasic" property="province1" /><linkageshow:show type="city"
													name="personBasic" property="city1" /><linkageshow:show type="district"
													name="personBasic" property="district1" />${personBasic.detail1}</td>
										</tr>
									</table>   
								</td>
							</tr>
							<tr>
								<td class="label BgColor">居住地址：</td>
								<td colspan="3" class="tabBorderRight">
									<table class="col3">
										<tr>
											<td class="content  borBottom tabBorderRight" ><linkageshow:show type="province"
													name="personBasic" property="province2" /><linkageshow:show type="city"
													name="personBasic" property="city2" /><linkageshow:show type="district"
													name="personBasic" property="district2" />${personBasic.detail2}</td>
										</tr>
									</table>
							</tr>
							<tr>
								<!-- 住房条件 personBasic.houseCondition -->
								<td class="label BgColor">住房条件：</td>
								<td class="content"><bizoptionname:showname
										biztypekey="1010" value="${personBasic.houseCondition }" /></td>
								<!-- 现地址入住时间  personBasic.houseBegin-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.houseBegin" bundle="${lang}" /></td>
								<td class="content tabBorderRight">${personBasic.houseBeginAlias}</td>
							</tr>
							<tr>
								<!-- 产权房状况  personBasic.houseStatus -->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.houseStatus" bundle="${lang}" /></td>
								<td class="content"><bizoptionname:showname
										biztypekey="1011" value="${personBasic.houseStatus }" /></td>
								<td class="label BgColor">住房支出：</td>
								<td class="content tabBorderRight">${personBasic.houseExpend}</td>
							</tr>
							<tr>
								<!-- 电子邮箱  personBasic.email-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.email" bundle="${lang}" /></td>
								<td class="content">${personBasic.email}</td>
								<!-- 即使通讯方式  personBasic.im-->
								<td class="label BgColor"><fmt:message key="label.applyDetail.im"
										bundle="${lang}" /></td>
								<td class="content tabBorderRight">${personBasic.im}</td>
							</tr>
							<tr>
								<!-- 社保信息  personBasic.socialSecurity-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.socialSecurity" bundle="${lang}" /></td>
								<td class="content">${personBasic.socialSecurity}</td>
								<!-- 公积金  personBasic.accumulationFund-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.accumulationFund" bundle="${lang}" /></td>
								<td class="content tabBorderRight">${personBasic.accumulationFund}</td>
							</tr>
							<tr>
								<td class="label BgColor">住宅邮编：</td>
								<td class="content">${personBasic.postcode1}</td>
								<!-- 其他信息 personBasic.otherInfo-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.otherInfo" bundle="${lang}" /></td>
								<td class="content tabBorderRight">${personBasic.otherInfo}</td>
							</tr>
						</table>
					</div>

					<br /> <br />
					<div class="divBgColor" >职业资料</div>
					<div class="content_middle">
						<table class="textalignCenter tabcustomPeo"  cellpadding="0"
					cellspacing="0">
							<tr>
								<!-- 工作单位 personBasic.workUnit-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workUnit" bundle="${lang}" /></td>
								<td class="content">${personBasic.workUnit}</td>

								<!-- 现任职部门 personBasic.workunitDept -->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workunitDept" bundle="${lang}" /></td>
								<td class="content tabBorderRight">${personBasic.workunitDept}</td>
							</tr>
							<tr>
								<!-- 工作职位personBasic.workunitPosition -->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workunitPosition" bundle="${lang}" /></td>
								<td class="content">${personBasic.workunitPosition}</td>
								<td class="label BgColor">现任职单位入职日期：</td>
								<td class="content tabBorderRight"><fmt:formatDate value='${personBasic.workunitBegin}'
									pattern='yyyy-MM-dd'></fmt:formatDate></td>
							</tr>
							<tr>
								<td class="label BgColor">单位地址：</td>
								<td colspan="3" class="tabBorderRight">
									<table class="col3">
										<tr>
											<td class="content  borBottom tabBorderRight" ><linkageshow:show type="province"
													name="personBasic" property="province3" /><linkageshow:show type="city"
													name="personBasic" property="city3" /><linkageshow:show type="district"
													name="personBasic" property="district3" />${personBasic.detail3}</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td class="label BgColor">单位电话：</td>
								<td class="content">${personBasic.telephone3}</td>
								<!-- 岗位级别  personBasic.workunitPost-->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workunitPost" bundle="${lang}" /></td>
								<td class="content tabBorderRight"><bizoptionname:showname
										biztypekey="1012" value="${personBasic.workunitPost}" /></td>
							</tr>
							<tr>
								<!-- 单位规模 personBasic.workunitSize -->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workunitSize" bundle="${lang}" /></td>
								<td class="content"><bizoptionname:showname
										biztypekey="1015" value="${personBasic.workunitSize}" /></td>
								<!-- 单位行业 personBasic.workunitIndustry -->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workunitIndustry" bundle="${lang}" /></td>
								<td class="content tabBorderRight"><bizoptionname:showname
										biztypekey="1014" value="${personBasic.workunitIndustry}" /></td>
							</tr>
							<tr>
								<!-- 单位性质 personBasic.workunitType -->
								<td class="label BgColor"><fmt:message
										key="label.applyDetail.workunitType" bundle="${lang}" /></td>
								<td colspan="3" class="content tabBorderRight"><bizoptionname:showname
										biztypekey="1013" value="${personBasic.workunitType}" /></td>
							</tr>
						</table>
					</div>
					<%--
					<div class="divBgColor">
						<fmt:message key="label.apply.private" bundle="${lang}" />
					</div>
					<div class="content_middle">
						<table class="col3">
							<tr>
								<!-- 企业类型 personBasic.privateType -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateType" bundle="${lang}" /></td>
								<td class="content"><bizoptionname:showname
										biztypekey="1016" value="${personBasic.privateType}" /></td>
								<!-- 经营场所 personBasic.privateSite -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateSite" bundle="${lang}" /></td>
								<td class="content"><bizoptionname:showname
										biztypekey="1017" value="${personBasic.privateSite}" /></td>
							</tr>
							<tr>
								<!-- 经营场所租期开始 personBasic.privateSiteBegin -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateSiteBegin" bundle="${lang}" /></td>
								<td class="content">${personBasic.privateSiteBeginAlias}</td>
								<!-- 经营场所租期结束 personBasic.privateSiteEnd -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateSiteEnd" bundle="${lang}" /></td>
								<td>${personBasic.privateSiteEnd}</td>
							</tr>
							<tr>
								<!-- 工商注册类型   personBasic.privateRegister -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateRegister" bundle="${lang}" /></td>
								<td class="content"><bizoptionname:showname
										biztypekey="1018" value="${personBasic.privateRegister}" /></td>

								<!-- 工商登记号 personBasic.private_registerNo -->
								<td class="label"><fmt:message
										key="label.applyDetail.private_registerNo" bundle="${lang}" /></td>
								<td>${personBasic.privateregisterNo}</td>
							</tr>
							<tr>
								<!--  当前经营性贷款状态   personBasic.privateLoan -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateLoan" bundle="${lang}" /></td>
								<td class="content"><bizoptionname:showname
										biztypekey="1019" value="${personBasic.privateLoan}" /></td>

								<!-- 每月还款额度personBasic.privateRepayMonth -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateRepayMonth" bundle="${lang}" /></td>
								<td class="content">${personBasic.privateRepayMonth}</td>
							</tr>
							<tr>
								<!-- 成立日期 personBasic.privateOpen -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateOpen" bundle="${lang}" /></td>
								<td class="content">${personBasic.privateOpenAlias}</td>
								<!-- 雇员人数  personBasic.privateEmployees -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateEmployees" bundle="${lang}" /></td>
								<td class="content">${personBasic.privateEmployees}</td>
							</tr>
							<tr>
								<!-- 月均盈利/亏损额  personBasic.privateProfitMonth -->
								<td class="label"><fmt:message
										key="label.applyDetail.privateProfitMonth" bundle="${lang}" /></td>
								<td class="content">${personBasic.privateProfitMonth}</td>
								<td class="label">年检是否通过：</td>
								<td class="content"><bizoptionname:showname
										biztypekey="1001" value="${personBasic.privateAnnualCheck}" /></td>
							</tr>
							<tr>
								<!-- 月均盈利/亏损额  personBasic.privateProfitMonth -->
								<td class="label">借款人占股比例：</td>
								<td class="content">${personBasic.privateShareStock}</td>
								<td class="label">注册资本(万元)：</td>
								<td class="content">${personBasic.privateRegisteredAssets}</td>
							</tr>
						</table>
					</div>
				 --%>
				</div>
			</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>
	<div id="clientInfoDiv"></div>

</body>
</html>
