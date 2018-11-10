<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/commonperson/common_person_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="editDiv">
		<div class="divBgColor">共同借款人信息</div>

		<input type="hidden" id="per_projectId" name="projectId"
			value="${projectId}" /> <input type="hidden" name="commonId"
			value="${per.commonId }" />

		<table class="textalignCenter tabcustomPeo" cellpadding="0"
					cellspacing="0">
			<tr>
				<!-- 姓名 -->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.person_name" bundle="${lang}" /></td>
				<td class="content">${per.commonName }</td>
				<!-- 工作单位-->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.workUnit" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${per.workUnit }</td>
			</tr>
			<tr>
				<!-- 证件类型-->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.cardType" bundle="${lang}" /></td>
				<td class="content"><bizoptionname:showname biztypekey="1007"
						name="cardType" value="${per.cardType }" /></td>
				<!-- 证件号码 -->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.cardNo" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${per.cardCode }</td>

			</tr>
			<tr>
				<!-- 手机-->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.mobilePhone" bundle="${lang}" /></td>
				<td class="content">${per.mobilePhone }</td>
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.position" bundle="${lang}" /></td>
				<td class="content tabBorderRight">${per.position }</td>
			</tr>

			<!-- 电子邮件 -->
			<tr>
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.email" bundle="${lang}" /></td>
				<td class="content">${per.email }</td>
				<!-- 即时通讯方式 -->
				<td  class="label BgColor"><fmt:message key="label.assess.guarantee.im"
						bundle="${lang}" /></td>
				<td class="content tabBorderRight">${per.im }</td>
			</tr>

			<tr>
				<!-- 工资收入-->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.income" bundle="${lang}" /></td>
				<td class="content tabBorderRight" colspan="3">${per.incomeWorkunit }</td>
			</tr>

			<tr>
				<!-- 单位地址 -->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.comAddress" bundle="${lang}" /></td>
				<td colspan="3" class="content tabBorderRight">
					${per.address3.pname}${per.address3.cname}${per.address3.dname}${per.address3.detail}
				</td>
			</tr>
			<tr>
				<!-- 户籍地址-->
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.adress1" bundle="${lang}" /></td>
				<td colspan="3" class="content tabBorderRight">
					${per.address1.pname}${per.address1.cname}${per.address1.dname}${per.address1.detail}
				</td>
			</tr>
			<!-- 居住地址-->
			<tr>
				<td  class="label BgColor"><fmt:message
						key="label.assess.guarantee.adress2" bundle="${lang}" /></td>
				<td colspan="3" class="content tabBorderRight">
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
