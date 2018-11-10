<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>

<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/extension/business_extension_list.js'/>"></script>

<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>

<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="showListDiv">

		<div class="divBgColor">
			<fmt:message key="title.extend.apply.extension.list" bundle="${lang}" />
		</div>
		<form>
			<input type="hidden" id="show_projectId" value="${projectId }" />
			<div>
				<table cellpadding="0" cellspacing="0" width="100%" class="textalignCenter tabcustom">
				<tr class="tabcustomTr">
					<th><fmt:message key="label.extend.extension.detail.lendCode"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.extend.extension.detail.contractNo" bundle="${lang}" /></th>
					<th><fmt:message key="label.extend.extension.detail.periods"
							bundle="${lang}" /></th>
					<th><fmt:message
							key="label.extend.extension.detail.oldPeriods" bundle="${lang}" /></th>
					<th><fmt:message key="label.extend.extension.detail.status"
							bundle="${lang}" /></th>
					<th  class="tabBorderRight"><fmt:message key="label.assessCar.edit.collateral.operate"
							bundle="${lang}" /></th>
					</tr>
					<tbody id="detailBody">
						<c:forEach items="${eplist}" var="vo" varStatus="loop">
							<tr>

								<input type="hidden" id="hiddenExtId${loop.index }"
									value="${vo.extendId }" />

								<td id="lendCodeTd${loop.index }"><input
									type="hidden" id="hiddenLendCode${loop.index }"
									value="${vo.lendId }" /></td>
								<td>${vo.contractNo }</td>
								<td>${vo.periods }</td>
								<td>${vo.loanPeriod }</td>
								<td>${vo.extendStatusStr }</td>
								<td class="tabBorderRight"><label class="fileList"
									onclick="showListDetail(${loop.index})"> <fmt:message
											key="label.assessCar.edit.collateral.detail" bundle="${lang}" />
								</label></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</form>
	</div>
	<div id="showDetailDiv"></div>
</body>

</html>
