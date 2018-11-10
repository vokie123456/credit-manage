<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div class="content_middle">
		<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
		<table class="col3">
			<input type="hidden" id="clientId" value="${personBasic.clientId}" />
			<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
			<tr>
				<!-- 姓名  clientBasic.clientName-->
				<td class="label">姓名：</td>
				<td class="content"><input id="clientName"
					name="clientBasic.clientName" value="${personBasic.clientName}"
					loxiaType="input" trim="true" /></td>
				<!-- 户籍类型  personBasic.household_type-->
				<td class="label">户籍：</td>
				<td class="content"><bizoption:bizoption biztypekey="1005"
						id="householdType" name="personBasic.householdType"
						isChoose="true" selected="${personBasic.householdType}" /></td>
			</tr>
			<tr>
				<!-- 出生日期  personBasic.birthday-->
				<td class="label">出生日期：</td>
				<td class="content"><input id="personBasic.birthday"
					trim="true" loxiaType="date" name="personBasic.birthday"
					value="${personBasic.birthdayAlias}" /></td>
				<!-- 性别  personBasic.sex-->
				<td class="label"><fmt:message key="label.applyDetail.sex"
						bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1006"
						id="sex" name="personBasic.sex" isChoose="true"
						selected="${personBasic.sex}" /></td>
			</tr>
			<tr>
				<!-- 手机号码  personBasic.mobilePhone-->
				<td class="label">手机：</td>
				<td class="content"><input id="mobilePhone" loxiaType="input"
					name="personBasic.mobilePhone" value="${personBasic.mobilePhone}"
					trim="true" /></td>
				<td class="label">住宅电话：</td>
				<td class="content"><input id="telephone" loxiaType="input"
					name="address.telephone" trim="true"
					value="${personBasic.telephone1}" /></td>
			</tr>
			<tr>
				<!-- 学历  personBasic.educationLevel-->
				<td class="label">学历：</td>
				<td class="content"><bizoption:bizoption biztypekey="1008"
						id="educationLevel" name="personBasic.educationLevel"
						isChoose="true" selected="${personBasic.educationLevel}" /></td>
				<!-- 婚姻状况  personBasic.maritalStatus-->
				<td class="label"><fmt:message
						key="label.applyDetail.maritalStatus" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1009"
						id="maritalStatus" name="personBasic.maritalStatus"
						isChoose="true" selected="${personBasic.maritalStatus}" /></td>
			</tr>
			<tr>
				<!-- 客户户籍所在地 -->
				<td class="label">户籍所在地：</td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkage:select type="province"
									name="address.province" pid="pi0" cid="ci0" did="di0"
									seledProvince="${personBasic.province1}" /></td>
							<td class="content"><linkage:select type="city"
									name="address.city" cid="ci0" did="di0"
									seledCity="${personBasic.city1}" /></td>
							<td class="content"><linkage:select type="district"
									name="address.district" did="di0"
									seledDistrict="${personBasic.district1}" /></td>
							<td class="content"><input id="town" name="address.detail"
								loxiaType="input" trim="true" value="${personBasic.detail1}" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td class="label">居住地址:</td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkage:select type="province"
									name="address2.province" pid="pi1" cid="ci1" did="di1"
									seledProvince="${personBasic.province2}" /></td>
							<td class="content"><linkage:select type="city"
									name="address2.city" cid="ci1" did="di1"
									seledCity="${personBasic.city2}" /></td>
							<td class="content"><linkage:select type="district"
									name="address2.district" did="di1"
									seledDistrict="${personBasic.district2}" /></td>
							<td class="content"><input id="town2" name="address2.detail"
								loxiaType="input" trim="true" value="${personBasic.detail2}" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<!-- 住房条件 personBasic.houseCondition -->
				<td class="label">住房条件：</td>
				<td class="content"><bizoption:bizoption biztypekey="1010"
						id="personBasic.houseCondition" name="personBasic.houseCondition"
						isChoose="true" selected="${personBasic.houseCondition}" /></td>
				<!-- 现地址入住时间  personBasic.houseBegin-->
				<td class="label"><fmt:message
						key="label.applyDetail.houseBegin" bundle="${lang}" /></td>
				<td class="content"><input id="houseBegin" loxiaType="date"
					trim="true" name="personBasic.houseBegin"
					value="${personBasic.houseBeginAlias}" /></td>
			</tr>
			<tr>
				<!-- 产权房状况  personBasic.houseStatus -->
				<td class="label"><fmt:message
						key="label.applyDetail.houseStatus" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1011"
						id="houseStatus" name="personBasic.houseStatus" isChoose="true"
						selected="${personBasic.houseStatus}" /></td>
				<td class="label">住宅邮编：</td>
				<td class="content"><input id="postcode" loxiaType="input"
					name="address.postcode" trim="true"
					value="${personBasic.postcode1}" /></td>
			</tr>
			<tr>
				<!-- 电子邮箱  personBasic.email-->
				<td class="label"><fmt:message key="label.applyDetail.email"
						bundle="${lang}" /></td>
				<td class="content"><input id="email" loxiaType="input"
					name="personBasic.email" value="${personBasic.email}" /></td>
				<!-- 即使通讯方式  personBasic.im-->
				<td class="label"><fmt:message key="label.applyDetail.im"
						bundle="${lang}" /></td>
				<td class="content"><input id="im" loxiaType="input"
					name="personBasic.im" value="${personBasic.im}" trim="true" /></td>
			</tr>
			<tr>
				<!-- 社保信息  personBasic.socialSecurity-->
				<td class="label"><fmt:message
						key="label.applyDetail.socialSecurity" bundle="${lang}" /></td>
				<td class="content"><input id="socialSecurity"
					loxiaType="input" name="personBasic.socialSecurity"
					value="${personBasic.socialSecurity}" trim="true" /></td>
				<!-- 公积金  personBasic.accumulationFund-->
				<td class="label"><fmt:message
						key="label.applyDetail.accumulationFund" bundle="${lang}" /></td>
				<td align="left"><input id="personBasic.accumulationFund"
					loxiaType="input" name="personBasic.accumulationFund"
					value="${personBasic.accumulationFund}" trim="true" /></td>
			</tr>
			<tr>
				<!-- 其他信息 personBasic.otherInfo-->
				<td class="label"><fmt:message
						key="label.applyDetail.otherInfo" bundle="${lang}" /></td>
				<td align="left"><input id="personBasic.otherInfo"
					loxiaType="input" name="personBasic.otherInfo"
					value="${personBasic.otherInfo}" trim="true" /></td>
			</tr>
		</table>
	</div>

	<br />
	<div class="divBgColor">职业资料</div>
	<div class="content_middle">
		<table class="col3">
			<tr>
				<!-- 工作单位 personBasic.workUnit-->
				<td class="label"><fmt:message key="label.applyDetail.workUnit"
						bundle="${lang}" /></td>
				<td class="content"><input id="workUnit" loxiaType="input"
					trim="true" name="personBasic.workUnit"
					value="${personBasic.workUnit}" /></td>

				<!-- 现任职部门 personBasic.workunitDept -->
				<td class="label"><fmt:message
						key="label.applyDetail.workunitDept" bundle="${lang}" /></td>
				<td class="content"><input id="workunitDept" loxiaType="input"
					trim="true" name="personBasic.workunitDept"
					value="${personBasic.workunitDept}" /></td>
			</tr>
			<tr>
				<!-- 工作职位personBasic.workunitPosition -->
				<td class="label"><fmt:message
						key="label.applyDetail.workunitPosition" bundle="${lang}" /></td>
				<td class="content"><input id="workunitPosition"
					loxiaType="input" trim="true" name="personBasic.workunitPosition"
					value="${personBasic.workunitPosition}" /></td>
				<td class="label">现任职单位入职日期：</td>
				<td class="content"><input id="workunitBegin" loxiaType="date"
					name="personBasic.workunitBegin" trim="true"
					value="${personBasic.workunitBegin}" /></td>
			</tr>
			<tr>
				<td class="label">单位地址：</td>
				<td colspan="3">
					<table>
						<tr>
							<td class="content"><linkage:select type="province"
									name="address3.province" pid="di2" cid="ci2" did="di2"
									seledProvince="${personBasic.province3}" /></td>
							<td class="content"><linkage:select type="city"
									name="address3.city" cid="ci2" did="di2"
									seledCity="${personBasic.city3}" /></td>
							<td class="content"><linkage:select type="district"
									name="address3.district" did="di2"
									seledDistrict="${personBasic.district3}" /></td>
							<td class="content"><input id="town3" name="address3.detail"
								loxiaType="input" trim="true" value="${personBasic.detail3}" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>

				<td class="label">单位电话:</td>
				<td class="content"><input id="address3.telephone"
					loxiaType="input" trim="true" name="address3.telephone"
					value="${personBasic.telephone3}" /></td>
				<!-- 岗位级别  personBasic.workunitPost-->
				<td class="label"><fmt:message
						key="label.applyDetail.workunitPost" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1012"
						id="workunitPost" name="personBasic.workunitPost" isChoose="true"
						selected="${personBasic.workunitPost}" /></td>
			</tr>
			<tr>
				<!-- 单位规模 personBasic.workunitSize -->
				<td class="label"><fmt:message
						key="label.applyDetail.workunitSize" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1015"
						id="workunitSize" name="personBasic.workunitSize" isChoose="true"
						selected="${personBasic.workunitSize}" /></td>
				<!-- 单位行业 personBasic.workunitIndustry -->
				<td class="label"><fmt:message
						key="label.applyDetail.workunitIndustry" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1014"
						id="workunitIndustry" name="personBasic.workunitIndustry"
						isChoose="true" selected="${personBasic.workunitIndustry}" /></td>
			</tr>
			<tr>
				<!-- 单位性质 personBasic.workunitType -->
				<td class="label"><fmt:message
						key="label.applyDetail.workunitType" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1013"
						id="workunitType" name="personBasic.workunitType" isChoose="true"
						selected="${personBasic.workunitType}" /></td>
			</tr>
		</table>
	</div>
	</br>
	<div class="divBgColor">
		<fmt:message key="label.apply.private" bundle="${lang}" />
	</div>
	<div class="content_middle">
		<table class="col3">
			<tr>
				<!-- 企业类型 personBasic.privateType -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateType" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1016"
						id="privateType" name="personBasic.privateType" isChoose="true"
						selected="${personBasic.privateType}" /></td>
				<!-- 经营场所 personBasic.privateSite -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateSite" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1017"
						id="privateSite" name="personBasic.privateSite" isChoose="true"
						selected="${personBasic.privateSite}" /></td>
			</tr>
			<tr>
				<!-- 经营场所租期开始 personBasic.privateSiteBegin -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateSiteBegin" bundle="${lang}" /></td>
				<td class="content"><input id="privateSiteBegin"
					loxiaType="date" name="personBasic.privateSiteBegin"
					value="${personBasic.privateSiteBeginAlias}" /></td>
				<!-- 经营场所租期结束 personBasic.privateSiteEnd -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateSiteEnd" bundle="${lang}" /></td>
				<td class="content"><input id="privateSiteEnd" loxiaType="date"
					name="personBasic.privateSiteEnd"
					value="${personBasic.privateSiteEnd}" /></td>
			</tr>
			<tr>
				<!-- 工商注册类型   personBasic.privateRegister -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateRegister" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1018"
						id="privateRegister" name="personBasic.privateRegister"
						isChoose="true" selected="${personBasic.privateRegister}" /></td>

				<!-- 工商登记号 personBasic.private_registerNo -->
				<td class="label"><fmt:message
						key="label.applyDetail.private_registerNo" bundle="${lang}" /></td>
				<td class="content"><input id="privateregisterNo"
					loxiaType="input" name="personBasic.privateregisterNo"
					value="${personBasic.privateregisterNo}" /></td>
			</tr>
			<tr>
				<!--  当前经营性贷款状态   personBasic.privateLoan -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateLoan" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1019"
						id="privateLoan" name="personBasic.privateLoan" isChoose="true"
						selected="${personBasic.privateLoan}" /></td>

				<!-- 每月还款额度personBasic.privateRepayMonth -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateRepayMonth" bundle="${lang}" /></td>
				<td class="content"><input id="privateRepayMonth"
					loxiaType="number" decimal="2" name="personBasic.privateRepayMonth"
					value="${personBasic.privateRepayMonth}" /></td>
			</tr>
			<tr>
				<!-- 成立日期 personBasic.privateOpen -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateOpen" bundle="${lang}" /></td>
				<td class="content"><input id="privateOpen" loxiaType="date"
					name="personBasic.privateOpen"
					value="${personBasic.privateOpenAlias}" /></td>
				<!-- 雇员人数  personBasic.privateEmployees -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateEmployees" bundle="${lang}" /></td>
				<td class="content"><input id="privateEmployees"
					loxiaType="number" name="personBasic.privateEmployees"
					value="${personBasic.privateEmployees}" /></td>
			</tr>
			<tr>
				<!-- 月均盈利/亏损额  personBasic.privateProfitMonth -->
				<td class="label"><fmt:message
						key="label.applyDetail.privateProfitMonth" bundle="${lang}" /></td>
				<td class="content"><input id="privateProfitMonth"
					loxiaType="number" decimal="2"
					name="personBasic.privateProfitMonth"
					value="${personBasic.privateProfitMonth}" /></td>
				<td class="label">年检是否通过：</td>
				<td class="content"><bizoption:bizoption biztypekey="1001"
						id="privateAnnualCheck" name="personBasic.privateAnnualCheck"
						isChoose="true" selected="${personBasic.privateAnnualCheck}" /></td>
			</tr>
			<tr>
				<!-- 月均盈利/亏损额  personBasic.privateProfitMonth -->
				<td class="label">借款人占股比例：</td>
				<td class="content"><input id="privateShareStock"
					loxiaType="number" decimal="2" name="personBasic.privateShareStock"
					value="${personBasic.privateShareStock}" /></td>
				<td class="label">注册资本：</td>
				<td class="content"><input id="privateRegisteredAssets"
					loxiaType="number" decimal="2"
					name="personBasic.privateRegisteredAssets"
					value="${personBasic.privateRegisteredAssets}" /></td>
			</tr>
		</table>
	</div>
</body>