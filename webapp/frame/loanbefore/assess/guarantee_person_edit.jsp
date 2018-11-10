<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
</head>

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/assess/guarantee_person_edit.js'/>"></script>

<body contextpath="<%=request.getContextPath()%>">
	<form id="guaranteePersonEditForm">

		<input type="hidden" name="projectId" id="per_projectId"
			value="${per.projectId }" /> <input type="hidden" name="personCode"
			value="${per.personCode }" />

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
				<td class="content"><input id="" name="personName"
					loxiaType="input" trim="true" value="${per.personName }" /></td>
				<!-- 证件类型-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1007"
						name="cardType" isChoose="false" selected="${per.cardType }" /></td>
			</tr>
			<tr>
				<!-- 证件号码 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
				<td class="content"><input name="cardNo" loxiaType="input"
					trim="true" value="${per.cardNo }" checkmaster="validateIdentify" /></td>
				<!-- 手机-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
				<td class="content"><input name="mobilePhone"
					value="${per.mobilePhone }" loxiaType="number" trim="true" /></td>
			</tr>
			<tr>
				<!-- 工作单位-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
				<td class="content"><input name="workUint"
					value="${per.workUint }" loxiaType="input" trim="true" /></td>
				<td class="label"><fmt:message
						key="label.assess.guarantee.position" bundle="${lang}" /></td>
				<td class="content"><input name="position"
					value="${per.position }" loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<!-- 工资收入-->
				<td class="label"><fmt:message
						key="label.assess.guarantee.income" bundle="${lang}" /></td>
				<td class="content"><input name="salary" value="${per.salary }"
					loxiaType="input" loxiaType="number" trim="true" /></td>
				<!-- 关系 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.relation" bundle="${lang}" /></td>
				<td class="content"><bizoption:bizoption biztypekey="1020"
						name="relation" isChoose="false" selected="${per.relation }" /></td>
			</tr>
			<tr>
				<!-- 公司地址 -->
				<td class="label"><fmt:message
						key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
				<td colspan="3">
					<table class="col3">
						<tr>
							<td class="content"><linkage:select type="province"
									name="address3.province" pid="p1" cid="c1" did="d1"
									seledProvince="${per.address3.province}" /></td>
							<td class="content"><linkage:select type="city"
									seledCity="${per.address3.city}" name="address3.city" cid="c1"
									did="d1" /></td>
							<td class="content"><linkage:select type="district"
									seledDistrict="${per.address3.district}"
									name="address3.district" did="d1" /></td>
							<td class="content"><input id="town3"
								value="${per.address3.town}" name="address3.town"
								loxiaType="input" trim="true" /></td>
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
							<td class="content"><linkage:select type="province"
									name="address1.province" pid="p2" cid="c2" did="d2"
									seledProvince="${per.address1.province}" /></td>
							<td class="content"><linkage:select type="city"
									seledCity="${per.address1.city}" name="address1.city" cid="c2"
									did="d2" /></td>
							<td class="content"><linkage:select type="district"
									seledDistrict="${per.address1.district}"
									name="address1.district" did="d2" /></td>
							<td class="content"><input id="town1"
								value="${per.address1.town}" name="address1.town"
								loxiaType="input" trim="true" /></td>
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
							<td class="content"><linkage:select type="province"
									name="address2.province" pid="p3" cid="c3" did="d3"
									seledProvince="${per.address2.province}" /></td>
							<td class="content"><linkage:select type="city"
									seledCity="${per.address2.city}" name="address2.city" cid="c3"
									did="d3" /></td>
							<td class="content"><linkage:select type="district"
									seledDistrict="${per.address2.district}"
									name="address2.district" did="d3" /></td>
							<td class="content"><input id="town2"
								value="${per.address2.town}" name="address2.town"
								loxiaType="input" trim="true" /></td>
						</tr>
					</table>
				</td>
			</tr>
			<!-- 电子邮件 -->
			<tr>
				<td class="label"><fmt:message
						key="label.assess.guarantee.email" bundle="${lang}" /></td>
				<td class="content"><input id="" loxiaType="input" name="email"
					trim="true" value="${per.email }" /></td>
				<!-- 即时通讯方式 -->
				<td class="label"><fmt:message key="label.assess.guarantee.im"
						bundle="${lang}" /></td>
				<td class="content"><input id="" loxiaType="input"
					name="communication" trim="true" value="${per.communication }" /></td>
			</tr>
		</table>

		<div class="buttonlist buttonDivWidth">
			<button id="savePerInfo" type="submit" loxiaType="button"
				class="confirm">
				<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
			</button>

			<button id="reback" type="button" loxiaType="button" class="confirm">
				<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>