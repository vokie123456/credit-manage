<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 申请贷款高管或董事信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail" bundle="${lang}" /></title>

</head>
<body contextpath="<%=request.getContextPath()%>">
	<input type="hidden" name="resultMageSize" id=resultMageSize value="${resultMageSize}"/>		
	<!-- 关系人不为空 -->
	<c:forEach items="${relaMageList}" var="entMageRelation" varStatus="loop">
	<br />
	<div id="applyManageRelation${loop.index}">
	<div class="divBgColor">
	<table>
		<tr>
			<td width="150">董事,高管信息</td>
			<td width="80%" align="right"><input type="button" onclick="deleteManageRelation(${loop.index})" style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"  title="删除"/></td>
		</tr>
	</table>
	</div>
		  <table>    
		        <tr>
					<td class="label">姓名</td>
					<td align="left" ><input id="enterpriseSeniors[${loop.index}].relationobjName" loxiaType="input" name="enterpriseSeniors[${loop.index}].relationobjName" trim="true" mandatory="true" value="${entMageRelation.relationobjName}"/></td>
					<td class="label">职务</td>
					<td align="left" ><input id="enterpriseSeniors[${loop.index}].position" loxiaType="input" name="enterpriseSeniors[${loop.index}].position"  trim="true"  value="${entMageRelation.position}"/></td>
					<td class="label" >年龄</td>
					<td class="label"><input id="enterpriseSeniors[${loop.index}].age" loxiaType="number" name="enterpriseSeniors[${loop.index}].age"  trim="true"  value="${entMageRelation.age}"/></td>
                </tr>
		        <tr>
					<td class="label">学历</td>
					<td align="left"  width="180"><radio:radio biztypekey="1008"  id="enterpriseSeniors[${loop.index}].educationLevel"  name="enterpriseSeniors[${loop.index}].educationLevel"  checked="${entMageRelation.educationLevel}"></radio:radio></td>
					<td class="label">职称</td>
					<td align="left" ><input id="enterpriseSeniors[${loop.index}].jobTitle" loxiaType="input" name="enterpriseSeniors[${loop.index}].jobTitle"  trim="true"  value="${entMageRelation.jobTitle}"/></td>
					<td class="label" >个人持股比例</td>
					<td class="label"><input id="enterpriseSeniors[${loop.index}].shareStock" loxiaType="number" name="enterpriseSeniors[${loop.index}].shareStock"  trim="true"  value="${entMageRelation.shareStock}"/>%</td>
                </tr>
		</table>
		</div>
	</c:forEach>
</body>