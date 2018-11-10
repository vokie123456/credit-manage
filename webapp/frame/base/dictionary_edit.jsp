<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>编辑公司</title>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/dictionary_edit.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-adddictionary" method="POST">
		<input name="id" type="hidden" value="${systemDictionary.id}"/>
		<table>
		  <tr>
		    <td class="label">常量类型编号：</td>
		    <td><input name="typeCode" loxiaType="input" trim="true" value="${systemDictionary.typeCode}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
			<td class="label">常量编号：</td>
		    <td><input name="subtypeCode" loxiaType="input" trim="true" value="${systemDictionary.subtypeCode}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
		  </tr>
		  <tr>
		    <td class="label">常量类型名称：</td>
		    <td><input name="typeName" loxiaType="input" trim="true" value="${systemDictionary.typeName}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
			<td class="label">常量名称：</td>
		    <td><input name="subtypeName" loxiaType="input" trim="true" value="${systemDictionary.subtypeName}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
		  </tr>
		  <tr>
		    <td class="label">状态：</td>
		    <td><input name="status" loxiaType="input" trim="true" value="${systemDictionary.status}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
		  </tr>		  
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="btnSave">保存</button>
			
			<button type="button" loxiaType="button" class="confirm" title="tip：<fmt:message key="button.reset" bundle="${lang}"/>" id="btnReset">
				<fmt:message key="button.reset" bundle="${lang}" />
			 </button>
		</div>
		</form>
	</div>
</body>
</html>