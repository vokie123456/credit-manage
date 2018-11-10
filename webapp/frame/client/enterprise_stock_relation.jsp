<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail" bundle="${lang}" /></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultSize" id="resultSize" value="${resultSize}"/>		
	<!-- 关系人不为空 -->
	<c:forEach items="${relationList}" var="entShareRelation" varStatus="loop">
	<div id="applyRelation${loop.index}">
			<br/>
	<div class="divBgColor">
	<table>
		<tr>
			<td width="150">股东信息</td>
			<td width="80%" align="right"><input type="button" onclick="deleteRelation(${loop.index})" style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"  title="删除"/></td>
		</tr>
	</table>
	</div>
		  <table>    
		        <tr>
					<td class="label">股东名称</td>
					<td align="left" ><input id="enterpriseShareholders[${loop.index}].relationobjName" loxiaType="input" name="enterpriseShareholders[${loop.index}].relationobjName" trim="true" mandatory="true"  value="${entShareRelation.relationobjName}" /></td>
					<td class="label">出资额</td>
					<td align="left" ><input id="enterpriseShareholders[${loop.index}].investmentAmount" loxiaType="number" name="enterpriseShareholders[${loop.index}].investmentAmount"  trim="true"  value="${entShareRelation.investmentAmount}" /></td>
					<td class="label" >占比</td>
					<td class="label"><input id="enterpriseShareholders[${loop.index}].shareStock" loxiaType="number" name="enterpriseShareholders[${loop.index}].shareStock"  trim="true"  value="${entShareRelation.shareStock}" />%</td>
                </tr>
                <tr>
                <td class="label">联系地址</td>
				<td align="left" width="100"><linkage:select type="province" name="enterpriseShareholders[${loop.index}].address.province" pid="pc${loop.index}"  cid="cc${loop.index}" did="dc${loop.index}"   mandatory="true"   seledProvince="${entShareRelation.province1}" /></td>
				<td align="left" width="100"><linkage:select type="city" name="enterpriseShareholders[${loop.index}].address.city" cid="cc${loop.index}" did="dc${count}"  mandatory="true"  seledCity="${entShareRelation.city1}" /></td>
				<td align="left" width="100"><linkage:select type="district" name="enterpriseShareholders[${loop.index}].address.district" did="dc${loop.index}"   mandatory="true"  seledDistrict="${entShareRelation.district1}" /></td>
				<td align="left" width="100"><input id="enterpriseShareholders[${loop.index}].address.town" loxiaType="input" name="enterpriseShareholders[${loop.index}].address.town" trim="true"  value="${entShareRelation.town1}" /></td>
				</tr>
		        <tr>
					<td class="label">出资方式</td>
					<td align="left" ><input id="enterpriseShareholders[${loop.index}].investmentWay" loxiaType="input" name="enterpriseShareholders[${loop.index}].investmentWay" trim="true"  value="${entShareRelation.investmentWay}" /></td>
					<td class="label" >电话</td>
					<td class="label"><input id="enterpriseShareholders[${loop.index}].telephone" loxiaType="number" name="enterpriseShareholders[${loop.index}].telephone"  trim="true"  value="${entShareRelation.telephone}" /></td>
					<td ></td>
					<td ></td>
                </tr>
		</table>
		</div>
	</c:forEach>
</body>