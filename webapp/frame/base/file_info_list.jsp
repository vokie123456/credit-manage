<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/file_info_list.js'/>"></script>
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
	<form id="fileinfoForm" method="post">
	</form>	
		<input type="hidden" id="fileprojectid" value="${projectId}" />
		<input type="hidden" id="fileCategory" value="${fileCategory}" />
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-fileinfoList"></table>
	<div id="pager"></div>
	
	</br>
	</br>
	<div class="divBgColor">
		上传文件
	</div>
	<form id="upLoadCreditForm"
		action="<%=request.getContextPath()%>/base/fileinfo/upload.do?projectId=${projectId}"
		method="post" enctype="multipart/form-data" >
		<table>
		<tr>
			<td class="label" width="150"><bizoption:bizoption
			biztypekey="${fileCategory}" id="fileType" name="fileType"
			isChoose="true" /></td>
			<td id="fileTd"></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<input type="button" loxiaType="button" class="confirm hidden1"
				id="fileInfoSaveBut" value="上传"></input>
		</div>	
</body>
</html>
