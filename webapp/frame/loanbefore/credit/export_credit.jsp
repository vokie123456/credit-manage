<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.export.credit.title1"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/export_credit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
.select {
   width:130px;
  
}
</style>
<linkage:define />
</head>


<body contextpath="<%=request.getContextPath()%>">

	<div class="divBgColor">
		<fmt:message key="label.export.credit.title" bundle="${lang}" />
	</div>
	<input type="hidden" id="applyId" value="${applyId }" />

	<div class="buttonlist buttonDivWidth">
		<button type="submit" loxiaType="button" class="confirm"
			title="tip：<fmt:message key="label.export.credit.butExport" bundle="${lang}"/>"
			id="export">
			<fmt:message key="label.export.credit.butExport" bundle="${lang}" />
		</button>
	</div>

	<br />
	<div class="divBgColor">
		<fmt:message key="label.upload.credit.title" bundle="${lang}" />
	</div>
	<input type="hidden" id="flag" value="${flag }"/>
	<form id="upLoadCreditForm"
		action="<%=request.getContextPath()%>/loanbefore/credit/uploadCreditResultInfo.do"
		method="post" enctype="multipart/form-data" >
		<table>
			<tr>
			
			   <td class="label"><fmt:message
						key="label.apply.clientproject.card_type" bundle="${lang}" /></td>
				<td >
				<select name="cardType" id="cardType" mandatory="true" class="select"/>
				</td>
				
				
				<td class="label"><fmt:message
						key="label.credit.inves.client.name" bundle="${lang}" /></td>
				<td>
				<input type="input" name="clientName" id="clientName" mandatory="true"/>
				</td>
				
				<!-- 客户类型 
				<td class="label"><fmt:message
						key="label.company.list.clientType" bundle="${lang}" /></td>
				<td width="150"><bizoption:bizoption biztypekey="1003"
						id="clientType" name="clientType" isChoose="true" /></td>
                -->
			</tr>
			<tr>
				
				<td class="label"><fmt:message key="label.credit.inves.card.no"
						bundle="${lang}" /></td>
				<td><input type="input" name="cardNo" id="cardNo" mandatory="true"/></td>
                <!--  
				<td id="cardNoTd"></td>
				<input type="hidden" id="projectId" name="projectId"/>
				<input type="hidden" id="poolId" name="poolId"/>
				-->
			</tr>
			<tr>
				<td id="fileTd">
					<input id="pdFileFileField" type="file" name="fileField" >
				</td>
			</tr>
		</table>

		<div class="buttonlist buttonDivWidth">
			<input type="submit" class="confirm hidden1"
				id="save" value="上传"></input>

		</div>
	</form>



</body>
</html>