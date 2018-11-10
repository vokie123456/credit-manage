<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/back_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.div-left{float:right}

</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">姓名：</td>
				<td width="150"><input id="" name="name"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机号码：</td>
				<td width="150"><input id="" name="mobile"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户编号：</td>
				<td width="150"><input id="" name="customerNo"
					loxiaType="input" trim="true" /></td>
				<td class="label">身份证：</td>	
				<td width="150"><input id="" name="cardNo"
					loxiaType="input" trim="true" /></td>			
			</tr>
			<tr>
				<td class="label">来源渠道：</td>
				<td width="150"><input id="" name="source"
					loxiaType="input" trim="true" /></td>
				<td class="label">操作人：</td>
				<td width="150"><input id="" name="operator"
					loxiaType="input" trim="true" /></td>
				<td class="label">拉黑时间：</td>
				<td width="150"><input id="" name="startDate"
					loxiaType="date" trim="true" />到<td>
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
			<button type="button" loxiaType="button" class=".div-left{float:right}"
				title="tip" id="upload_back"/>
				上传黑名单
			</button>
		</div>
		
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
	<%--  <form
		action="<%=request.getContextPath()%>/client/black/list/upload.do"
		method="post" enctype="multipart/form-data">

		上传文件：<input type="file" name="uploadfile"> <input
			type="submit" value="上传">
	</form> --%>
<div id="dialog-chgrole"></div>
</body>
</html>
