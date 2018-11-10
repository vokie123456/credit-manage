<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款高管或董事信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultMageSize" id=resultMageSize
		value="${resultMageSize}" />
	<!-- 关系人不为空 -->
	<c:forEach items="${relaMageList}" var="entMageRelation"
		varStatus="loop">
		<div id="applyManageRelation${loop.index}">
			<br />
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
					<td class="content"><input style="width: 80px;"
						id="enterpriseSeniors[${loop.index}].shareStock"
						loxiaType="number"
						name="enterpriseSeniors[${loop.index}].shareStock" trim="true"
						value="${entMageRelation.shareStock}" />%</td>
					</td>
				</tr>
				<tr>
					<!-- 证件类型  personBasic.cardType-->
					<td class="label">证件类型：</td>
					<td class="content"><bizoption:bizoption biztypekey="1007"
							id="enterpriseSeniors[${loop.index}].cardType"
							name="enterpriseSeniors[${loop.index}].cardType" mandatory="true"
							checkmaster="validateIdentify"
							selected="${entMageRelation.cardType}" /><label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>

					<!-- 证件号码  personBasic.cardNo-->
					<td class="label">证件号码：</td>
					<td class="content"><input
						id="enterpriseSeniors[${loop.index}].cardNo"
						checkmaster="validateIdentify"
						name="enterpriseSeniors[${loop.index}].cardNo" loxiaType="input"
						trim="true" mandatory="true" value="${entMageRelation.cardNo}" /><label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>


			</table>
		</div>
	</c:forEach>
</body>