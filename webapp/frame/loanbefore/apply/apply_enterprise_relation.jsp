<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_enterprise_relation.js'/>"></script>
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize"
		value="${resultSize}" />
	<input type="hidden" name="applyId" id="applyId" value="${applyId}" />

	<form id="relationInfoForm">
		<!-- 关系人不为空 -->
		<c:forEach items="${relationList}" var="entShareRelation"
			varStatus="loop">
			<div id="applyRelation${loop.index}">
				<br />
				<div class="divBgColor">
					<table>
						<tr>
							<td width="150">股东信息</td>
							<td width="80%" align="right"><input type="button"
								onclick="deleteRelation(${loop.index})"
								style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
								title="删除" /></td>
						</tr>
					</table>
				</div>
				<table class="col3">
					<tr>
						<td class="label">股东名称：</td>
						<td class="content"><input
							id="enterpriseShareholders[${loop.index}].relationobjName"
							loxiaType="input"
							name="enterpriseShareholders[${loop.index}].relationobjName"
							trim="true" mandatory="true"
							value="${entShareRelation.relationobjName}" /></td>
						<td class="label">出资额：</td>
						<td class="content"><input
							id="enterpriseShareholders[${loop.index}].investmentAmount"
							loxiaType="number"
							name="enterpriseShareholders[${loop.index}].investmentAmount"
							trim="true" value="${entShareRelation.investmentAmount}" /></td>
					</tr>
					<tr>
						<td class="label">占比：</td>
						<td class="content"><input
							id="enterpriseShareholders[${loop.index}].shareStock"
							loxiaType="number"
							name="enterpriseShareholders[${loop.index}].shareStock"
							trim="true" value="${entShareRelation.shareStock}" />%</td>
						<td class="label">出资方式：</td>
						<td class="content"><input
							id="enterpriseShareholders[${loop.index}].investmentWay"
							loxiaType="input"
							name="enterpriseShareholders[${loop.index}].investmentWay"
							trim="true" value="${entShareRelation.investmentWay}" /></td>
					</tr>
					<tr>
						<td class="label">联系地址：</td>
						<td colspan="3" >
							<table class="col3">
								<tr>
									<td class="content"><linkage:select type="province"
											name="enterpriseShareholders[${loop.index}].address.province"
											pid="pc${loop.index}" cid="cc${loop.index}"
											did="dc${loop.index}" mandatory="true"
											seledProvince="${entShareRelation.province1}" /></td>
									<td class="content"><linkage:select type="city"
											name="enterpriseShareholders[${loop.index}].address.city"
											cid="cc${loop.index}" did="dc${count}" mandatory="true"
											seledCity="${entShareRelation.city1}" /></td>
									<td class="content"><linkage:select type="district"
											name="enterpriseShareholders[${loop.index}].address.district"
											did="dc${loop.index}" mandatory="true"
											seledDistrict="${entShareRelation.district1}" /></td>
									<td class="content"><input
										id="enterpriseShareholders[${loop.index}].address.town"
										loxiaType="input"
										name="enterpriseShareholders[${loop.index}].address.town"
										mandatory="true" trim="true" value="${entShareRelation.town1}" /><label
										class="del_mandatory">&nbsp;&nbsp;*</label></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<!-- 证件类型  personBasic.cardType-->
						<td class="label">证件类型：</td>
						<td class="content"><bizoption:bizoption
								biztypekey="1007"
								id="enterpriseShareholders[${loop.index}].cardType"
								name="enterpriseShareholders[${loop.index}].cardType"
								checkmaster="validateIdentify" mandatory="true"
								selected="${entShareRelation.cardType}" /><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>

						<!-- 证件号码  personBasic.cardNo-->
						<td class="label">证件号码：</td>
						<td class="content"><input
							id="enterpriseShareholders[${loop.index}].cardNoV"
							name="enterpriseShareholders[${loop.index}].cardNoV"
							loxiaType="input" trim="true" mandatory="true"
							checkmaster="validateIdentify" value="${entShareRelation.cardNo}" /><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>

					</tr>
					<tr>
						<td class="label">电话：</td>
						<td class="content"><input
							id="enterpriseShareholders[${loop.index}].telephone"
							loxiaType="number"
							name="enterpriseShareholders[${loop.index}].telephone"
							trim="true" value="${entShareRelation.telephone}" /></td>
						</td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<div id="formRelation"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addRelation">添加股东</button>
		</div>

		<input type="hidden" name="resultMageSize" id=resultMageSize
			value="${resultMageSize}" />
		<!-- 关系人不为空 -->
		<c:forEach items="${relaMageList}" var="entMageRelation"
			varStatus="loop">
			<div id="applyManageRelation${loop.index}">
				<div class="divBgColor">
					<table>
						<tr>
							<td width="150">董事,高管信息</td>
							<td width="80%" align="right"><input type="button"
								onclick="deleteManageRelation(${loop.index})"
								style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
								title="删除" /></td>
						</tr>
					</table>
				</div>
				<table class="col3">
					<tr>
						<td class="label">姓名：</td>
						<td class="content"><input
							id="enterpriseSeniors[${loop.index}].relationobjName"
							loxiaType="input"
							name="enterpriseSeniors[${loop.index}].relationobjName"
							trim="true" mandatory="true"
							value="${entMageRelation.relationobjName}" /></td>
						<td class="label">职务：</td>
						<td class="content"><input
							id="enterpriseSeniors[${loop.index}].position" loxiaType="input"
							name="enterpriseSeniors[${loop.index}].position" trim="true"
							value="${entMageRelation.position}" /></td>
					</tr>
					<tr>
						<td class="label">年龄：</td>
						<td class="content"><input
							id="enterpriseSeniors[${loop.index}].age" loxiaType="number"
							name="enterpriseSeniors[${loop.index}].age" trim="true"
							value="${entMageRelation.age}" /></td>
						</td>
						<td class="label">学历：</td>
						<td class="content"><bizoption:bizoption biztypekey="1008"
								id="enterpriseSeniors[${loop.index}].educationLevel"
								name="enterpriseSeniors[${loop.index}].educationLevel"
								selected="${entMageRelation.educationLevel}" /></td>
					</tr>
					<tr>
						<td class="label">职称：</td>
						<td class="content"><input
							id="enterpriseSeniors[${loop.index}].jobTitle" loxiaType="input"
							name="enterpriseSeniors[${loop.index}].jobTitle" trim="true"
							value="${entMageRelation.jobTitle}" /></td>
						<td class="label">个人持股比例：</td>
						<td class="content"><input
							id="enterpriseSeniors[${loop.index}].shareStock"
							loxiaType="number"
							name="enterpriseSeniors[${loop.index}].shareStock" trim="true"
							value="${entMageRelation.shareStock}" />%</td>
						</td>
					</tr>
					<tr>
						<!-- 证件类型  personBasic.cardType-->
						<td class="label">证件类型：</td>
						<td class="content" width="150"><bizoption:bizoption
								biztypekey="1007" id="enterpriseSeniors[${loop.index}].cardType"
								name="enterpriseSeniors[${loop.index}].cardType"
								checkmaster="validateIdentify" mandatory="true"
								selected="${entMageRelation.cardType}" /> <label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
						<!-- 证件号码  personBasic.cardNo-->
						<td class="label">证件号码：</td>
						<td class="content" width="150"><input
							id="enterpriseSeniors[${loop.index}].cardNo"
							checkmaster="validateIdentify"
							name="enterpriseSeniors[${loop.index}].cardNo" loxiaType="input"
							trim="true" mandatory="true" value="${entMageRelation.cardNo}" /><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<div id="formManageRelation"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addManageRelation">添加高管</button>
		</div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitRelation">保存</button>
		</div>
		</br>
	</form>
</body>