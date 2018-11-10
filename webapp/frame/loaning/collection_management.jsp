<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="/common/meta.jsp"%>
		<title>催收列表</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
		<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/collection_management.js?v=1.6.0_3'/>"></script>
	</head>
	<body contextpath="<%=request.getContextPath()%>" style="background-color:#fff;border: 0;">
		<div id="tabs-collection">
		  <ul>
		    <li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a href="#tabs-1">逾期未还款</a></li>
		    <li><a href="#tabs-2">逾期已还款</a></li>
		    <li><a href="#tabs-3">放弃列表</a></li>
		  </ul>
		  <div id="tabs-1">
		  <iframe scrolling="auto" frameborder="0" id="iframe0" src="<%=request.getContextPath()%>/loaning/collectionManagement/list.do?url=collection_management_list" width="100%"></iframe>
		  </div>
		  <div id="tabs-2">
		  <iframe scrolling="auto" frameborder="0" id="iframe1" width="100%"></iframe>
		  </div>
		  <div id="tabs-3">
		  <iframe scrolling="auto" frameborder="0" id="iframe2" width="100%"></iframe>
		  </div>
		</div>
	</body>
</html>
