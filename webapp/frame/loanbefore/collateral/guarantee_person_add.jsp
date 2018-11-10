<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/guarantee_person_add.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.guarantee.title.per" bundle="${lang}" />
		</div>

		<form id="guaranteePerEditForm" method="post">
			<input type="hidden" id="per_projectId" name="perProjectId"
				value="${projectId}" /> <input type="hidden" name="guaranteeId"
				value="${per.guaranteeId }" />
			<table class="col3">
				<tr>
					<!-- 姓名 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
					<td class="content"><input id="" name="guaranteeName"
						loxiaType="input" trim="true" value="${per.guaranteeName }" /></td>
					<!-- 工作单位-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
					<td class="content"><input name="workUint"
						value="${per.workUint }" loxiaType="input" trim="true" /></td>
				</tr>
				<tr>
					<!-- 证件类型-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1007" id="cardType"
							name="cardType" isChoose="false" selected="${per.cardType }" checkmaster="validateCardType"/></td>
					<!-- 证件号码 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
					<td class="content"><input name="cardNo" loxiaType="input" id="cardNo"
						trim="true" value="${per.cardNo }" checkmaster="validateIdentify"/></td>
					
				</tr>
				<tr>
					<!-- 手机-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
					<td class="content"><input name="mobilePhone"
						checkmaster="validatemobile" value="${per.mobilePhone }"
						loxiaType="number" trim="true" /></td>
					<td class="label"><fmt:message
							key="label.assess.guarantee.position" bundle="${lang}" /></td>
					<td class="content"><input name="position"
						value="${per.position }" loxiaType="input" trim="true" /></td>
				</tr>
				
				<!-- 电子邮件 -->
				<tr>
					<td class="label"><fmt:message
							key="label.assess.guarantee.email" bundle="${lang}" /></td>
					<td class="content"><input id="" loxiaType="input"
						name="email" trim="true" checkmaster="validateEmail"
						value="${per.email }" /></td>
					<!-- 即时通讯方式 -->
					<td class="label"><fmt:message key="label.assess.guarantee.im"
							bundle="${lang}" /></td>
					<td class="content"><input id="" loxiaType="input"
						name="communication" trim="true" value="${per.communication }" /></td>
				</tr>

				<tr>
					<!-- 担保金额-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.money" bundle="${lang}" /></td>
					<td class="content"><input name="guaranteeMoney" id="guaranteeMoney" onchange="countRate()"
						value="${per.guaranteeMoney }" loxiaType="money"
						trim="true" /></td>
					<!-- 担保比例 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.moneyRate" bundle="${lang}" /></td>
					<td class="content"><input name="guaranteeRate" id="guaranteeRate"
						value="${per.guaranteeRate }" decimal="2" loxiaType="number"
						trim="true" /></td>
				</tr>
				
				<tr>
					<!-- 工资收入-->
					<td class="label"><fmt:message
							key="label.assess.guarantee.income" bundle="${lang}" /></td>
					<td class="content"><input name="salary"
						value="${per.salary }" decimal="2" loxiaType="number" trim="true" /></td>
					<!-- 关系 
					<td class="label"><fmt:message
							key="label.assess.guarantee.relation" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1020"
							name="relation" isChoose="false" selected="${per.relation }" /></td>
					-->
				</tr>

				<tr>
					<!-- 公司地址 -->
					<td class="label"><fmt:message
							key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
					<td colspan="3">
						<table class="col3">
							<tr>
								<td class="content"><linkage:select type="province"
										name="address3.province" pid="pa3" cid="ca3" did="da3"
										seledProvince="${per.address3.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${per.address3.city}" name="address3.city"
										cid="ca3" did="da3" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${per.address3.district}"
										name="address3.district" did="da3" /></td>
								<td class="content"><input id="town3"
									value="${per.address3.detail}" name="address3.detail"
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
										name="address1.province" pid="pb1" cid="cb1" did="db1"
										seledProvince="${per.address1.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${per.address1.city}" name="address1.city"
										cid="cb1" did="db1" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${per.address1.district}"
										name="address1.district" did="db1" /></td>
								<td class="content"><input id="town1"
									value="${per.address1.detail}" name="address1.detail"
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
										name="address2.province" pid="pc2" cid="cc2" did="dc2"
										seledProvince="${per.address2.province}" /></td>
								<td class="content"><linkage:select type="city"
										seledCity="${per.address2.city}" name="address2.city"
										cid="cc2" did="dc2" /></td>
								<td class="content"><linkage:select type="district"
										seledDistrict="${per.address2.district}"
										name="address2.district" did="dc2" /></td>
								<td class="content"><input id="town2"
									value="${per.address2.detail}" name="address2.detail"
									loxiaType="input" trim="true" /></td>
							</tr>
						</table>
					</td>
				</tr>

			</table>

			<div class="buttonlist buttonDivWidth">
				<button id="submitGuaranteePer" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.edit.save" bundle="${lang}" />
				</button>
				<button id="backOper" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
				</button>
			</div>
		</form>
	</div>
</body>
