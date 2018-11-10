<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 股东关系人模板 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<linkage:define />
</head>
<br />
<div class="divBgColor">
	<table>
		<tr>
			<td width="150">董事,高管信息</td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteManageRelation(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table class="col3">
	<tr>
		<td class="label">姓名：</td>
		<td class="content"><input
			id="enterpriseSeniors[${count}].relationobjName" loxiaType="input"
			name="enterpriseSeniors[${count}].relationobjName" trim="true"
			mandatory="true" /></td>
		<td class="label">职务：</td>
		<td class="content"><input
			id="enterpriseSeniors[${count}].position" loxiaType="input"
			name="enterpriseSeniors[${count}].position" trim="true" /></td>
	</tr>
	<tr>
		<td class="label">年龄：</td>
		<td class="content"><input id="enterpriseSeniors[${count}].age"
			loxiaType="number" name="enterpriseSeniors[${count}].age" trim="true" /></td>
		</td>
		<td class="label">学历：</td>
		<td class="content"><bizoption:bizoption biztypekey="1008"
				id="enterpriseSeniors[${count}].educationLevel"
				name="enterpriseSeniors[${count}].educationLevel" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
	</tr>
	<tr>
		<td class="label">职称：</td>
		<td class="content"><input
			id="enterpriseSeniors[${count}].jobTitle" loxiaType="input"
			name="enterpriseSeniors[${count}].jobTitle" trim="true" /></td>
		<td class="label">个人持股比例：</td>
		<td class="content"><input
			id="enterpriseSeniors[${count}].shareStock" loxiaType="number"
			name="enterpriseSeniors[${count}].shareStock" trim="true" />%</td>
		</td>
	</tr>
	<tr>
		<!-- 证件类型  personBasic.cardType-->
		<td class="label">证件类型：</td>
		<td class="content"><bizoption:bizoption biztypekey="1007"
				id="enterpriseSeniors[${count}].cardType"
				name="enterpriseSeniors[${count}].cardType" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>

		<!-- 证件号码  personBasic.cardNo-->
		<td class="label">证件号码：</td>
		<td class="content"><input
			id="enterpriseSeniors[${count}].cardNo"
			name="enterpriseSeniors[${count}].cardNo" loxiaType="input"
			checkmaster="validateIdentify" trim="true" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
	</tr>
</table>