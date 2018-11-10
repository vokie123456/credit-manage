<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 贷款审核编辑页面  key表示国际化  配置在messages_zh_CN.properties文件中-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.checkedit" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/businessExecutiveApprove/approve_detail.js'/>"></script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="div_out"
		class="ui-tabs ui-widget ui-widget-content ui-corner-all">
		<ul
			class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active">
				<a href="#approveDiv" id="approve">业务主管审批</a>
			</li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">申请表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">调查表</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">共同还款人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">关系人信息</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">产品配置</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">押品信息</a></li>
		</ul>
			<div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="approveDiv">
			<input type="hidden" id="applyId" value="${applyId }" />
			<input type="hidden" id="projectId" name="projectId" value="${projectId }" />
			<div class="divBgColor"> <fmt:message key="label.memo.title" bundle="${lang}" />
			</div>
			<table class="col3" >
				<tr>
					<td class="label"><fmt:message key="label.memo.oper.type" bundle="${lang}" /></td>
					<td class="content">${tlVo.operType}</td>
					<td class="label"><fmt:message key="label.memo.oper.reason" bundle="${lang}" /></td>
					<td class="content">${tlVo.operReason}</td>
				</tr>
				<tr>
					<td class="label"><fmt:message key="label.memo.oper.remark" bundle="${lang}" /></td>
					<td class="content">${tlVo.operReasonRemark}</td>
				</tr>
			</table>
			</div>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom" id="div-2"></div>
	</div>
</body>
</html>
