<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/business_extension_detail.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}

.title {
	background-color: #9BB3CD;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<form>
		<div class="divBgColor">
			<fmt:message key="label.debt.info.title" bundle="${lang}" />
		</div>

		<div>
			<table width="100%" border="1" append="1" bordercolor="#EFEFEF">
				<tr>
					<!-- 申请理由 -->
					<td class="label"><fmt:message key="label.extend.check.reason"
							bundle="${lang}" /></td>
					<td width="150" colspan="3">${ep.extendExcuse }</td>
					<!-- 贷款期数-->
					<td class="label">展期期数：</td>
					<td width="150">${ep.loanPeriod}</td>

				</tr>

				<tr>
					<!-- 审核意见 -->
					<td class="label"><fmt:message
							key="label.extend.check.approveComments" bundle="${lang}" /></td>
					<td width="150" colspan="5">${ep.approveComments }</td>
				</tr>
			</table>
		</div>

		<div>
			<form>
				<!-- 产品费用 -->
				<div class="title" style="margin-top: 1em;">
					<fmt:message key="label.loaning.title2" bundle="${lang}" />
				</div>

				<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
					<thead>
						<tr>
							<th><fmt:message key="label.loaning.costTitle"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costMode"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costRate"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costFix"
									bundle="${lang}" /></th>
							<th><fmt:message key="label.loaning.costPeriod"
									bundle="${lang}" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pcost}" var="dis" varStatus="loop">
							<tr <c:if test="${dis.ifShow==100112}">style="display:none;"</c:if> >
								<td><bizoptionname:showname biztypekey="1090"
										value="${dis.costCode }" /></td>

								<td><bizoptionname:showname biztypekey="1092"
										value="${dis.costMode }" /></td>
								<td>${dis.costRate }</td>
								<td>${dis.costFix }</td>
								<td><bizoptionname:showname biztypekey="1093"
										value="${dis.costPeriod }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</div>
		<br />
		<div class="divBgColor">展期签约</div>
		<div>
			<table width="100%" append="1" bordercolor="#EFEFEF">
				<tr>
					<td class="label title">展期合同号</td>
					<td width="150">${ep.contractNo }</td>
					<td class="label title">签约日期</td>
					<td width="150"><fmt:formatDate value="${ep.signDate }" pattern="yyyy-MM-dd"/></td>
					<td></td>
					<td width="150"></td>
				</tr>
			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button id="operateBack" type="button" loxiaType="button"
				class="confirm">
				<fmt:message key="button.toback" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>
</html>












