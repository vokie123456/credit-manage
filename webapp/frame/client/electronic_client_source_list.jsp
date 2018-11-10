<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/electronic_client_source_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="formElectronicClient" method="POST">
			<table>
				<tr>
					<td class="label"><fmt:message key="label.electronic.date"
							bundle="${lang}" /></td>
					<td><input loxiaType="date" name="startDate" /></td>
					<td class="label">~</td>
					<td><input loxiaType="date" name="endDate" /></td>

				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.electronic.clientName" bundle="${lang}" /></td>
					<td><input loxiaType="input" name="clientName" /></td>
					<td class="label"><fmt:message key="label.electronic.cardType"
							bundle="${lang}" /></td>
					<td><select name="cardType" id="cardType" 
					       class="ui-loxia-default ui-corner-all"/></td>
				</tr>

				<tr>
					<td class="label"><fmt:message key="label.electronic.cardNo"
							bundle="${lang}" /></td>
					<td><input loxiaType="input" name="cardNo" /></td>
					<td class="label"><fmt:message
							key="label.electronic.mobilePhone" bundle="${lang}" /></td>
					<td><input loxiaType="input" name="mobilePhone" /></td>
				</tr>

				<tr>
					<td class="label"><fmt:message
							key="label.electronic.hopeMoney" bundle="${lang}" /></td>
					<td><input loxiaType="input" name="hopeLoanMoney" /></td>
					<td class="label"><fmt:message
							key="label.electronic.loanPeriod" bundle="${lang}" /></td>
					<td><input loxiaType="input" name="hopeLoanPeriod" /></td>

				</tr>

				<tr>
					<td class="label"><fmt:message key="label.electronic.status"
							bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1135"
							name="intoStatus" isChoose="true" /></td>
				</tr>
			</table>
		</form>


		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.electronic.import" bundle="${lang}"/>"
				id="exportClientName">
				<fmt:message key="label.electronic.import" bundle="${lang}" />
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-electronicClient"></table>
		<div id="pager"></div>

	</div>
	
	<div id="dialogDiv" class="hidden">
		<form id="dialogForm"
			action="<%=request.getContextPath()%>//client/clientOtherInfo/exportName.do"
			method="post" enctype="multipart/form-data">
			<table>
				
				<tr>
					<td id="fileTd"><input id="pdFileFileField" type="file"
						name="fileField"></td>
				</tr>
			</table>

			<div class="buttonlist buttonDivWidth">
			    <!--  
				<input type="submit" class="confirm hidden1" id="exportEvent" value="导入"></input>
                -->
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.electronic.import.event" bundle="${lang}"/>"
					id="exportEvent">
					<fmt:message key="label.electronic.import.event" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="label.electronic.import.close" bundle="${lang}"/>"
					id="close">
					<fmt:message key="label.electronic.import.close" bundle="${lang}" />
				</button>
			</div>
		</form>
	</div>
</body>
</html>