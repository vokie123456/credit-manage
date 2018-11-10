<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>系统配置编辑</title>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/config_edit.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/common/otherValidate.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-addconfig" method="POST">
		<input name="configCode" type="hidden" value="${systemConfig.configCode}"/>
        <input name="compCode"   type="hidden" value="${systemConfig.compCode}" >
		<table>
		  <tr>
			<td class="label"  >参数名：</td>
		    <td><input name="configKey" loxiaType="input" trim="true" value="${systemConfig.configKey}" mandatory="true" readonly="readonly"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>

		    <td class="label">参数值：</td>

			<c:if test="${systemConfig.configType == 0 }">
				<td><input name="configValue" loxiaType="input" trim="true" style="float:left;"
					value="${systemConfig.configValue}" mandatory="true"> <label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</c:if>
			<c:if test="${systemConfig.configType == 1 }">
				<td class="width150"><bizoption:bizoption name="configValue"
						biztypekey="${systemConfig.configTypeSelect }"
						selected="${systemConfig.configValue}" mandatory="true"/></td>
			</c:if>


		    <td class="label">备注：</td>
		    <td><input name="remark" loxiaType="input" trim="true" value="${systemConfig.remark}" mandatory="true"><label
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