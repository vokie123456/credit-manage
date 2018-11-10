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
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_transient_add.js'/>"></script>
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
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">个人申请</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">共同还款人信息</a></li>
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
					id="applyId" name="applyId" value="${personBasic.applyId}" /> <input
					type="hidden" id="projectId" name="clientProject.projectId"
					value="${personBasic.projectId}" />
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
						<!-- 客户来源 applyPersonBasic.clientFrom  -->
						<td class="label"><fmt:message
								key="label.applyDetail.clientFrom" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1004"
								id="clientFrom" name="clientBasic.clientFrom"
								checked="${personBasic.clientFrom}"></radio:radio> <label
							class="del_mandatory">*</label></td>
					</tr>
					<tr>
						<!-- 希望贷款金额 applyPersonBasic.loanHopeMoney  -->
						<td class="label"><fmt:message
								key="label.applyDetail.loanHopeMoney" bundle="${lang}" /></td>
						<td class="content"><input id="loanHopeMoney"
							loxiaType="number" decimal="2" trim="true" mandatory="true"
							name="applyPersonBasic.loanHopeMoney"
							value="${personBasic.loanHopeMoney}" /> <label
							class="del_mandatory">*</label></td>
					</tr>
					<tr>
						<!-- 贷款用途 applyPersonBasic.loanPurpose 键值对数据 -->
						<td class="label"><fmt:message
								key="label.applyDetail.loanPurpose" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1023"
								id="loanPurpose" name="applyPersonBasic.loanPurpose"
								checked="${personBasic.loanPurpose}"></radio:radio> <label
							class="del_mandatory">*</label></td>
					</tr>
					<%-- 					<tr>
						<!-- 贷款期限 applyPersonBasic.loanPeriod -->
						<td class="label"><fmt:message
								key="label.applyDetail.loanPeriod" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1024"
								id="loanPeriod" name="applyPersonBasic.loanPeriod"
								checked="${personBasic.loanPeriod}"></radio:radio> <label
							class="del_mandatory">*</label></td>
					</tr> --%>
					<tr>
						<!-- 信息来源  personBasic.infoFrom -->
						<td class="label"><fmt:message
								key="label.applyDetail.infoFrom" bundle="${lang}" /></td>
						<td class="content"><radio:radio biztypekey="1022"
								id="infoFrom" name="applyPersonBasic.infoFrom"
								checked="${personBasic.infoFrom}"></radio:radio> <label
							class="del_mandatory">*</label></td>
					</tr>
					<tr>
						<!-- 贷款产品 -->
						<td class="label"><fmt:message
								key="label.loan.product.loan.name" bundle="${lang}" /> <input
							type="hidden" id="edit_productid" value="${pc.productId }" /></td>
						<td class="content"><select id="loanProduct" name="productId"
							class="ui-loxia-default ui-corner-all" /> <label
							class="del_mandatory">*</label></td>
					</tr>
				</table>
				<br /> <br />
				<!-- 个人信息查询（存量客户 增量客户）证件类型 证件号码  公司编码 -->
				<div class="divBgColor">个人资料</div>
				<div id="formApplyAdd">
					<!-- 查询条件  查询存量客户-->
					<table class="col3">
						<tr>
							<!-- 证件类型  personBasic.cardType-->
							<td class="label">证件类型：</td>
							<td class="content"><bizoption:bizoption biztypekey="1007"
									id="cardType" name="personBasic.cardType" isChoose="true"
									mandatory="true" selected="${personBasic.cardType}" /> <label
								class="del_mandatory">*</label></td>
							<!-- 证件号码  personBasic.cardNo-->
							<td class="label">证件号码：</td>
							<td class="content"><input id="cardNo"
								name="personBasic.cardNo" loxiaType="input" trim="true"
								readonly="readonly" mandatory="true"
								value="${personBasic.cardNo}" checkmaster="validateIdentify" />
								<label class="del_mandatory">*</label></td>
						</tr>
						<!-- 若数据库存在客户  显示客户的信息  若没有 提示没有   手动录入保存 -->
						<tr>
							<!-- 姓名  clientBasic.clientName-->
							<td class="label">姓名：</td>
							<td class="content"><input id="clientName"
								name="clientBasic.clientName" value="${personBasic.clientName}"
								loxiaType="input" trim="true" mandatory="true" /> <label
								class="del_mandatory">*</label></td>
							<!-- 户籍类型  personBasic.household_type-->
							<td class="label">户籍：</td>
							<td class="content"><bizoption:bizoption biztypekey="1005"
									id="householdType" name="personBasic.householdType"
									isChoose="true" mandatory="true"
									selected="${personBasic.householdType}" /> <label
								class="del_mandatory">*</label></td>
						</tr>
						<tr>
							<!-- 出生日期  personBasic.birthday-->
							<td class="label">出生日期：</td>
							<td class="content"><input id="personBasic.birthday"
								trim="true" mandatory="true" loxiaType="date"
								name="personBasic.birthday" value="${personBasic.birthdayAlias}" />
								<label class="del_mandatory">*</label></td>
							<!-- 性别  personBasic.sex-->
							<td class="label"><fmt:message key="label.applyDetail.sex"
									bundle="${lang}" /></td>
							<td class="content" class="col_2"><bizoption:bizoption
									biztypekey="1006" id="sex" name="personBasic.sex"
									isChoose="true" mandatory="true" selected="${personBasic.sex}" />
								<label class="del_mandatory">*</label></td>
						</tr>
						<tr>
							<!-- 手机号码  personBasic.mobilePhone-->
							<td class="label">手机：</td>
							<td class="content"><input id="mobilePhone"
								loxiaType="input" name="personBasic.mobilePhone"
								value="${personBasic.mobilePhone}" trim="true" mandatory="true" />
								<label class="del_mandatory">&nbsp;*</label></td>
							<td class="label">住宅电话：</td>
							<td class="content"><input id="telephone" loxiaType="input"
								name="address.telephone" trim="true"
								value="${personBasic.telephone1}" /></td>
						</tr>
						<tr>
							<!-- 学历  personBasic.educationLevel-->
							<td class="label">学历：</td>
							<td class="content" class="col_1"><bizoption:bizoption
									biztypekey="1008" id="educationLevel"
									name="personBasic.educationLevel" isChoose="true"
									mandatory="true" selected="${personBasic.educationLevel}" /> <label
								class="del_mandatory">*</label></td>
							<!-- 婚姻状况  personBasic.maritalStatus-->
							<td class="label"><fmt:message
									key="label.applyDetail.maritalStatus" bundle="${lang}" /></td>
							<td class="content" class="col_1"><bizoption:bizoption
									biztypekey="1009" id="maritalStatus"
									name="personBasic.maritalStatus" isChoose="true"
									mandatory="true" selected="${personBasic.maritalStatus}" /> <label
								class="del_mandatory">*</label></td>
						</tr>
						<tr>
							<!-- 客户户籍所在地 -->
							<td class="label">户籍所在地：</td>
							<td colspan="3">
								<table class="col3">
									<tr>
										<td class="content"><linkage:select type="province"
												name="address.province" pid="pi0" cid="ci0" did="di0"
												mandatory="true" seledProvince="${personBasic.province1}" /></td>
										<td class="content"><linkage:select type="city"
												name="address.city" cid="ci0" did="di0" mandatory="true"
												seledCity="${personBasic.city1}" /></td>
										<td class="content"><linkage:select type="district"
												name="address.district" did="di0" mandatory="true"
												seledDistrict="${personBasic.district1}" /></td>
										<td class="content"><input id="town" name="address.town"
											loxiaType="input" trim="true" mandatory="true"
											value="${personBasic.town1}" /><label class="del_mandatory">&nbsp;*</label></td>
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
												mandatory="true" seledProvince="${personBasic.province2}" /></td>
										<td class="content"><linkage:select type="city"
												name="address2.city" cid="ci1" did="di1" mandatory="true"
												seledCity="${personBasic.city2}" /></td>
										<td class="content"><linkage:select type="district"
												name="address2.district" did="di1" mandatory="true"
												seledDistrict="${personBasic.district2}" /></td>
										<td class="content"><input id="town2"
											name="address2.town" loxiaType="input" trim="true"
											mandatory="true" value="${personBasic.town2}" /><label
											class="del_mandatory">&nbsp;*</label></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<!-- 住房条件 personBasic.houseCondition -->
							<td class="label">住房条件：</td>
							<td class="content" class="col_1"><bizoption:bizoption
									biztypekey="1010" id="personBasic.houseCondition"
									name="personBasic.houseCondition" isChoose="true"
									mandatory="true" selected="${personBasic.houseCondition}" /> <label
								class="del_mandatory">*</label></td>
							<!-- 现地址入住时间  personBasic.houseBegin-->
							<td class="label"><fmt:message
									key="label.applyDetail.houseBegin" bundle="${lang}" /></td>
							<td class="content" class="col_1"><input id="houseBegin"
								loxiaType="date" trim="true" mandatory="true"
								name="personBasic.houseBegin"
								value="${personBasic.houseBeginAlias}" /> <label
								class="del_mandatory">*</label></td>
						</tr>
						<tr>
							<!-- 产权房状况  personBasic.houseStatus -->
							<td class="label"><fmt:message
									key="label.applyDetail.houseStatus" bundle="${lang}" /></td>
							<td class="content" class="col_1"><bizoption:bizoption
									biztypekey="1011" id="houseStatus"
									name="personBasic.houseStatus" isChoose="true" mandatory="true"
									selected="${personBasic.houseStatus}" /> <label
								class="del_mandatory">*</label></td>
							<td class="label">住房支出：</td>
							<td class="content"><input id="houseExpend"
								loxiaType="input" name="personBasic.houseExpend" trim="true"
								value="${personBasic.houseExpend}" /></td>
						</tr>
						<tr>
							<!-- 电子邮箱  personBasic.email-->
							<td class="label"><fmt:message key="label.applyDetail.email"
									bundle="${lang}" /></td>
							<td class="content"><input id="email" loxiaType="input"
								name="personBasic.email" value="${personBasic.email}"
								checkmaster="validateEmail" /></td>
							<!-- 即使通讯方式  personBasic.im-->
							<td class="label"><fmt:message key="label.applyDetail.im"
									bundle="${lang}" /></td>
							<td class="content"><input id="im" loxiaType="input"
								name="personBasic.im" value="${personBasic.im}" trim="true" />
							</td>
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
							<td class="content"><input id="personBasic.accumulationFund"
								loxiaType="input" name="personBasic.accumulationFund"
								value="${personBasic.accumulationFund}" trim="true" /></td>
						</tr>
						<tr>
							<td class="label">住宅邮编：</td>
							<td class="content" class="col_1"><input id="postcode"
								loxiaType="input" name="address.postcode" trim="true"
								value="${personBasic.postcode1}" /></td>
							<!-- 其他信息 personBasic.otherInfo-->
							<td class="label"><fmt:message
									key="label.applyDetail.otherInfo" bundle="${lang}" /></td>
							<td class="content"><input id="personBasic.otherInfo"
								loxiaType="input" name="personBasic.otherInfo"
								value="${personBasic.otherInfo}" trim="true" /></td>
						</tr>
					</table>

					<br /> 
					<div class="divBgColor">职业资料</div>
					<table class="col3">
						<tr>
							<!-- 工作单位 personBasic.workUnit-->
							<td class="label"><fmt:message
									key="label.applyDetail.workUnit" bundle="${lang}" /></td>
							<td class="content"><input id="workUnit" loxiaType="input"
								trim="true" name="personBasic.workUnit"
								value="${personBasic.workUnit}" /></td>

							<!-- 现任职部门 personBasic.workunitDept -->
							<td class="label"><fmt:message
									key="label.applyDetail.workunitDept" bundle="${lang}" /></td>
							<td class="content"><input id="workunitDept"
								loxiaType="input" trim="true" name="personBasic.workunitDept"
								value="${personBasic.workunitDept}" /></td>
						</tr>
						<tr>
							<!-- 工作职位personBasic.workunitPosition -->
							<td class="label"><fmt:message
									key="label.applyDetail.workunitPosition" bundle="${lang}" /></td>
							<td class="content" class="col_3"><input
								id="workunitPosition" loxiaType="input" trim="true"
								name="personBasic.workunitPosition"
								value="${personBasic.workunitPosition}" /></td>
							<td class="label">现任职单位入职日期：</td>
							<td class="content"><input id="workunitBegin"
								loxiaType="date" name="personBasic.workunitBegin" trim="true"
								value="${personBasic.workunitBegin}" /></td>
						</tr>
						<tr>
							<td class="label">单位地址：</td>
							<td colspan="3">
								<table class="col3">
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
										<td class="content"><input id="town3"
											name="address3.town" loxiaType="input" trim="true"
											value="${personBasic.town3}" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="label">单位电话：</td>
							<td class="content"><input id="address3.telephone"
								loxiaType="input" trim="true" name="address3.telephone"
								value="${personBasic.telephone3}" /></td>
							<!-- 岗位级别  personBasic.workunitPost-->
							<td class="label"><fmt:message
									key="label.applyDetail.workunitPost" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1012"
									id="workunitPost" name="personBasic.workunitPost"
									isChoose="true" selected="${personBasic.workunitPost}" /></td>
						</tr>
						<tr>
							<!-- 单位规模 personBasic.workunitSize -->
							<td class="label"><fmt:message
									key="label.applyDetail.workunitSize" bundle="${lang}" /></td>
							<td class="content"><bizoption:bizoption biztypekey="1015"
									id="workunitSize" name="personBasic.workunitSize"
									isChoose="true" selected="${personBasic.workunitSize}" /></td>
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
									id="workunitType" name="personBasic.workunitType"
									isChoose="true" selected="${personBasic.workunitType}" /></td>
						</tr>
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
							<td class="content"><input id="incomeWorkunitMonth"
								loxiaType="number" decimal="2"
								name="personBasic.incomeWorkunitMonth"
								value="${personBasic.incomeWorkunitMonth}" /></td>
							<!-- 每月发薪日  personBasic.incomeWorkunitDate -->
							<td class="label"><fmt:message
									key="label.applyDetail.incomeWorkunitDate" bundle="${lang}" /></td>
							<td class="content"><input id="incomeWorkunitDay"
								loxiaType="number" name="personBasic.incomeWorkunitDay"
								value="${personBasic.incomeWorkunitDay}" /></td>
						</tr>
						<tr>
							<!-- 银行代发  personBasic.incomeWorkunitBank -->
							<td nowrap="nowrap" class="label">工资/银行代发：</td>
							<td class="content"><input id="incomeWorkunitBank"
								loxiaType="number" decimal="2"
								name="personBasic.incomeWorkunitBank"
								value="${personBasic.incomeWorkunitBank}" /></td>
							<td class="label">工资/现金：</td>
							<td class="content"><input id="incomeWorkunitCash"
								loxiaType="number" decimal="2"
								name="personBasic.incomeWorkunitCash"
								value="${personBasic.incomeWorkunitCash}" /></td>
						</tr>
						<tr>
							<!-- 房屋出租收入 personBasic.incomeHouseRent -->
							<td class="label"><fmt:message
									key="label.applyDetail.incomeHouseRent" bundle="${lang}" /></td>
							<td class="content"><input id="incomeHouseRent"
								loxiaType="number" decimal="2"
								name="personBasic.incomeHouseRent"
								value="${personBasic.incomeHouseRent}" /></td>
							<!-- 其他收入 personBasic.incomeOther -->
							<td class="label"><fmt:message
									key="label.applyDetail.incomeOther" bundle="${lang}" /></td>
							<td class="content"><input id="incomeOther"
								loxiaType="number" decimal="2" name="personBasic.incomeOther"
								value="${personBasic.incomeOther}" /></td>
						</tr>
						<tr>
							<!-- 月平均收入 personBasic.incomeAvgMonth -->
							<td class="label"><fmt:message
									key="label.applyDetail.incomeAvgMonth" bundle="${lang}" /></td>
							<td class="content"><input id="incomeAvgMonth"
								loxiaType="number" decimal="2" name="personBasic.incomeAvgMonth"
								value="${personBasic.incomeAvgMonth}" /></td>
							<!-- 其他收入来源 personBasic.incomeOthersource -->
							<td class="label"><fmt:message
									key="label.applyDetail.incomeOthersource" bundle="${lang}" /></td>
							<td class="content"><input id="incomeOthersource"
								loxiaType="input" name="personBasic.incomeOthersource"
								value="${personBasic.incomeOthersource}" /></td>
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
									id="privateType" name="personBasic.privateType" isChoose="true"
									selected="${personBasic.privateType}" /></td>
							<!-- 经营场所 personBasic.privateSite -->
							<td class="label"><fmt:message
									key="label.applyDetail.privateSite" bundle="${lang}" /></td>
							<td><bizoption:bizoption biztypekey="1017" id="privateSite"
									name="personBasic.privateSite" isChoose="true"
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
							<td class="content"><input id="privateSiteEnd"
								loxiaType="date" name="personBasic.privateSiteEnd"
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
									key="label.applyDetail.private_registerNo" bundle="${lang}" />
							</td>
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
									key="label.applyDetail.privateRepayMonth" bundle="${lang}" />
							</td>
							<td class="content"><input id="privateRepayMonth"
								loxiaType="number" decimal="2"
								name="personBasic.privateRepayMonth"
								value="${personBasic.privateRepayMonth}" /></td>
						</tr>
						<tr>
							<!-- 成立日期 personBasic.privateOpen -->
							<td><fmt:message key="label.applyDetail.privateOpen"
									bundle="${lang}" /></td>
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
									key="label.applyDetail.privateProfitMonth" bundle="${lang}" />
							</td>
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
								loxiaType="number" decimal="2"
								name="personBasic.privateShareStock"
								value="${personBasic.privateShareStock}" /></td>
							<td class="label">注册资本：</td>
							<td class="content"><input id="privateRegisteredAssets"
								loxiaType="number" decimal="2"
								name="personBasic.privateRegisteredAssets"
								value="${personBasic.privateRegisteredAssets}" /></td>
						</tr>
					</table>
				</div>
				</br>
				<div class="divBgColor">业务人员信息</div>
				<table class="col3">
					<tr>
						<td class="label">营业所</td>
						<td class="content"><bizorg:bizorg id="bizHall"
								name="clientProject.bizHall" compCode="${compCode }"
								selected="${personBasic.orgCodeNo}" isBusiness="true" /> <label
							class="del_mandatory">*</label></td>
						<!--  
						<td class="label">销售团队</td>
						<td class="content"><input id="clientProject.salerTeam"
							loxiaType="number" name="clientProject.salerTeam"
							value="${personBasic.salerTeam}" /></td>
					-->
						<td class="label"></td>
						<td class="content"></td>
					</tr>
					<tr>
						<td class="label">客户经理A：</td>
						<td class="content"><userDepartment:userDepartment
								bizHall="${bizHall}" id="saleraCode"
								selected="${personBasic.saleraCode}"
								name="clientProject.saleraCode" mandatory="true" /> <label
							class="del_mandatory">*</label></td>

						<td class="label">客户经理B：</td>
						<td class="content"><userDepartment:userDepartment
								bizHall="${bizHall}" id="salerbCode"
								name="clientProject.salerbCode" isChoose="true"
								selected="${personBasic.salerbCode}" /></td>
					</tr>
				</table>
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
				</div>
			</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>

</body>