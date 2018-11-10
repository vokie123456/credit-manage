
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/fileinfo/before_examine_dialog.js'/>"></script>

</head>

<form id="beforeExamineForm" method="post" 
      action="<%=request.getContextPath()%>/base/fileinfo/uploadExamineFile.do"
	  enctype="multipart/form-data"
      target="temp">
      
	<input type="hidden" id="lendinfo_projectId" name="projectId"
		value="${projectId }">
				
	<table style="width:100%" >
	  <tr>
	  <td><input name="fileField" type="file" onchange="upload()"/></td>
	  </tr>
	</table>
	
</form>