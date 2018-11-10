<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/common_person.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.del_all {
	text-align: right;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">

	<!-- 个人申请贷款 -->
	<form id="commonPerForm" method="post">
		<input type="hidden" name="commonProjectId" value="${projectId}" /> <input
			type="hidden" name="commonId" value="${commonPer.commonId}" />
		<div class="divBgColor">个人资料</div>
		<table class="col3">
			<tr>
				<!-- 证件类型  personBasic.cardType-->
				<td class="label">证件类型：</td>
				<td class="content"><bizoption:bizoption biztypekey="1007"
						name="cardType" isChoose="false" mandatory="true"
						selected="${commonPer.cardType}" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				<!-- 证件号码  personBasic.cardNo-->
				<td class="label">证件号码：</td>
				<td class="content"><input name="cardNo" loxiaType="input"
					trim="true" value="${commonPer.cardNo}" mandatory="true"
					checkmaster="validateIdentify" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				<!--  
						<td>
							<button type="button" loxiaType="button" class="confirm" title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>" id="search">
								<fmt:message key="button.query" bundle="${lang}" />
							</button>
							<button type="reset" loxiaType="button" class="confirm" title="tip：<fmt:message key="button.reset" bundle="${lang}"/>" id="reset">
								<fmt:message key="button.reset" bundle="${lang}" />
							</button>
						</td>
						-->
			</tr>
		</table>
		<div id="commonPerDiv">
			<!-- 查询条件  查询存量客户-->
			<table class="col3">
				<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
				<tr>
					<!-- 姓名  clientBasic.clientName-->
					<td class="label">姓名：</td>
					<td class="content"><input name="commonPersonName"
						loxiaType="input" trim="true"
						value="${commonPer.commonPersonName}" mandatory="true" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<!-- 户籍类型  personBasic.household_type-->
					<td class="label">户籍：</td>
					<td class="content"><bizoption:bizoption biztypekey="1005"
							name="householdType" selected="${commonPer.householdType}"
							isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
					</td>
				</tr>
				<tr>
					<!-- 出生日期  personBasic.birthday-->
					<td class="label">出生日期：</td>
					<td class="content"><input loxiaType="date" name="birthday"
						trim="true" value="${commonPer.birthday}" mandatory="true" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<!-- 性别  personBasic.sex-->
					<td class="label"><fmt:message key="label.applyDetail.sex"
							bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1006"
							name="sex" isChoose="true" selected="${commonPer.sex}"
							mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<!-- 手机号码  personBasic.mobilePhone-->
					<td class="label">手机：</td>
					<td class="content"><input loxiaType="input"
						name="mobilePhone" trim="true" value="${commonPer.mobilePhone}"
						mandatory="true" checkmaster="validatemobile" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<!-- 学历  personBasic.educationLevel-->
					<td class="label">学历：</td>
					<td class="content"><bizoption:bizoption biztypekey="1008"
							name="educationLevel" selected="${commonPer.educationLevel}"
							isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
					</td>
				</tr>
				<tr>
					<!-- 婚姻状况  personBasic.maritalStatus-->
					<td class="label"><fmt:message
							key="label.applyDetail.maritalStatus" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1009"
							name="maritalStatus" selected="${commonPer.maritalStatus}"
							isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
					</td>
					<!-- 产权房状况  personBasic.houseStatus -->
					<td class="label"><fmt:message
							key="label.applyDetail.houseStatus" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1011"
							name="houseStatus" selected="${commonPer.houseStatus}"
							isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
					</td>
				</tr>
				<tr>
					<!-- 客户户籍所在地 -->
					<td class="label">户籍所在地：</td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkage:select type="province"
										name="address1.province" pid="pi0" cid="ci0" did="di0"
										mandatory="true" seledProvince="${address1.province}" /></td>
								<td class="content"><linkage:select type="city"
										name="address1.city" cid="ci0" did="di0" mandatory="true"
										seledCity="${address1.city}" /></td>
								<td class="content"><linkage:select type="district"
										name="address1.district" did="di0" mandatory="true"
										seledDistrict="${address1.district}" /></td>
								<td class="content"><input id="town"
									value="${address1.town}" name="address1.town" loxiaType="input"
									trim="true" mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="label">居住地址：</td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkage:select type="province"
										name="address2.province" pid="pi1" cid="ci1" did="di1"
										mandatory="true" seledProvince="${address2.province}" /></td>
								<td class="content"><linkage:select type="city"
										name="address2.city" cid="ci1" did="di1" mandatory="true"
										seledCity="${address2.city}" /></td>
								<td class="content"><linkage:select type="district"
										name="address2.district" did="di1" mandatory="true"
										seledDistrict="${address2.district}" /></td>
								<td class="content"><input id="town2" name="address2.town"
									loxiaType="input" trim="true" mandatory="true"
									value="${address2.town}" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="label">住宅邮编：</td>
					<td class="content"><input loxiaType="input"
						name="address2.postcode" trim="true" value="${address2.postcode }" /></td>
					<td class="label">住宅电话：</td>
					<td class="content"><input loxiaType="input"
						name="address2.telephone" trim="true"
						value="${address2.telephone }" /></td>
				</tr>
				<tr>
					<!-- 住房条件 personBasic.houseCondition -->
					<td class="label">住房条件：</td>
					<td class="content"><bizoption:bizoption biztypekey="1010"
							name="houseCondition" selected="${commonPer.houseCondition}"
							isChoose="true" mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label>
					</td>
					<!-- 现地址入住时间  personBasic.houseBegin-->
					<td class="label"><fmt:message
							key="label.applyDetail.houseBegin" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="date" name="houseBegin"
						trim="true" value="${commonPer.houseBegin}" mandatory="true" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<!-- 电子邮箱  personBasic.email-->
					<td class="label"><fmt:message key="label.applyDetail.email"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" name="email"
						trim="true" checkmaster="validateEmail" /></td>
					<!-- 即使通讯方式  personBasic.im-->
					<td class="label"><fmt:message key="label.applyDetail.im"
							bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" name="im"
						trim="true" value="${commonPer.im}" /></td>
				</tr>
				<tr>
					<!-- 社保信息  personBasic.socialSecurity-->
					<td class="label"><fmt:message
							key="label.applyDetail.socialSecurity" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input"
						name="socialSecurity" trim="true"
						value="${commonPer.socialSecurity}" /></td>
					<!-- 公积金  personBasic.accumulationFund-->
					<td class="label"><fmt:message
							key="label.applyDetail.accumulationFund" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input"
						value="${commonPer.accumulationFund}" name="accumulationFund"
						trim="true" /></td>
				</tr>
				<tr>
					<!-- 其他信息 personBasic.otherInfo-->
					<td class="label"><fmt:message
							key="label.applyDetail.otherInfo" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" trim="true"
						name="otherInfo" value="${commonPer.otherInfo}" /></td>
				</tr>
			</table>
			<br />
			<div class="divBgColor">职业资料</div>
			<table class="col3">
				<tr>
					<!-- 工作单位 personBasic.workUnit-->
					<td class="label"><fmt:message
							key="label.applyDetail.workUnit" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" trim="true"
						name="workUnit" value="${commonPer.workUnit}" /></td>

					<!-- 现任职部门 personBasic.workunitDept -->
					<td class="label"><fmt:message
							key="label.applyDetail.workunitDept" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" trim="true"
						name="workunitDept" value="${commonPer.workunitDept}" /></td>
				</tr>
				<tr>
					<!-- 工作职位personBasic.workunitPosition -->
					<td class="label"><fmt:message
							key="label.applyDetail.workunitPosition" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input" trim="true"
						name="workunitPosition" value="${commonPer.workunitPosition}" /></td>
					<td class="label">现任职单位入职日期：</td>
					<td class="content"><input loxiaType="date"
						name="workunitBegin" trim="true"
						value="${commonPer.workunitBegin}" /></td>
				</tr>
				<tr>
					<td class="label">单位电话：</td>
					<td class="content"><input value="${address3.telephone }"
						loxiaType="input" trim="true" name="address3.telephone" /></td>
					<!-- 岗位级别  personBasic.workunitPost-->
					<td class="label"><fmt:message
							key="label.applyDetail.workunitPost" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1012"
							name="workunitPost" selected="${commonPer.workunitPost}"
							isChoose="true" /></td>
				</tr>
				<tr>
					<!-- 单位规模 personBasic.workunitSize -->
					<td class="label"><fmt:message
							key="label.applyDetail.workunitSize" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1015"
							name="workunitSize" selected="${commonPer.workunitSize}"
							isChoose="true" /></td>
					<!-- 单位行业 personBasic.workunitIndustry -->
					<td class="label"><fmt:message
							key="label.applyDetail.workunitIndustry" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1014"
							name="workunitIndustry" selected="${commonPer.workunitIndustry}"
							isChoose="true" /></td>
				</tr>
				<tr>
					<!-- 单位性质 personBasic.workunitType -->
					<td class="label"><fmt:message
							key="label.applyDetail.workunitType" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1013"
							name="workunitType" selected="${commonPer.workunitType}"
							isChoose="true" /></td>
				</tr>
				<td class="label">单位地址：</td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkage:select type="province"
									name="address3.province" pid="pi2" cid="ci2" did="di2"
									seledProvince="${address3.province}" /></td>
							<td class="content"><linkage:select type="city"
									name="address3.city" cid="ci2" did="di2"
									seledCity="${address3.city}" /></td>
							<td class="content"><linkage:select type="district"
									name="address3.district" did="di2"
									seledDistrict="${address3.district}" /></td>
							<td class="content"><input name="address3.town"
								loxiaType="input" trim="true" value="${address3.town}" /></td>
						</tr>
					</table>
				</td>
			</table>
			</br>
			<div class="divBgColor">
				<fmt:message key="label.apply.income" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<!-- 工资收入  personBasic.incomeWorkunitMonth -->
					<td class="label"><fmt:message
							key="label.applyDetail.incomeWorkunitMonth" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number" decimal="2"
						name="incomeWorkunitMonth"
						value="${commonPer.incomeWorkunitMonth}" /></td>
					<!-- 每月发薪日  personBasic.incomeWorkunitDate -->
					<td class="label"><fmt:message
							key="label.applyDetail.incomeWorkunitDate" bundle="${lang}" /></td>
					<td class="content"><input
						value="${commonPer.incomeWorkunitDay}" loxiaType="number"
						name="incomeWorkunitDay" /></td>
				</tr>
				<tr>
					<!-- 银行代发  personBasic.incomeWorkunitBank -->
					<td class="label">工资/银行代发：</td>
					<td class="content"><input loxiaType="number" decimal="2"
						name="incomeWorkunitBank" value="${commonPer.incomeWorkunitBank}" />
					</td>
					<td class="label">工资/现金：</td>
					<td class="content"><input loxiaType="number" decimal="2"
						name="incomeWorkunitCash" value="${commonPer.incomeWorkunitCash}" /></td>
				</tr>
				<tr>
					<!-- 房屋出租收入 personBasic.incomeHouseRent -->
					<td class="label"><fmt:message
							key="label.applyDetail.incomeHouseRent" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number" decimal="2"
						name="incomeHouseRent" value="${commonPer.incomeHouseRent}" /></td>
					<!-- 其他收入 personBasic.incomeOther -->
					<td class="label"><fmt:message
							key="label.applyDetail.incomeOther" bundle="${lang}" /></td>
					<td class="content"><input value="${commonPer.incomeOther}"
						loxiaType="number" decimal="2" name="incomeOther" /></td>
				</tr>
				<tr>
					<!-- 其他收入来源 personBasic.incomeOthersource -->
					<td class="label"><fmt:message
							key="label.applyDetail.incomeOthersource" bundle="${lang}" /></td>
					<td class="content"><input
						value="${commonPer.incomeOthersource}" loxiaType="input"
						name="incomeOthersource" /></td>
					<!-- 月平均收入 personBasic.incomeAvgMonth -->
					<td class="label"><fmt:message
							key="label.applyDetail.incomeAvgMonth" bundle="${lang}" /></td>
					<td class="content"><input value="${commonPer.incomeAvgMonth}"
						loxiaType="number" decimal="2" name="incomeAvgMonth" /></td>
				</tr>
			</table>

			</br>
			<div class="divBgColor">
				<fmt:message key="label.apply.private" bundle="${lang}" />
			</div>
			<table class="col3">
				<tr>
					<!-- 企业类型 personBasic.privateType -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateType" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1016"
							name="privateType" selected="${commonPer.privateType}"
							isChoose="true" /></td>
					<!-- 经营场所 personBasic.privateSite -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateSite" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1017"
							name="privateSite" selected="${commonPer.privateSite}"
							isChoose="true" /></td>
				</tr>
				<tr>
					<!-- 经营场所租期开始 personBasic.privateSiteBegin -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateSiteBegin" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="date"
						name="privateSiteBegin" value="${commonPer.privateSiteBegin}" /></td>
					<!-- 经营场所租期结束 personBasic.privateSiteEnd -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateSiteEnd" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="date"
						name="privateSiteEnd" value="${commonPer.privateSiteEnd}" /></td>
				</tr>
				<tr>
					<!-- 工商注册类型   personBasic.privateRegister -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateRegister" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1018"
							name="privateRegister" selected="${commonPer.privateRegister}"
							isChoose="true" /></td>
					<!-- 工商登记号 personBasic.private_registerNo -->
					<td class="label"><fmt:message
							key="label.applyDetail.private_registerNo" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="input"
						name="privateregisterNo" value="${commonPer.privateregisterNo}" /></td>
				</tr>
				<tr>
					<!--  当前经营性贷款状态   personBasic.privateLoan -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateLoan" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1019"
							name="privateLoan" isChoose="true"
							selected="${commonPer.privateLoan}" /></td>

					<!-- 每月还款额度personBasic.privateRepayMonth -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateRepayMonth" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number" decimal="2"
						name="privateRepayMonth" value="${commonPer.privateRepayMonth}" />
					</td>
				</tr>
				<tr>
					<!-- 成立日期 personBasic.privateOpen -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateOpen" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="date" name="privateOpen"
						value="${commonPer.privateOpen}" /></td>
					<!-- 雇员人数  personBasic.privateEmployees -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateEmployees" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number"
						name="privateEmployees" value="${commonPer.privateEmployees}" /></td>
				</tr>
				<tr>
					<!-- 月均盈利/亏损额  personBasic.privateProfitMonth -->
					<td class="label"><fmt:message
							key="label.applyDetail.privateProfitMonth" bundle="${lang}" /></td>
					<td class="content"><input loxiaType="number" decimal="2"
						name="privateProfitMonth" value="${commonPer.privateProfitMonth}" />
					</td>
				</tr>
			</table>
		</div>

		</br> </br>


		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitCommonPer">保存</button>
		</div>
	</form>
</body>
</html>
