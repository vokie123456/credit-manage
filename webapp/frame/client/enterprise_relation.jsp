<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 申请贷款高管或董事信息 -->
<head>
<%@include file="/common/metaload.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/enterprise_relation.js'/>"></script>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail" bundle="${lang}" /></title>

</head>
<body contextpath="<%=request.getContextPath()%>">

	<form id="relationInfoForm">

		<input type="hidden" name="resultSize" id="resultSize"
			value="${resultSize}" />
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
				<table>
					<tr>
						<td class="label">股东名称</td>
						<td align="left"><input
							id="enterpriseShareholders[${loop.index}].relationobjName"
							loxiaType="input"
							name="enterpriseShareholders[${loop.index}].relationobjName"
							trim="true" mandatory="true"
							value="${entShareRelation.relationobjName}" /></td>
						<td class="label">出资额</td>
						<td align="left"><input
							id="enterpriseShareholders[${loop.index}].investmentAmount"
							loxiaType="number"
							name="enterpriseShareholders[${loop.index}].investmentAmount"
							trim="true" value="${entShareRelation.investmentAmount}" /></td>
						<td class="label">占比</td>
						<td class="label"><input
							id="enterpriseShareholders[${loop.index}].shareStock"
							loxiaType="number"
							name="enterpriseShareholders[${loop.index}].shareStock"
							trim="true" value="${entShareRelation.shareStock}" />%</td>
					</tr>
					<tr>
						<td class="label">联系地址</td>
						<td align="left" width="100"><linkage:select type="province"
								name="enterpriseShareholders[${loop.index}].address.province"
								pid="pc${loop.index}" cid="cc${loop.index}"
								did="dc${loop.index}" mandatory="true"
								seledProvince="${entShareRelation.province1}" /></td>
						<td align="left" width="100"><linkage:select type="city"
								name="enterpriseShareholders[${loop.index}].address.city"
								cid="cc${loop.index}" did="dc${count}" mandatory="true"
								seledCity="${entShareRelation.city1}" /></td>
						<td align="left" width="100"><linkage:select type="district"
								name="enterpriseShareholders[${loop.index}].address.district"
								did="dc${loop.index}" mandatory="true"
								seledDistrict="${entShareRelation.district1}" /></td>
						<td align="left" width="100"><input
							id="enterpriseShareholders[${loop.index}].address.town"
							loxiaType="input"
							name="enterpriseShareholders[${loop.index}].address.town"
							trim="true" value="${entShareRelation.town1}" /></td>
					</tr>
					<tr>
						<td class="label">出资方式</td>
						<td align="left"><input
							id="enterpriseShareholders[${loop.index}].investmentWay"
							loxiaType="input"
							name="enterpriseShareholders[${loop.index}].investmentWay"
							trim="true" value="${entShareRelation.investmentWay}" /></td>
						<td class="label">电话</td>
						<td class="label"><input
							id="enterpriseShareholders[${loop.index}].telephone"
							loxiaType="number"
							name="enterpriseShareholders[${loop.index}].telephone"
							trim="true" value="${entShareRelation.telephone}" /></td>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</c:forEach>
		<div id="formRelation"></div>

		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="addRelation">添加股东</button>
		</div>

		<br /> <input type="hidden" name="resultMageSize" id=resultMageSize
			value="${resultMageSize}" />
		<!-- 关系人不为空 -->
		<c:forEach items="${relaMageList}" var="entMageRelation"
			varStatus="loop">
			<br />
			<div id="applyManageRelation${loop.index}" >
				<div class="divBgColor">
					<table>
						<tr>
							<td>董事,高管信息</td>
							<td width="80%" align="right"><input type="button"
								onclick="deleteManageRelation(${loop.index})"
								style="background:url(<c:url value='/images/icon_del.gif'/>) no-repeat;  color:#f00;"
								title="删除" /></td>
						</tr>
					</table>
					
					
				</div>
				<table>
					<tr>
						<td class="label">姓名</td>
						<td align="left"><input
							id="enterpriseSeniors[${loop.index}].relationobjName"
							loxiaType="input"
							name="enterpriseSeniors[${loop.index}].relationobjName"
							trim="true" mandatory="true"
							value="${entMageRelation.relationobjName}" /></td>
						<td class="label">职务</td>
						<td align="left"><input
							id="enterpriseSeniors[${loop.index}].position" loxiaType="input"
							name="enterpriseSeniors[${loop.index}].position" trim="true"
							value="${entMageRelation.position}" /></td>
						<td class="label">年龄</td>
						<td class="label"><input
							id="enterpriseSeniors[${loop.index}].age" loxiaType="number"
							name="enterpriseSeniors[${loop.index}].age" trim="true"
							value="${entMageRelation.age}" /></td>
					</tr>
					<tr>
						<td class="label">学历</td>
						<td class="width150">
								<bizoption:bizoption
								biztypekey="1008"
								id="enterpriseSeniors[${loop.index}].educationLevel"
								name="enterpriseSeniors[${loop.index}].educationLevel"
								selected="${entMageRelation.educationLevel}" /></td>
						<td class="label">职称</td>
						<td align="left"><input
							id="enterpriseSeniors[${loop.index}].jobTitle" loxiaType="input"
							name="enterpriseSeniors[${loop.index}].jobTitle" trim="true"
							value="${entMageRelation.jobTitle}" /></td>
						<td class="label">个人持股比例</td>
						<td class="label"><input
							id="enterpriseSeniors[${loop.index}].shareStock"
							loxiaType="number"
							name="enterpriseSeniors[${loop.index}].shareStock" trim="true"
							value="${entMageRelation.shareStock}" /></td>
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
	</form>
</body>