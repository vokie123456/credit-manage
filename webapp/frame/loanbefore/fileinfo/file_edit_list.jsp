<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/fileinfo/file_edit_list.js'/>"></script>
	
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
    <form id="fileinfoForm">
      <input type="hidden" id="fileprojectid" name="fileProjectId" value="${projectId}" />
      <input type="hidden" id="flag" value="${flag}" />
    </form>
	
	
	<div class="divBgColor">
		上传文件
	</div>
	<c:if test="${flag==true }">
		<form id="upLoadCreditForm"
			action="<%=request.getContextPath()%>/base/fileinfo/uploadFile.do?projectId=${projectId}"
			method="post" enctype="multipart/form-data" 
			target="tempFile">
			<table>
				<tr>
					<td class="label">文档类型：</td>
					<td width="150" ><bizoption:bizoption
							biztypekey="1106" id="fileType" name="fileType" isChoose="true" /></td>
	
					<td class="label">文档提供类型：</td>
					<td width="150"><bizoption:bizoption
							biztypekey="1150" id="supplyType" isChoose="true" name="supplyType"/></td>
	
					<td id="fileTd"><input name="fileField" type="file" id="pdFileFileField"/></td>
					<td><input type="button" loxiaType="button"
						class="confirm hidden1" id="fileInfoSaveBut" value="上传"></input></td>  
						<td id="zzsc" style="display:none"><img src="<%=request.getContextPath()%>/images/upload.gif" alt="正在加载"   width="20" style="cursor: pointer;"/></td>
				</tr>
	
			</table>
		</form>
	</c:if>
	</br>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-fileinfoList"></table>
	<div id="pager"></div>	
	<iframe id="tempFile" name="tempFile" style="display: none;"></iframe>
</body>
</html>
