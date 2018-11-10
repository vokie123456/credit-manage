<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/contract_model_add.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="upLoadContractModelForm"
		action="<%=request.getContextPath()%>/base/contractModel/uploadContractModelInfo.do"
		method="post" enctype="multipart/form-data" onsubmit="return chkForm(this);">
		<br />
		<table>
			<tr>
				<td align="left" class="label">合同类型：</td>
				<td width="250"><bizoption:bizoption biztypekey="1143"
						id="contractType" name="contractType" isChoose="true"
						mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td align="left" class="label">描述：</td>
				<td width="250" colspan="3"><textarea rows="3"
						name="description" id="description"
						class="ui-loxia-default ui-corner-all" aria-disabled="false"></textarea></td>
			</tr>
			<tr>
				<td id="fileTd"><input id="pdFileFileField" type="file"
					name="fileField" /></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="submit" loxiaType="button" class="confirm" id="save">
				上传</button>
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
				id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
	</form>
</body>
</html>
