<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<%--<script type="text/javascript"--%>
	<%--src="<c:url value='/scripts/frame/client/customer_management.js'/>"></script>--%>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}

</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	
	
	<form id="customerManager" method="post">
		<table>
			<tr>
				<td class="label">客户编号：</td>
				<td width="150"><input id="" name="clientCode"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户：</td>
				<td width="150"><input id="" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机：</td>
				<td width="150"><input id="" name="account"
					loxiaType="input" trim="true" /></td>			
			</tr>
			<tr>
				<td class="label">当前状态：</td>
				<td width="150">
					<select name="frontState" loxiaType="select">
						<option value="10">全部</option>
						<option value="1">注册用户</option>
						<option value="2">正在授信</option>
						<option value="3">补充资料</option>
						<option value="4">授信失败</option>
						<option value="5">已授信未使用</option>
						<option value="6">提现中</option>
						<option value="7">已授信已使用</option>
						<option value="8">拉黑</option>
						<option value="9">授信过期用户</option>
					</select>
				</td>
				<td class="label">来源渠道：</td>
				<td width="150">
					<select name="channelTotalName" loxiaType="select">
						<option value="" >请选择</option>
						<c:forEach items ="${map}" var="mapOne">
							<option value=${ mapOne.key } > ${mapOne.value }</option>
						</c:forEach>
					</select>
				</td>
				<td class="label">注册日期：</td>
				<td width="150"><input id="" name="startDate"
					loxiaType="date" trim="true" />&nbsp;<span>到</span><td>
				<td class="width150"><input id="" name="endDate"
					loxiaType="date" trim="true" />
				</td>		
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip" id="reset"/>
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
		
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
	<script type="text/javascript"
			src="<c:url value='/scripts/frame/client/customer_management.js'/>"></script>
</body>
</html>
