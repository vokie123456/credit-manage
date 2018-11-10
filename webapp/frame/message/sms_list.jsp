<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 回访任务查询页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>查看短信列表</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/message/smslist.js'/>"></script>
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
		<form id="smsListForm" method="post">
			<table>
				<tr>
					<td class="label">模板标题：</td>
					<td width="150"><input id="actionTitle" name="actionTitle"
						loxiaType="input" trim="true" /></td>
					<td class="label">客户名称：</td>
					<td width="150"><input id="clientName" name="clientName"
						loxiaType="input" trim="true" /></td>
					<td class="label">发送状态：</td>
					<td width="150"><bizoption:bizoption biztypekey="1140"
							name="smsStatus" isChoose="true" /></td>
				</tr>
				<tr>
					<td class="label">创建时间：</td>
					<td width="150"><input id="createTime" name="createTime"
						loxiaType="date" /></td>
					<td class="label">发送时间：</td>
					<td width="150"><input id="sendTime" name="sendTime"
						loxiaType="date" /></td>
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
		</div>
		<!--<div class="label"><s:text name="label.sys.loginlog.result"/></div>
		-->
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-smsList"></table>
		<div id="pager"></div>
	</div>

</body>
</html>
