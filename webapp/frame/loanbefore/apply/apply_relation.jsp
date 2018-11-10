<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 申请贷款客户信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/apply/apply_relation.js'/>"></script>

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
	<input type="hidden" id="flag" value="${flag }" />
	<!-- 关系人不为空 -->
	<form id="personRelationForm">
		<input type="hidden" name="personBasic.cardType" value="${cardType}" />
		<input type="hidden" name="personBasic.cardNo" value="${cardNo}" />
		<c:forEach items="${relationList}" var="personRelation"
			varStatus="loop">
			<div id="applyRelation${loop.index}">
				<br /> 
				<div class="divBgColor">
					<table>
						<tr>
							<td width="150"><fmt:message key="label.apply.relation"
									bundle="${lang}" /></td>
							<td width="80%" align="right"><input type="button"
								onclick="deleteRelation(${loop.index})"
								style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;width:23px;"
								title="删除" /></td>
						</tr>
					</table>
				</div>
				<table class="col3">
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.relationType" bundle="${lang}" /></td>
						<td class="content"><bizselect:bizselect biztypekey="1020"
								id="relationType" startSort="12" endSort="16"
								name="resonRelations[${loop.index}].relationType"
								selected="${personRelation.relationType}"></bizselect:bizselect><label
							class="del_mandatory">&nbsp;&nbsp;</label></td>
						<td class="label"><fmt:message
								key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
						<td class="content"><input id="relationobjName"
							loxiaType="input" trim="true" 
							name="resonRelations[${loop.index}].relationobjName"
							value="${personRelation.relationobjName}" /></td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.cardCode" bundle="${lang}" /></td>
						<td class="content"><input id="cardCode" 
							checkmaster="validateIdentify" loxiaType="input"
							name="resonRelations[${loop.index}].cardCode"
							value="${personRelation.cardCode}" /><label
							class="del_mandatory">&nbsp;&nbsp;</label></td>
						<td class="label"><fmt:message
								key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
						<td class="content"><input id="mobilePhone" loxiaType="input"
							trim="true" 
							name="resonRelations[${loop.index}].mobilePhone"
							checkmaster="validatemobile"
							value="${personRelation.mobilePhone}" /><label
							class="del_mandatory">&nbsp;&nbsp;</label></td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.workUnit" bundle="${lang}" /></td>
						<td class="content"><input id="workUnit" loxiaType="input"
							name="resonRelations[${loop.index}].workUnit"
							value="${personRelation.workUnit}" /></td>
						<td class="label">单位电话：</td>
						<td class="content"><input id="telephone" loxiaType="input"
							name="resonRelations[${loop.index}].address.telephone"
							value="${personRelation.telephone3}" /></td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.position" bundle="${lang}" /></td>
						<td class="content"><input id="position" loxiaType="input"
							name="resonRelations[${loop.index}].position"
							value="${personRelation.position}" /></td>
						<td class="label">工资收入：</td>
						<td align="left"><input id="incomeWorkunit" loxiaType="input"
							name="resonRelations[${loop.index}].incomeWorkunit"
							value="${personRelation.incomeWorkunit}" /></td>
					</tr>
					<tr>
						<td class="label">单位地址：</td>
						<td colspan="3">
							<table class="col3">
								<tr>
									<td class="content"><linkage:select type="province"
											name="resonRelations[${loop.index}].address.province"
											pid="pc${loop.index}" cid="cc${loop.index}"
											did="dc${loop.index}"
											seledProvince="${personRelation.province3}" /></td>
									<td class="content"><linkage:select type="city"
											name="resonRelations[${loop.index}].address.city"
											cid="cc${loop.index}" did="dc${loop.index}"
											seledCity="${personRelation.city3}" /></td>
									<td class="content"><linkage:select type="district"
											name="resonRelations[${loop.index}].address.district"
											did="dc${loop.index}"
											seledDistrict="${personRelation.district3}" /></td>
									<td class="content"><input id="town" loxiaType="input"
										name="resonRelations[${loop.index}].address.detail"
										value="${personRelation.detail3}" /></td>
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
											name="resonRelations[${loop.index}].address2.province"
											pid="pa${loop.index}" cid="ca${loop.index}"
											did="da${loop.index}"
											seledProvince="${personRelation.province2}" /></td>
									<td class="content"><linkage:select type="city"
											name="resonRelations[${loop.index}].address2.city"
											cid="ca${loop.index}" did="da${loop.index}"
											seledCity="${personRelation.city2}" /></td>
									<td class="content"><linkage:select type="district"
											name="resonRelations[${loop.index}].address2.district"
											did="da${loop.index}"
											seledDistrict="${personRelation.district2}" /></td>
									<td class="content"><input loxiaType="input"
										name="resonRelations[${loop.index}].address2.detail"
										value="${personRelation.detail2}" /></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="label"><fmt:message
								key="label.applyDetail.address1" bundle="${lang}" /></td>
						<td colspan="3" >
							<table class="col3">
								<tr>
									<td class="content"><linkage:select type="province"
											name="resonRelations[${loop.index}].address3.province"
											pid="pb${loop.index}" cid="cb${loop.index}"
											did="db${loop.index}"
											seledProvince="${personRelation.province1}" /></td>
									<td class="content"><linkage:select type="city"
											name="resonRelations[${loop.index}].address3.city"
											cid="cb${loop.index}" did="db${loop.index}"
											seledCity="${personRelation.city1}" /></td>
									<td class="content"><linkage:select type="district"
											name="resonRelations[${loop.index}].address3.district"
											did="db${loop.index}"
											seledDistrict="${personRelation.district1}" /></td>
									<td class="content"><input loxiaType="input"
										name="resonRelations[${loop.index}].address3.detail"
										value="${personRelation.detail1}" /></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td class="label">户籍电话：</td>
						<td class="content"><input id="address3.telephone"
							loxiaType="input"
							name="resonRelations[${loop.index}].address3.telephone"
							value="${personRelation.telephone1}" /></td>
						<td class="label"><fmt:message key="label.applyDetail.email"
								bundle="${lang}" /></td>
						<td class="content"><input
							id="resonRelations[${count}].email" loxiaType="input"
							name="resonRelations[${loop.index}].email"
							value="${personRelation.email}" /></td>
					</tr>
					<tr>
						<td class="label"><fmt:message key="label.applyDetail.im"
								bundle="${lang}" /></td>
						<td class="content"><input id="resonRelations[${count}].im"
							loxiaType="input" name="resonRelations[${loop.index}].im"
							value="${personRelation.im}" /></td>
					</tr>
				</table>
			</div>
		</c:forEach>

		<div id="formRelation"></div>
		<input type="hidden" id="clientId" value="${clientId }"/>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addPersonRelation">添加关系人</button>
		</div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitPersonRelation">保存</button>
		</div>
	</form>

</body>