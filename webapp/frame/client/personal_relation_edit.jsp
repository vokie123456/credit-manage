<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
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
	<!-- 关系人不为空 -->
	<c:forEach items="${relationList}" var="personRelation"
		varStatus="loop">
		<div id="applyRelation${loop.index}">
			<div class="divBgColor">
				<table>
					<tr>
						<td width="150"><fmt:message key="label.apply.relation"
								bundle="${lang}" /></td>
						<td width="80%" align="right"><input type="button"
							onclick="deleteRelation(${loop.index})"
							style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
							title="删除" /></td>
					</tr>
				</table>
			</div>
			<table>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.relationType" bundle="${lang}" /></td>
					<td align="left"><radio:radio biztypekey="1020"
							id="relationType"
							name="resonRelations[${loop.index}].relationType"
							checked="${personRelation.relationType}"></radio:radio><label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
					<td align="left"><input id="relationobjName"
						loxiaType="input" trim="true" mandatory="true"
						name="resonRelations[${loop.index}].relationobjName"
						value="${personRelation.relationobjName}" /></td>
					<td class="label"><fmt:message
							key="label.applyDetail.cardCode" bundle="${lang}" /></td>
					<td align="left" width="150"><input id="cardCode"
						loxiaType="input" name="resonRelations[${loop.index}].cardCode"
						value="${personRelation.cardCode}" /></td>
					<td class="label"><fmt:message
							key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
					<td align="left" width="150"><input id="mobilePhone"
						loxiaType="input" trim="true" mandatory="true"
						name="resonRelations[${loop.index}].mobilePhone"
						value="${personRelation.mobilePhone}" /></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.workUnit" bundle="${lang}" /></td>
					<td align="left" width="150"><input id="workUnit"
						loxiaType="input" name="resonRelations[${loop.index}].workUnit"
						value="${personRelation.workUnit}" /></td>
					<td class="label">单位电话</td>
					<td align="left" width="150"><input id="telephone"
						loxiaType="input"
						name="resonRelations[${loop.index}].address.telephone"
						value="${personRelation.telephone3}" /></td>
					<td class="label"><fmt:message
							key="label.applyDetail.position" bundle="${lang}" /></td>
					<td align="left" width="150"><input id="position"
						loxiaType="input" name="resonRelations[${loop.index}].position"
						value="${personRelation.position}" /></td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="label">单位地址</td>
					<td align="left" width="100"><linkage:select type="province"
							name="resonRelations[${loop.index}].address.province"
							pid="pc${loop.index}" cid="cc${loop.index}" did="dc${loop.index}"
							seledProvince="${personRelation.province3}" /></td>
					<td align="left" width="100"><linkage:select type="city"
							name="resonRelations[${loop.index}].address.city"
							cid="cc${loop.index}" did="dc${loop.index}"
							seledCity="${personRelation.city3}" /></td>
					<td align="left" width="100"><linkage:select type="district"
							name="resonRelations[${loop.index}].address.district"
							did="dc${loop.index}" seledDistrict="${personRelation.district3}" /></td>
					<td align="left" width="100"><input id="town"
						loxiaType="input"
						name="resonRelations[${loop.index}].address.town"
						value="${personRelation.town3}" /></td>
					<td class="label">工资收入</td>
					<td align="left"><input id="incomeWorkunit" loxiaType="input"
						name="resonRelations[${loop.index}].incomeWorkunit"
						value="${personRelation.incomeWorkunit}" /></td>
				</tr>
				<tr>
					<td class="label">居住地址</td>
					<td align="left" width="100"><linkage:select type="province"
							name="resonRelations[${loop.index}].address2.province"
							pid="pa${loop.index}" cid="ca${loop.index}" did="da${loop.index}"
							seledProvince="${personRelation.province2}" /></td>
					<td align="left" width="100"><linkage:select type="city"
							name="resonRelations[${loop.index}].address2.city"
							cid="ca${loop.index}" did="da${loop.index}"
							seledCity="${personRelation.city2}" /></td>
					<td align="left" width="100"><linkage:select type="district"
							name="resonRelations[${loop.index}].address2.district"
							did="da${loop.index}" seledDistrict="${personRelation.district2}" /></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td class="label"><fmt:message
							key="label.applyDetail.address1" bundle="${lang}" /></td>
					<td align="left" width="100"><linkage:select type="province"
							name="resonRelations[${loop.index}].address3.province"
							pid="pb${loop.index}" cid="cb${loop.index}" did="db${loop.index}"
							seledProvince="${personRelation.province1}" /></td>
					<td align="left" width="100"><linkage:select type="city"
							name="resonRelations[${loop.index}].address3.city"
							cid="cb${loop.index}" did="db${loop.index}"
							seledCity="${personRelation.city1}" /></td>
					<td align="left" width="100"><linkage:select type="district"
							name="resonRelations[${loop.index}].address3.district"
							did="db${loop.index}" seledDistrict="${personRelation.district1}" /></td>
					<td class="label">户籍电话：</td>
					<td align="left" width="150"><input id="address3.telephone"
						loxiaType="input"
						name="resonRelations[${loop.index}].address3.telephone"
						value="${personRelation.telephone1}" /></td>
					<td></td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.applyDetail.email"
							bundle="${lang}" /></td>
					<td align="left" width="150"><input
						id="resonRelations[${count}].email" loxiaType="input"
						name="resonRelations[${loop.index}].email"
						value="${personRelation.email}" /></td>
					<td class="label"><fmt:message key="label.applyDetail.im"
							bundle="${lang}" /></td>
					<td align="left" width="150"><input
						id="resonRelations[${count}].im" loxiaType="input"
						name="resonRelations[${loop.index}].im"
						value="${personRelation.im}" /></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<br />
	</c:forEach>
</body>
</html>