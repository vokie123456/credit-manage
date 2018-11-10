<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>

<fmt:setBundle basename="messages" var="lang" />
<title>编辑预警参数</title>
<script type="text/javascript"         
	src="<c:url value='/scripts/frame/loanafter/warnconfig/warnconfig_edit.js'/>"></script>
	<linkage:define />
</head>   
<body contextpath="<%=request.getContextPath()%>">
		<form id="addIntroduceForm" >
		<c:if test="${warnConfig.id ne null}">
		<input loxiaType="input" name="id" value="${warnConfig.id }" type="hidden">
		</c:if>
		<table class="textalignCenter tabcustomPeoNoborder">
			<tr>
				<td class="label">预警类型：</td> 
				<td class="content"><bizoption:bizoption name="warnType"  id="warnType" biztypekey="1181" 
						mandatory="true" selected="${warnConfig.warnType }" 
						 isChoose="true" /><%-- <input loxiaType="input"   name="warnType" id="warnType" value="${warnConfig.warnType }"/> --%><label class="del_mandatory">&nbsp;*</label></td>
				<td class="label">预警天数：</td>
				<td class="content"><input loxiaType="number" mandatory="true"  trim="true"  onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"  name="warnDays" id="warnDays" value="${warnConfig.warnDays }"/><label class="del_mandatory">&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label">是否有效：</td>
				<td class="content"><bizoption:bizoption name="ifValid"  id="ifValid" biztypekey="1001" 
						mandatory="true" selected="${warnConfig.ifValid }" 
						 isChoose="true" /></td>
			</tr>
			<tr>
				<td class="label">预警说明：</td>
				<td class="content" colspan="3"><input loxiaType="input"  mandatory="true" trim="true"   name="warnDesc" id="warnDesc"  value="${warnConfig.warnDesc }"/><label class="del_mandatory">&nbsp;*</label></td>
			</tr>
			</table>   
			</form>
			<div  class="buttonlist buttonDivWidth">          
		<input type="button" class="confirm" id="save"  value="保存"  loxiaType="button" onclick="save()"/>
		<input type="button" class="confirm" id="backUp"  value="返回"   loxiaType="button" />
	</div>
</body>
</html>