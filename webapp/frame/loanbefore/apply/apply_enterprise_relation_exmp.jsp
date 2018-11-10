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
	<table class="col3">
		<tr>
			<td width="150">股东信息</td>
			<td width="80%" align="right"><input type="button"
				onclick="deleteRelation(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /></td>
		</tr>
	</table>
</div>
<table class="col3">
	<tr>
		<td class="label">股东名称：</td>
		<td class="content"><input
			id="enterpriseShareholders[${count}].relationobjName"
			loxiaType="input"
			name="enterpriseShareholders[${count}].relationobjName" trim="true"
			mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
		<td class="label">出资额：</td>
		<td class="content"><input
			id="enterpriseShareholders[${count}].investmentAmount"
			loxiaType="number"
			name="enterpriseShareholders[${count}].investmentAmount" trim="true" /></td>
	</tr>
	<tr>
		<td class="label">占比：</td>
		<td class="content"><input
			id="enterpriseShareholders[${count}].shareStock" loxiaType="number"
			decimal="2" name="enterpriseShareholders[${count}].shareStock"
			trim="true" />%</td>
		<td class="label">出资方式：</td>
		<td class="content"><input
			id="enterpriseShareholders[${count}].investmentWay" loxiaType="input"
			name="enterpriseShareholders[${count}].investmentWay" trim="true" /></td>
	</tr>
	<tr>
		<!-- 证件类型  personBasic.cardType-->
		<td class="label">证件类型：</td>
		<td class="content" width="150"><bizoption:bizoption
				biztypekey="1007" id="enterpriseShareholders[${count}].cardTypeV"
				name="enterpriseShareholders[${count}].cardTypeV" mandatory="true" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
		<!-- 证件号码  personBasic.cardNo-->
		<td class="label">证件号码：</td>
		<td class="content" width="150"><input
			id="enterpriseShareholders[${count}].cardNoV"
			checkmaster="validateIdentify"
			name="enterpriseShareholders[${count}].cardNoV" loxiaType="input"
			trim="true" mandatory="true" checkmaster="validateIdentify" /><label
			class="del_mandatory">&nbsp;&nbsp;*</label></td>
	</tr>
	<tr>
		<td class="label">联系地址：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="enterpriseShareholders[${count}].address.province"
							pid="pc${count}" cid="cc${count}" did="dc${count}"
							mandatory="true" /></td>
					<td class="content"><linkage:select type="city"
							name="enterpriseShareholders[${count}].address.city"
							cid="cc${count}" did="dc${count}" mandatory="true" /></td>
					<td class="content"><linkage:select type="district"
							name="enterpriseShareholders[${count}].address.district"
							did="dc${count}" mandatory="true" /></td>
					<td class="content"><input
						id="enterpriseShareholders[${count}].address.town"
						loxiaType="input" mandatory="true"
						name="enterpriseShareholders[${count}].address.town" trim="true" /><label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="label">电话：</td>
		<td class="content"><input
			id="enterpriseShareholders[${count}].telephone" loxiaType="input"
			name="enterpriseShareholders[${count}].telephone" trim="true" /></td>
		</td>
		<td colspan="2"></td>
	</tr>
</table>