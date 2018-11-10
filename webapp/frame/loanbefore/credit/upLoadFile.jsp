
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.file-box {
	position: relative;
	width: 500px
}

.txt {
	border: 1px solid #cdcdcd;
	width: 180px;
}

.btn {
	background-color: #70AFF5;
	border: 1px solid #CDCDCD;
	height: 24px;
	width: 90px;
}
</style>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/upLoadFile.js'/>">
	
</script>
</head>


<body contextpath="<%=request.getContextPath()%>">
	<div class="file-box">
		<form
			action="<%=request.getContextPath()%>/loanbefore/readFile/ReadToDataBase.do"
			method="post" enctype="multipart/form-data" id="fileForm">
			<input type="button" id="addfileField" value="文件上传添加" class="btn"/>
			<div id="remindDiv">点击文件上传添加按钮,开始添加文件！</div>
			<div id="files"></div>
			<input
			type="submit" id="deploy" name="deploy" class="btn" value="上传文件" />
		</form>
	</div>
</body>
</html>
