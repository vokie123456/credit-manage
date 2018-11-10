<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.collection.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/collection/collection_mission_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<form id="collectionQueryForm">
		<table>
			<tr>
				<!-- 项目编号-->
				<td class="label"><fmt:message
						key="label.apply.clientproject.project_code" bundle="${lang}" /></td>
				<td width="150"><input id="projectCode" name="projectCode"
					loxiaType="input" trim="true" /></td>
					<!-- 客户姓名 -->
				<td class="label"><fmt:message
						key="label.apply.clientproject.client_name" bundle="${lang}" /></td>
				<td width="150"><input id="clientName" name="clientName"
					loxiaType="input" trim="true" /></td>
					<!-- 项目状态-->
				<td class="label"><fmt:message
						key="label.collection.projectStatus" bundle="${lang}" />
					<td width="150"><bizoption:bizoption biztypekey="1101"
							id="projectStatus" name="projectStatus" isChoose="true" /></td>
			</tr>
			<!-- 逾期期数
			<tr>
				
				<td class="label"><fmt:message key="label.collection.overDues"
						bundle="${lang}" /></td>
				<td width="150"><input id="overDuesBegin" name="overDuesBegin"
					loxiaType="input" trim="true" /></td>
				<td><fmt:message key="label.credit.list.query.to"
						bundle="${lang}" /></td>
				<td width="150"><input id="overDuesEnd" name="overDuesEnd"
					loxiaType="input" decimal="2" /></td>
			</tr>
			-->
			<tr>
				 <!-- 是否正在催收-->
				<td class="label"><fmt:message
						key="label.collection.isCollectioning" bundle="${lang}" /></td>
				<td width="150"><bizoption:bizoption biztypekey="1040"
						id="isCollection" name="isCollection" isChoose="true" /></td>
				<!-- 当前催收人员-->
				<td class="label"><fmt:message key="label.collection.currentCollector" bundle="${lang}" /></td>
				<td width="150">
				<user:user bizHall="${bizHall}" roleCode="0111" userId="${userId }" compCode="${compCode }"
				 id="currentCollector" name="collector" isChoose="true" /></td>
				 
			</tr>
			
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<%--<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.collection.but.check" bundle="${lang}"/>"
				id="detail">
				<fmt:message key="label.collection.but.check" bundle="${lang}" />
			</button> --%>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.collection.but.single" bundle="${lang}"/>"
				id="singleDelivery">
				<fmt:message key="label.collection.but.single" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.collection.but.batch" bundle="${lang}"/>"
				id="batchDelivery">
				<fmt:message key="label.collection.but.batch" bundle="${lang}" />
			</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-collectionlist"></table>
	<div id="pager"></div>
	<!-- 对话框 -->
	<div class="hidden" id="dialogDiv">
		<table width="100%" border="1" cellpadding="0" cellspacing="0">
			<tr>
				<!-- 催收人-->
				<td class="label" style="text-align: center;"><fmt:message
						key="label.collection.collector" bundle="${lang}" /></td>
				<td width="150">
				<user:user bizHall="${bizHall}" roleCode="0111" userId="${userId }" compCode="${compCode }" id="collector" name="collector"/></td>
			</tr>
			<!-- 催收方式
			<td class="label" style="text-align: center;"><fmt:message
					key="label.collection.collectionType" bundle="${lang}" /></td>
			<td><checkBox:checkBox biztypekey="1041" id="collectionType"
					name="collectionType" checked="" /></td>
			</tr>
			-->
		</table>
		<br />
		<div align="center">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.collection.confirm" bundle="${lang}"/>"
				id="diaConfirm">
				<fmt:message key="label.collection.confirm" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="label.collection.close" bundle="${lang}"/>"
				id="diaClose">
				<fmt:message key="label.collection.close" bundle="${lang}" />
			</button>
		</div>
	</div>

</body>
</html>
