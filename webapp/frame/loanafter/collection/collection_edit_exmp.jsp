<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>

<br />
<div>
	催收记录 <input type="button" value="删除催收记录" loxiaType="button"
		onclick="delCollectRecord(${count})" />
</div>
<table border="1" append="1" bordercolor="#EFEFEF" width="100%">
	<tr>

		<!-- 催收概述 -->
		<td class="label" style="text-align: center;"><fmt:message
				key="label.collection.collectionDes" bundle="${lang}" /></td>
		<td width="150" colspan="3"><textarea name="dunComments"
				loxiaType="input" trim="true"></textarea></td>
	</tr>
	<tr>
		<!-- 催收方式-->
		<td class="label" style="text-align: center;"><fmt:message
				key="label.collection.collectionType" bundle="${lang}" /></td>
		<td width="150" colspan="3"><checkBox:checkBox biztypekey="1041"
				id="dunManner" name="dunManner" checked="" /></td>
	</tr>
	<tr>
		<!-- 催收人 -->
		<td class="label" style="text-align: center;"><fmt:message
				key="label.collection.collector" bundle="${lang}" /></td>
		<td width="150"><showusername:showusername value="${dunWho }" />
		<td class="label" style="text-align: center;"><fmt:message
				key="label.collection.collectionDate" bundle="${lang}" /></td>
		<td width="150"><input name="dunTime" mandatory="true"
			loxiaType="date" trim="true" value="" readonly="readonly" /><label
			class="del_mandatory">&nbsp;*</label></td>
	</tr>

</table>