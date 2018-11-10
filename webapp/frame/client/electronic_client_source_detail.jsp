<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/electronic_client_source_detail.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.del_all {
	text-align: right;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li
				class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a
				href="#div-1">进件详情</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">相关认证</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			<form id="formElectronicDetail" method="post">

				<div class="divBgColor">电子进件信息</div>
				<input type="hidden" name="id" id="eleId" value="${vo.id }" />
				<table>
					<tr>
						<td class="label"><fmt:message key="label.electronic.date"
								bundle="${lang}" /></td>
						<td><input loxiaType="date" name="requestTime"
							value="${vo.requestTime }" /></td>

						<td class="label"><fmt:message key="label.electronic.source"
								bundle="${lang}" /></td>
						<td width="150"><bizoption:bizoption biztypekey="1136"
								name="intoSource" isChoose="true" selected="${vo.intoSource }" /></td>
					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.electronic.clientName" bundle="${lang}" /></td>
						<td><input loxiaType="input" name="clientName"
							value="${vo.clientName }" /></td>
						<td class="label"><fmt:message
								key="label.electronic.cardType" bundle="${lang}" /></td>
						<td><select name="cardType" id="cardType"
							class="ui-loxia-default ui-corner-all" /></td>
						<input type="hidden" value="${vo.cardType }" id="hiddenCardType" />
					</tr>

					<tr>
						<td class="label"><fmt:message key="label.electronic.cardNo"
								bundle="${lang}" /></td>
						<td><input loxiaType="input" name="cardNo"
							value="${vo.cardNo }" /></td>
						<td class="label"><fmt:message
								key="label.electronic.mobilePhone" bundle="${lang}" /></td>
						<td><input loxiaType="input" name="mobilePhone"
							value="${vo.mobilePhone }" /></td>
					</tr>

					<tr>
						<td class="label"><fmt:message
								key="label.electronic.hopeMoney" bundle="${lang}" /></td>
						<td><input loxiaType="input" name="hopeLoanMoney"
							value="${vo.hopeLoanMoney }" /></td>
						<td class="label"><fmt:message
								key="label.electronic.loanPeriod" bundle="${lang}" /></td>
						<td><input loxiaType="input" name="hopeLoanPeriod"
							value="${vo.hopeLoanPeriod }" /></td>

					</tr>

					<tr>
						<td class="label"><fmt:message key="label.electronic.email"
								bundle="${lang}" /></td>
						<td><input loxiaType="input" name="email"
							value="${vo.email }" /></td>
						<input type="hidden" name="intoStatus" value="${vo.intoStatus }" />
						<!-- 
						<td class="label"><fmt:message key="label.electronic.status"
								bundle="${lang}" /></td>
						<td>
						<bizoption:bizoption biztypekey="1135"
								name="intoStatus" isChoose="true" selected="${vo.intoStatus }"/>
						</td>
						-->
					</tr>

				</table>

				<div class="buttonlist buttonDivWidth">
					<button type="submit" loxiaType="button" class="confirm"
						id="btnSave">保存</button>

					<button type="submit" loxiaType="button" class="confirm"
						id="btnSubmit">去填申请表</button>
				</div>
			</form>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-2"></div>
	</div>

</body>
</html>
