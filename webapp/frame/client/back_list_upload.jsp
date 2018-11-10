<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/back_list_upload.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.div-left {
	float: left
}

.div-right {
	float: right
}

 
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="div-right">
		<input type="button" id="xiazaidaoru" value="下载导入样例"
			style="align: left"></input>
	</div>
	<div class="div-left">
		<form
			action="<%=request.getContextPath()%>/client/black/list/upload.do" id="shangchuan"
			method="post" enctype="multipart/form-data">

			上传文件:<input type="file" name="uploadfile"><input
				type="button" value="上传" onclick="shangchuanExcel()">
		</form>
	</div>
</body>
</html>
