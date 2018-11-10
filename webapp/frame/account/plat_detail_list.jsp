<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/plat_detail_list.js?v=3.1.0_2'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}
.style_td {
	width: 38% !important;
}
.w300{width: 300px !important;}
.seleTd select{
	width: 150px;
}

</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<form id="qryfrm" method="POST">
		<table>
			<tr>
				<td class="label">操作时间：</td>
				<td>
					<input id="" class="style_td" name="startOperTime" loxiaType="date" trim="true" />
					到
					<input id="" class="style_td" name="endOperTime" loxiaType="date" trim="true" />
				</td>
				<td class="label">操作类型：</td>
				<td>
					<select name="operFlag">
					    <option value="">请选择</option>
					    <option value="191901">充值</option>
						<option value="191902">提现</option>
						<option value="191903">其他支出</option>
						<option value="191904">用户退还</option>
						
					</select>
				</td>
			</tr>
		</table>
		<input type="hidden" name="clientId" value="${clientId}" id="clientId" />
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
	<input type="hidden" name="accountNo" value='${accountNo }' id="accountNo" />
</body>
</html>
