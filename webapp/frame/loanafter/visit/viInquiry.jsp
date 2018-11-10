<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 回访任务查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/visit/viInquiry.js'/>"></script>
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
	<div id="formdetail">
		<form id="visitListForm" method="post">
			<table>
				<tr>
					<!-- 项目编号-->
					<td class="label"><fmt:message
							key="label.visitinquiry.projectCode" bundle="${lang}" /></td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
					<!-- 项目状态  -->
					<td class="label"><fmt:message
							key="label.visitinquiry.projectStatus" bundle="${lang}" /></td>
					<td width="150"><bizoption:bizoption biztypekey="1101"
							name="projectStatus" isChoose="true" /></td>
					<!--合同编号-->
					<td class="label"><fmt:message
							key="label.visitinquiry.contractID" bundle="${lang}" /></td>
					<td width="150"><input id="contractId" name="contractId"
						loxiaType="input" trim="true" /></td>
				</tr>



				<tr>
					<!-- 客户姓名-->
					<td class="label"><fmt:message
							key="label.visitinquiry.clientName" bundle="${lang}" /></td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
					<!-- 是否正在回访 -->
					<td class="label">检查状态：</td>
					<td width="150"><bizoption:bizoption biztypekey="1039"
							name="visitStatus" isChoose="true" /></td>
					<td class="label">检查人员：</td>
					<td width="150"><user:user bizHall="${bizHalls }"
							roleCode="0110" userId="${userId }" compCode="${compCode }"
							id="broker" name="visitAgent" isChoose="true" /></td>
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
				id="generateAllVisit">
				批量分配检查
			</button>
		</div>
		<!--<div class="label"><s:text name="label.sys.loginlog.result"/></div>
		-->
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-viInquiryList"></table>
		<div id="pager"></div>
		<div id="dialog-chgrole">
			<form id="visitAddForm" method="post">
				<br />
				<div>
					<user:user bizHall="${bizHalls}" roleCode="0110" userId="${userId }"
						compCode="${compCode }" id="viInquiryPerson"
						name="viInquiryPerson" isChoose="true" />
				</div>
				<table id="tbl-userRoleInfoList"></table>
				<div id="user_pager"></div>
			</form>
		</div>
	</div>
</body>
</html>
