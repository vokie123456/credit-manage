<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/person_relation_entryupdate.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="editDiv">
		<div class="divBgColor">关系人信息</div>
    <form id="relationPersonEditForm" method="post">
	
	<input type="hidden" id="clientId" value="${clientId}">
    <input type="hidden" id="relationId" value="${pr.relationId}">
    
    <table class="col3">
	 <tr>
		<td class="label"><fmt:message
				key="label.applyDetail.relationType" bundle="${lang}" /></td>
		<td class="content"><bizselect:bizselect biztypekey="1020"
				startSort="12" endSort="16" id="relationType"
				name="resonRelation.relationType" 
				selected="${pr.relationType}"
				/> <label
			class="del_mandatory">&nbsp;&nbsp;</label></td>
	</tr>
	<tr>
		<td class="label"><fmt:message
				key="label.applyDetail.relationobjName" bundle="${lang}" /></td>
		<td class="content"><input id="relationobjName" loxiaType="input"
			trim="true" name="resonRelation.relationobjName" 
			value="${pr.relationobjName}"
			/></td>
		<td class="label"><fmt:message key="label.applyDetail.workUnit"
				bundle="${lang}" /></td>
		<td class="content"><input id="workUnit" loxiaType="input"
			name="resonRelation.workUnit" value="${pr.workUnit}"/></td>
	</tr>
	<tr>
		<td class="label">证件类型：</td>
		<td class="content"><bizoption:bizoption biztypekey="1007"
				id="cardType" name="resonRelation.cardType"
				isChoose="false" checkmaster="validateCardType" 
				selected="${pr.cardType}"
				/></td>
		<td class="label"><fmt:message key="label.applyDetail.cardCode"
				bundle="${lang}" /></td>
		<td class="content"><input id="cardNo" loxiaType="input"
			name="resonRelation.cardCode" value="${pr.cardCode}"
			checkmaster="validateIdentify" /></td>
	</tr>
	<tr>
		<td class="label"><fmt:message
				key="label.applyDetail.mobilePhone" bundle="${lang}" /></td>
		<td class="content"><input id="resonRelation.mobilePhone" loxiaType="input"
			trim="true" checkmaster="validatemobile" value="${pr.mobilePhone}"
			name="resonRelation.mobilePhone" /><label
			class="del_mandatory">&nbsp;&nbsp;</label></td>
		<td class="label"><fmt:message key="label.applyDetail.position"
				bundle="${lang}" /></td>
		<td class="content"><input id="position" loxiaType="input"
			name="resonRelation.position"  value="${pr.position}"/></td>
	</tr>
	<tr>
		<td class="label"><fmt:message key="label.applyDetail.email"
				bundle="${lang}" /></td>
		<td class="content"><input id="relation.email"
			loxiaType="input" name="resonRelation.email" value="${pr.email}"
			checkmaster="validateEmail" /></td>
		<td class="label"><fmt:message key="label.applyDetail.im"
				bundle="${lang}" /></td>
		<td class="content"><input id="relation.im"
			loxiaType="input" name="resonRelation.im" value="${pr.im}"/></td>
	</tr>
	<tr>
		<td class="label">户籍电话：</td>
		<td class="content"><input id="address3.telephone"
			loxiaType="input" name="address3.telephone"  value="${pr.telephone1}"/></td>
		<td class="label">单位电话：</td>
		<td class="content"><input id="telephone" loxiaType="input"
			name="address.telephone" value="${pr.telephone3}"/></td>
	</tr>
	<tr>
		<td class="label">工资收入：</td>
		<td class="content"><input id="incomeWorkunit" loxiaType="number"
			name="resonRelation.incomeWorkunit" value="${pr.incomeWorkunit}" decimal="2" /></td>
	</tr>
	<tr>
		<td class="label">单位地址：</td>
		<td colspan="3">
			<table class="col3">
				<tr>
					<td class="content"><linkage:select type="province"
							name="address.province" pid="pc"
							cid="cc" did="dc" 
							seledProvince="${pr.province3}"
							/></td>
					<td class="content"><linkage:select type="city"
							name="address.city" cid="cc"
							did="dc"
							seledCity="${pr.city3}" /></td>
					<td class="content"><linkage:select type="district"
							name="address.district" did="dc" 
							seledDistrict="${pr.district3}"/></td>
					<td class="content"><input id="town" loxiaType="input"
						name="address.detail"
						value="${pr.detail3}"
						/></td>
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
							name="address2.province"
							pid="pa2" cid="ca2" did="da2" 
							seledProvince="${pr.province2}" /></td>
					<td class="content"><linkage:select type="city"
							name="address2.city" cid="ca2"
							did="da2"
							seledCity="${pr.city2}" /></td>
					<td class="content"><linkage:select type="district"
							name="address2.district"
							did="da2" 
							seledDistrict="${pr.district2}"
							/></td>
					<td class="content"><input id="town" loxiaType="input"
						name="address2.detail" 
						value="${pr.detail2}"/></td>
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
							name="address3.province"
							pid="pb3" cid="cb3" did="db3" 
							seledProvince="${pr.province1}" /></td>
					<td class="content"><linkage:select type="city"
							name="address3.city" cid="cb3"
							did="db3" 
							seledCity="${pr.city1}" /></td>
					<td class="content"><linkage:select type="district"
							name="address3.district"
							did="db3" 
							seledDistrict="${pr.district1}"
							/></td>
					<td class="content"><input id="town" loxiaType="input"
						name="address3.detail" value="${pr.detail1}"/></td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<div class="buttonlist buttonDivWidth">
				<button id="submitRelationPerson" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
				</button>
				<button id="backOper" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
				</button>
</div>
	</form>
</body>