<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/collateral/guarantee_person_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="carCollateralDetailDiv">
		<div class="divBgColor">
			<fmt:message key="label.guarantee.title.per" bundle="${lang}" />
		</div>

			<input type="hidden" id="per_projectId" name="perProjectId"
				value="${projectId}" /> <input type="hidden" name="guaranteeId"
				value="${per.guaranteeId }" />
			<table  class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
				<tr>
					<!-- 姓名 -->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
					<td class="content">${per.guaranteeName }</td>
					<!-- 工作单位-->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${per.workUint }</td>
				</tr>
				<tr>
					<!-- 证件类型-->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
					<td class="content"><bizoptionname:showname biztypekey="1007"
							name="cardType" value="${per.cardType }"/></td>
					<!-- 证件号码 -->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${per.cardNo }</td>
					
				</tr>
				<tr>
					<!-- 手机-->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
					<td class="content">${per.mobilePhone }</td>
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.position" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${per.position }</td>
				</tr>
				
				<!-- 电子邮件 -->
				<tr>
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.email" bundle="${lang}" /></td>
					<td class="content">${per.email }</td>
					<!-- 即时通讯方式 -->
					<td class="label BgColor"><fmt:message key="label.assess.guarantee.im"
							bundle="${lang}" /></td>
					<td class="content tabBorderRight">${per.communication }</td>
				</tr>

				<tr>
					<!-- 担保金额-->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.money" bundle="${lang}" /></td>
					<td class="content">${per.guaranteeMoney }</td>
					<!-- 担保比例 -->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.moneyRate" bundle="${lang}" /></td>
					<td class="content tabBorderRight">${per.guaranteeRate }</td>
				</tr>
				
				<tr>
					<!-- 工资收入-->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.income" bundle="${lang}" /></td>
					<td class="content tabBorderRight" colspan="3">${per.salary }</td>
					<!-- 关系 
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.relation" bundle="${lang}" /></td>
					<td class="content"><bizoption:bizoption biztypekey="1020"
							name="relation" isChoose="false" selected="${per.relation }" /></td>
					-->
				</tr>

				<tr>
					<!-- 公司地址 -->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
					<td class="content tabBorderRight" colspan="3">
								${per.address3.pname}${per.address3.cname}${per.address3.dname}${per.address3.detail}
					</td>
				</tr>
				<tr>
					<!-- 户籍地址-->
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.adress1" bundle="${lang}" /></td>
					<td class="content tabBorderRight" colspan="3">
							${per.address1.pname}${per.address1.cname}${per.address1.dname}${per.address1.detail}
					</td>
				</tr>
				<!-- 居住地址-->
				<tr>
					<td class="label BgColor"><fmt:message
							key="label.assess.guarantee.adress2" bundle="${lang}" /></td>
					<td class="content tabBorderRight" colspan="3">
								${per.address2.pname}${per.address2.cname}${per.address2.dname}${per.address2.detail}
					</td>
				</tr>

			</table>

			<div class="tabbuttonlist buttonDivWidth">
				<button id="backOper" type="button" loxiaType="button"
					class="confirm">
					<fmt:message key="label.assessHouse.but.back" bundle="${lang}" />
				</button>
			</div>
	</div>
</body>
