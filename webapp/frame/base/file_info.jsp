<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/file_info.js'/>"></script>
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
		<table>
			<tr>
					<td class="label">项目编号:</td>
					<td width="150"><input id="projectCode" name="projectCode"
						loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label">文档上传时间：</td>
				<td width="150"><input loxiaType="date" name="date1" /></td>
				<td class="label" style="text-align: center;">到：</td>
				<td width="150"><input loxiaType="date" name="date2" /></td>
			</tr>
			<tr>
				<td class="label">文档上传人：</td>
				<td width="150"><input loxiaType="input" name="uploadAgent" /></td>
				<td class="label">文档上传名称：</td>
				<td width="150"><input loxiaType="input" name="fileName" /></td>
			</tr>
			<tr>
				<td class="label">文档上传类型:</td>
				<td class="label" width="150">
				<bizoption:bizoption biztypekey="1106,1107,1108,1109,1110,1111,1112,1113,1114,1126" id="fileType" name="fileType"
			isChoose="true" /></td>
				</td>
				<td class="label">档案袋编码：</td>
				<td width="150"><input loxiaType="input" name="folderCode" /></td>
			</tr>
			<tr>
				<td>
					<button type="button" loxiaType="button" class="confirm"
						title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
						id="reload">
						<fmt:message key="button.query" bundle="${lang}" />
					</button>
				</td>
			</tr>
		</table>
	</form>
	</br>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-fileinfoList"></table>
	<div id="pager"></div>

	<div id="dialog-chgrole">
		<form id="extendApply" method="post">
			<table>
				<input type="hidden" name="id" id="id" value="${fileinfo.id }" />
				<tr>
					<!-- 档案袋编码 -->
					<td class="label">档案袋编码：</td>
					<td><input id="fcode" name="fcode" loxiaType="input"
						trim="true" mandatory="true" /></td>

				</tr>
			</table>
			<div style="text-align: center">
				<input type="button" loxiaType="button" class="confirm"
					id="submitExtend" value="提交" /> <input type="button"
					loxiaType="button" class="confirm" id="closeWin" value="关闭" />
			</div>
		</form>
	</div>
</body>
</html>
