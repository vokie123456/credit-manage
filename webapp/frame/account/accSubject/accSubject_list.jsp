<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.apply.applylist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/accSubject/accSubject_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}

.link {
	text-decoration: underline;
	cursor: pointer;
	color: #556b80;
}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<!--  <div class="divBgColor">
			<fmt:message key="label.search.param" bundle="${lang}" />
		</div>-->
		<form id="accSubjectListForm" method="post">
			<table style="width: 60%;">
				<tr>
					<td class="label">科目分类：</td>
					<td><bizoption:bizoption biztypekey="1123" id="subjectClass"
							name="subjectClass" isChoose="true" /></td>
					<td class="label">科目等级：</td>
					<td style="width: 30%;"><select id="subjectLevel" name="subjectLevel" loxiaType="select"><option
								value="">请选择</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
					</select></td>
				</tr>
				<tr>
					<td class="label">是否默认：</td>
					<td ><select id="isAll" name="isAll" loxiaType="select"><option value="0">请选择</option>
							<option value="1">系统默认</option>
							<option value="2">公司自建</option>
					</select></td>
					<td class="label">科目名称：</td>
					<td><input id="subjectTitle" name="subjectTitle"
						loxiaType="input" /></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
					id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="button" loxiaType="button" class="confirm"
					title="tip：添加科目" id="toAddAccSubject">添加科目</button>
			</div>
		</form>
	</div>
	<%@include file="/common/paginationInit.jsp" %>
	<table id="tbl-accSubjectlist"></table>
	<div id="pager"></div>
</body>
</html>
