<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_person_view.js'/>"></script>
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
		<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#detail-1">个人客户</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#detail-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#detail-2">客户资质相关</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#detail-2">历史押品信息</a></li>
		</ul>

		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="detail-1">

			<form>
				<input type="hidden" id="detail_clientid"
					value="${personBasic.clientId }" /> <input type="hidden"
					value="${personBasic.cardType }" id="detail_cardType" /> <input
					type="hidden" value="${personBasic.cardNo }" id="detail_cardNo" />
				<div class="divBgColor">个人资料</div>

				<table>
					<tr>
						<!-- 姓名  clientBasic.clientName-->
						<td class="label">客户名称:</td>
						<td width="150">${personBasic.clientName}</td>

						<!-- 客户来源 -->
						<td class="label"><fmt:message
								key="label.applyDetail.clientFrom" bundle="${lang}" /></td>
						<td align="left" colspan="3"><bizoptionname:showname
								biztypekey="1004" value="${personBasic.clientFrom }" /></td>
					</tr>
					<tr>
						<!-- 证件类型  personBasic.cardType-->
						<td class="label">证件类型</td>
						<td><bizoptionname:showname biztypekey="1007"
								value="${personBasic.cardType }" /></td>

						<!-- 证件号码  personBasic.cardNo-->
						<td class="label">证件号码</td>
						<td>${personBasic.cardNo }</td>

						<!-- 户籍类型  personBasic.household_type-->
						<td class="label">户籍</td>
						<td align="left"><bizoptionname:showname biztypekey="1005"
								value="${personBasic.householdType }" /></td>

					</tr>
					<tr>
						<!-- 客户户籍所在地 -->
						<td class="label">户籍所在地</td>
						<td><linkageshow:show type="province" name="personBasic"
								property="province1" /></td>
						<td><linkageshow:show type="city" name="personBasic"
								property="city1" /></td>
						<td><linkageshow:show type="district" name="personBasic"
								property="district1" /></td>
						<td>${personBasic.town1 }</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<!-- 出生日期  personBasic.birthday-->
						<td class="label">出生日期</td>
						<td align="left">${personBasic.birthdayAlias}</td>
						<!-- 性别  personBasic.sex-->
						<td class="label"><fmt:message key="label.applyDetail.sex"
								bundle="${lang}" /></td>
						<td align="left"><bizoptionname:showname biztypekey="1006"
								value="${personBasic.sex}" /></td>

						<!-- 手机号码  personBasic.mobilePhone-->
						<td class="label">手机</td>
						<td align="left">${personBasic.mobilePhone}</td>

					</tr>
					<tr>
						<!-- 学历  personBasic.educationLevel-->
						<td class="label">学历</td>
						<td colspan="5"><bizoptionname:showname biztypekey="1008"
								value="${personBasic.educationLevel}" /></td>

					</tr>
					<tr>
						<!-- 婚姻状况  personBasic.maritalStatus-->
						<td class="label"><fmt:message
								key="label.applyDetail.maritalStatus" bundle="${lang}" /></td>
						<td colspan="5"><bizoptionname:showname biztypekey="1009"
								value="${personBasic.maritalStatus}" />
					</tr>
					<tr>
						<td class="label">居住地址</td>
						<td><linkageshow:show type="province" name="personBasic"
								property="province2" /></td>
						<td width="120"><linkageshow:show type="city"
								name="personBasic" property="city2" /></td>
						<td><linkageshow:show type="district" name="personBasic"
								property="district2" /></td>
						<td>${personBasic.town2}</td>
					</tr>
					<tr>
						<td class="label">住宅邮编</td>
						<td align="left">${personBasic.postcode1}</td>
						<td class="label">住宅电话</td>
						<td align="left">${personBasic.telephone1}</td>
						<!-- 现地址入住时间  personBasic.houseBegin-->
						<td class="label"><fmt:message
								key="label.applyDetail.houseBegin" bundle="${lang}" /></td>
						<td align="left">${personBasic.houseBeginAlias}</td>
					</tr>
					<tr>
						<!-- 住房条件 personBasic.houseCondition -->
						<td class="label">住房条件</td>
						<td align="left" colspan="5"><bizoptionname:showname
								biztypekey="1010" value="${personBasic.houseCondition}" /></td>
					</tr>
					<tr>
						<!-- 产权房状况  personBasic.houseStatus -->
						<td class="label"><fmt:message
								key="label.applyDetail.houseStatus" bundle="${lang}" /></td>
						<td align="left" colspan="5"><bizoptionname:showname
								biztypekey="1011" value="${personBasic.houseStatus}" /></td>

					</tr>
					<tr>
						<!-- 电子邮箱  personBasic.email-->
						<td class="label"><fmt:message key="label.applyDetail.email"
								bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.email}</td>
						<!-- 即使通讯方式  personBasic.im-->
						<td class="label"><fmt:message key="label.applyDetail.im"
								bundle="${lang}" /></td>
						<td width="150">${personBasic.im}</td>
						<!-- 社保信息  personBasic.socialSecurity-->
						<td class="label"><fmt:message
								key="label.applyDetail.socialSecurity" bundle="${lang}" /></td>
						<td width="150">${personBasic.socialSecurity}</td>
					</tr>
					<tr>
						<!-- 公积金  personBasic.accumulationFund-->
						<td class="label"><fmt:message
								key="label.applyDetail.accumulationFund" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.accumulationFund}</td>
						<!-- 其他信息 personBasic.otherInfo-->
						<td class="label"><fmt:message
								key="label.applyDetail.otherInfo" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.otherInfo}</td>
					</tr>
				</table>

				<br /> 
				<div class="divBgColor">职业资料</div>
				<table>
					<tr>
						<!-- 工作单位 personBasic.workUnit-->
						<td class="label"><fmt:message
								key="label.applyDetail.workUnit" bundle="${lang}" /></td>
						<td width="250" align="left">${personBasic.workUnit}</td>

						<!-- 现任职部门 personBasic.workunitDept -->
						<td class="label"><fmt:message
								key="label.applyDetail.workunitDept" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.workunitDept}</td>

						<!-- 工作职位personBasic.workunitPosition -->
						<td class="label"><fmt:message
								key="label.applyDetail.workunitPosition" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.workunitPosition}</td>

					</tr>
				</table>
				<table>
					<tr>
						<td class="label">单位地址</td>
						<td><linkageshow:show type="province" name="personBasic"
								property="province3" /></td>
						<td><linkageshow:show type="city" name="personBasic"
								property="city3" /></td>
						<td><linkageshow:show type="district" name="personBasic"
								property="district3" /></td>
						<td>${personBasic.town3}</td>
					</tr>
				</table>
				<table>
					<tr>
						<td class="label">现任职单位入职日期:</td>
						<td>${personBasic.workunitBegin}</td>

						<td class="label">单位电话:</td>
						<td align="left">${personBasic.telephone3}</td>
					</tr>
				</table>
				<table>
					<tr>
						<!-- 岗位级别  personBasic.workunitPost-->
						<td class="label"><fmt:message
								key="label.applyDetail.workunitPost" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoptionname:showname
								biztypekey="1012" value="${personBasic.workunitPost}" /> <!-- 单位规模 personBasic.workunitSize -->
						<td class="label"><fmt:message
								key="label.applyDetail.workunitSize" bundle="${lang}" /></td>
						<td align="left" width="450"><bizoptionname:showname
								biztypekey="1015" value="${personBasic.workunitSize}" />
					</tr>
				</table>
				<table>
					<tr>
						<!-- 单位行业 personBasic.workunitIndustry -->
						<td class="label"><fmt:message
								key="label.applyDetail.workunitIndustry" bundle="${lang}" /></td>
						<td align="left" width="450"><bizoptionname:showname
								biztypekey="1014" value="${personBasic.workunitIndustry}" /></td>

						<!-- 单位性质 personBasic.workunitType -->
						<td class="label"><fmt:message
								key="label.applyDetail.workunitType" bundle="${lang}" /></td>
						<td align="left" width="250"><bizoptionname:showname
								biztypekey="1013" value="${personBasic.workunitType}" /></td>

					</tr>
				</table>
				</br> 
				<div class="divBgColor">
					<fmt:message key="label.apply.income" bundle="${lang}" />
				</div>
				<table>
					<tr>
						<!-- 工资收入  personBasic.incomeWorkunitMonth -->
						<td class="label"><fmt:message
								key="label.applyDetail.incomeWorkunitMonth" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.incomeWorkunitMonth}</td>
						<!-- 每月发薪日  personBasic.incomeWorkunitDay -->
						<td class="label"><fmt:message
								key="label.applyDetail.incomeWorkunitDate" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.incomeWorkunitDay}</td>
						<!-- 银行代发  personBasic.incomeWorkunitBank -->
						<td class="label">工资发放形式:</td>
						<td align="left" nowrap="nowrap"><fmt:message
								key="label.applyDetail.incomeWorkunitBank" bundle="${lang}" />${personBasic.incomeWorkunitBank}
							现金:${personBasic.incomeWorkunitCash}</td>
					</tr>
					<tr>
						<!-- 房屋出租收入 personBasic.incomeHouseRent -->
						<td class="label"><fmt:message
								key="label.applyDetail.incomeHouseRent" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.incomeHouseRent}</td>
						<!-- 其他收入 personBasic.incomeOther -->
						<td class="label"><fmt:message
								key="label.applyDetail.incomeOther" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.incomeOther}</td>
						<!-- 其他收入来源 personBasic.incomeOthersource -->
						<td class="label"><fmt:message
								key="label.applyDetail.incomeOthersource" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.incomeOthersource}</td>
						<!-- 月平均收入 personBasic.incomeAvgMonth -->
					</tr>
					<tr>
						<!-- 月平均收入 personBasic.incomeAvgMonth -->
						<td class="label"><fmt:message
								key="label.applyDetail.incomeAvgMonth" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.incomeAvgMonth}</td>
					</tr>
				</table>
				</br>

				<div class="divBgColor">
					<fmt:message key="label.apply.private" bundle="${lang}" />
				</div>
				<table>
					<tr>
						<!-- 企业类型 personBasic.privateType -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateType" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoptionname:showname
								biztypekey="1016" value="${personBasic.privateType}" /></td>
						<!-- 经营场所 personBasic.privateSite -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateSite" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoptionname:showname
								biztypekey="1017" value="${personBasic.privateSite}" /></td>
						<!-- 经营场所租期开始 personBasic.privateSiteBegin -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateSiteBegin" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateSiteBeginAlias}</td>
					</tr>
					<tr>
						<!-- 经营场所租期结束 personBasic.privateSiteEnd -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateSiteEnd" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateSiteEnd}</td>
						<!-- 工商注册类型   personBasic.privateRegister -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateRegister" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoptionname:showname
								biztypekey="1018" value="${personBasic.privateRegister}" /></td>
						<!-- 工商登记号 personBasic.private_registerNo -->
						<td class="label"><fmt:message
								key="label.applyDetail.private_registerNo" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateregisterNo}</td>
					</tr>
					<tr>
						<!--  当前经营性贷款状态   personBasic.privateLoan -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateLoan" bundle="${lang}" /></td>
						<td align="left" width="150"><bizoptionname:showname
								biztypekey="1019" value="${personBasic.privateLoan}" /></td>
						<!-- 每月还款额度personBasic.privateRepayMonth -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateRepayMonth" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateRepayMonth}</td>
						<!-- 成立日期 personBasic.privateOpen -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateOpen" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateOpenAlias}</td>
					</tr>
					<tr>
						<!-- 雇员人数  personBasic.privateEmployees -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateEmployees" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateEmployees}</td>
						<!-- 月均盈利/亏损额  personBasic.privateProfitMonth -->
						<td class="label"><fmt:message
								key="label.applyDetail.privateProfitMonth" bundle="${lang}" /></td>
						<td align="left" width="150">${personBasic.privateProfitMonth}</td>
					</tr>
				</table>
			</form>
		</div>

		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="detail-2"></div>
	</div>
</body>
</html>