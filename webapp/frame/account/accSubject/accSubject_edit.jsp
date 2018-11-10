<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applyDetail"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/accSubject/accSubject_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.del_all {
	text-align: right;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="subjectAddForm" method="post">
		<div class="divBgColor">科目编辑</div>
		<table>
			<tr>
				<td class="label">科目类型：</td>
				<td width="150"><bizoption:bizoption biztypekey="1123"
						id="subjectClass" name="subjectClass" isChoose="true"
						mandatory="true" selected="${param.subjectClass }" /><label
					class="del_mandatory">&nbsp;&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label">上级科目：</td>
				<td width="150"><bizoption:bizoption biztypekey="1123"
						id="subjectParentID" name="subjectParentID" isChoose="true"
						mandatory="true" /><label class="del_mandatory">&nbsp;&nbsp;&nbsp;*</label>
					<input id="subjectParentIDVal" name="subjectParentIDVal"
					type="hidden" value="${param.subjectParentID }" /> <input
					id="subjectLevel" name="subjectLevel" type="hidden"
					value="${param.subjectLevel }" /></td>
			</tr>
			<tr>
				<td class="label">科目编号：</td>
				<td align="left"><input id="subjectId" name="subjectId"
					loxiaType="input" trim="true" mandatory="true"
					value="${param.subjectId }" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label">科目名称：</td>
				<td align="left"><input id="subjectTitle" name="subjectTitle"
					loxiaType="input" trim="true" mandatory="true"
					value="${param.subjectTitle }" /><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label">科目说明：</td>
				<td align="left"><input id="subjectCapitor"
					name="subjectCapitor" loxiaType="input" trim="true"
					mandatory="true" value="${param.subjectCapitor }" /><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="submit" loxiaType="button" class="confirm" id="btnSave">保存</button>
		</div>
	</form>
</body>
</html>
