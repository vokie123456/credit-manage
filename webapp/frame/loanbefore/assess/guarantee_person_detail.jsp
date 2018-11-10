<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/guarantee_person_detail.js'/>"></script>
	
<body contextpath="<%=request.getContextPath()%>">
	<form>
	   <input type="hidden" id="per_detail_projectId" value="${per.projectId }"/> 
		<div class="divBgColor">
			<table class="col3">
				<tr>
					<td width="150"><fmt:message
							key="label.assess.guarantee.person" bundle="${lang}" /></td>
				</tr>
			</table>
		</div>

		<table class="col3">
			<tr>
				<!-- 姓名 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
				<td class="content">${per.personName }</td>
				<!-- 证件类型-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1007"
						 value="${per.cardType }" /></td>
			</tr>
			<tr>
				<!-- 证件号码 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
				<td class="content">${per.cardNo }</td>
				<!-- 手机-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
				<td class="content">${per.mobilePhone }</td>
			</tr>
			<tr>
				<!-- 工作单位-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
				<td class="content">${per.workUint }</td>
				<td class="label"><fmt:message
						key="label.assess.guarantee.position" bundle="${lang}" /></td>
				<td class="content">${per.position }</td>
			</tr>
			<tr>
				<!-- 工资收入-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.income" bundle="${lang}" /></td>
				<td class="content">${per.salary }</td>
				<!-- 关系 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.relation" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1020"
						value="${per.relation }" /></td>
			</tr>
			<tr>
				<!-- 公司地址 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkageshow:show type="province"
										name="add3" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="add3" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="add3" property="district" /></td>
								<td class="content">${add1.town}</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<!-- 户籍地址-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.adress1" bundle="${lang}" /></td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkageshow:show type="province"
										name="add1" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="add1" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="add1" property="district" /></td>
								<td class="content">${add1.town}</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- 居住地址-->
			<tr>
				<td class="label"><fmt:message
						key="label.assess.guarantee.adress2" bundle="${lang}" /></td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkageshow:show type="province"
										name="add2" property="province" /></td>
								<td class="content"><linkageshow:show type="city"
										name="add2" property="city" /></td>
								<td class="content"><linkageshow:show type="district"
										name="add2" property="district" /></td>
								<td class="content">${add1.town}</td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- 电子邮件 -->
			<tr>
				<td class="label"><fmt:message
						key="label.assess.guarantee.email" bundle="${lang}" /></td>
				<td class="content">${per.email }</td>
				<!-- 即时通讯方式 -->
				<td class="label"><fmt:message key="label.assess.guarantee.im"
						bundle="${lang}" /></td>
				<td class="content">${per.communication }</td>
			</tr>
		</table>
		
		<div class="buttonlist buttonDivWidth">

				<button id="perReback" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
				</button>
		</div>
	</form>
</body>