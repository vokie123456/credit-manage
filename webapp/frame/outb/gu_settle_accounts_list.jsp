<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript">
	var $ = $j;
</script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/outb/gu_settle_accounts_list.js?v=1.2'/>"></script>
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
	
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">客户姓名：</td>			
				<td width="150"><input id="" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">还款状态：</td>			
				<td width="150"><bizselect:bizselect biztypekey="1188"
						startSort="5" endSort="7" id="lendStatus"
						name="lendStatus" isChoose="true" /></td>
					<td class="label">结算状态：</td>			
				<td width="150"><bizselect:bizselect biztypekey="1913"
						startSort="1" endSort="6" id="settleAccountsStatus"
						name="settleAccountsStatus" isChoose="true" /></td>
			</tr>
			<tr>
				<td class="label">结算时间：</td>
				<td width="150"><input id="" name="startDate"
					loxiaType="date" trim="true" /><td>到：
				<td class="width150">	<input id="" name="endDate"
					loxiaType="date" trim="true" />
				</td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm" id="exportGJS">
				导出
			</button>
		 	<!-- <button type="button" loxiaType="button" class="confirm" id="openMailTemp">
				邮件模板
			</button>  -->
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
