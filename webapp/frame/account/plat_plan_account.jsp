<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/plat_plan_account.js?v=3.1.0_2'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {  text-align: right;  }
.style_td {  width: 38% !important;  }
.w300{width: 300px !important;}
.seleTd select{  width: 150px;  }
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm" id="addAccount">
			新增账户
		</button>
	</div>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
	
	
</body>
</html>
