<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 关系人模板 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<linkage:define />
</head>
<br />
<br />
<div class="divBgColor">
	<table class="col3">
		<tr>
			<td width="150"><strong>押品所有人</strong></td>
			<td width="80%" align="right">
			<img  src="../images/icon_del.gif" alt="删除"  onclick="deleteRelation(${count})" class="curSor" title="删除"/>
			<%-- <input type="button"
				onclick="deleteRelation(${count})"
				style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
				title="删除" /> --%></td>
		</tr>
	</table>
</div>
<table class="col3">
	<tr>
		<td class="label"><fmt:message
				key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
		<td class="content"><input id="relationobjName" loxiaType="input"
			trim="true" name="resonRelations[${count}].relationobjName" /></td>
		<td class="label"><fmt:message key="label.applyDetail.workUnit"
				bundle="${lang}" /></td>
		<td class="content"><input id="workUnit" loxiaType="input"
			name="resonRelations[${count}].workUnit" /></td>
	</tr>
	<tr>
		<td class="label">证件类型：</td>
		<td class="content"><bizoption:bizoption biztypekey="1007"
				id="cardType" name="resonRelations[${count}].cardType"
				isChoose="false" checkmaster="validateCardType" /></td>
		<td class="label"><fmt:message key="label.applyDetail.cardCode"
				bundle="${lang}" /></td>
		<td class="content"><input id="cardNo" loxiaType="input"
			name="resonRelations[${count}].cardCode"
			checkmaster="validateIdentify" /></td>
	</tr>
	<tr>
		<td class="label"><fmt:message
				key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
		<td class="content"><input id="mobilePhone" loxiaType="number"
			trim="true" name="resonRelations[${count}].mobilePhone"
			checkmaster="validatemobile" /></td>
		<td class="label"><fmt:message key="label.applyDetail.position"
				bundle="${lang}" /></td>
		<td class="content"><input id="position" loxiaType="input"
			name="resonRelations[${count}].position" /></td>
	</tr>
	<tr>
		<td class="label"><fmt:message key="label.applyDetail.email"
				bundle="${lang}" /></td>
		<td class="content"><input id="resonRelations[${count}].email"
			loxiaType="input" name="resonRelations[${count}].email"
			checkmaster="validateEmail" /></td>
		<td class="label"><fmt:message key="label.applyDetail.im"
				bundle="${lang}" /></td>
		<td class="content"><input id="resonRelations[${count}].im"
			loxiaType="input" name="resonRelations[${count}].im" /></td>
	</tr>
	<tr>
		<td class="label">工资收入：</td>
		<td class="content"><input id="incomeWorkunit" loxiaType="number"
			decimal="2" name="resonRelations[${count}].incomeWorkunit" /></td>
	</tr>
	<tr>
		<td class="label">单位地址：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="resonRelations[${count}].address.province" pid="pc${count}"
							cid="cc${count}" did="dc${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="resonRelations[${count}].address.city" cid="cc${count}"
							did="dc${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="resonRelations[${count}].address.district" did="dc${count}" /></td>
					<td class="content"><input id="town" loxiaType="input"
						name="resonRelations[${count}].address.detail" /></td>
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
							name="resonRelations[${count}].address2.province"
							pid="pa${count}" cid="ca${count}" did="da${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="resonRelations[${count}].address2.city" cid="ca${count}"
							did="da${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="resonRelations[${count}].address2.district"
							did="da${count}" /></td>
					<td class="content"><input id="town" loxiaType="input"
						name="resonRelations[${count}].address2.detail" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="label"><fmt:message key="label.applyDetail.address1"
				bundle="${lang}" /></td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="resonRelations[${count}].address3.province"
							pid="pb${count}" cid="cb${count}" did="db${count}" /></td>
					<td class="content"><linkage:select type="city"
							name="resonRelations[${count}].address3.city" cid="cb${count}"
							did="db${count}" /></td>
					<td class="content"><linkage:select type="district"
							name="resonRelations[${count}].address3.district"
							did="db${count}" /></td>
					<td class="content"><input id="town" loxiaType="input"
						name="resonRelations[${count}].address3.detail" /></td>
				</tr>
			</table>
		</td>
	</tr>
</table>