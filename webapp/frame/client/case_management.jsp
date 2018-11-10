<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/photoGallery.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>"/>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/case_management.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}
table tr td{height:30px;}

</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
<div class="tabSlide">
	<ul class="control clearfix">
		<li class="border"> <a href="javascript:;" id="noReply" >案件查询</a></li>
		<li><a href="javascript:;" id="alreadyReply">待进件客户</a></li>
	</ul>
	<div class="content"></div>
</div>
<input id="projectId" type="hidden" />
	<form id="caseManager" method="post">
		<table>
			<tr>
				<td class="label">姓名：</td>
				<td width="150"><input id="clientName" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机：</td>
				<td width="150"><input id="clientMobile" name="clientMobile"
					loxiaType="input" trim="true" /></td>
				<td class="label">状态：</td>	
				<td width="150"><bizselect:bizselect biztypekey="1187" id="stat" name="stat" isChoose="true" /></td>
				<td class="label">来源应用：</td>
				<td width="150">
					<select name="applyCode" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach items ="${amList}" var="mapOne">
							<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td class="label">申请产品：</td>
				<td width="150"><select name="applyProductName" loxiaType="select">
						<option value="" >请选择</option>
						<c:forEach items ="${products}" var="mapOne">
							<option value=${ mapOne.id} > ${mapOne.productName}</option>
						</c:forEach>
					</select></td>
				<td class="label">申请日期：</td>
				<td width="150"><input id="" name="applyStartTime"
					loxiaType="date" trim="true" />&nbsp;<span>到</span></td>
				<td class="width150"><input id="" name="applyEndTime"
					loxiaType="date" trim="true" />
				</td>		
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip" id="reset"/>
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
		
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
