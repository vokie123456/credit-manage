<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/fullcalendar/fullcalendar2.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/fullcalendar/fancybox.css'/>"/>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery-1.4.4.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery-ui-1.8.7.custom.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/fullcalendar.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/main/jquery.fancybox-1.3.1.pack.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/dayoff/dayoff_list.js'/>"></script>

<style type="text/css">
#calendar {
	width: 660px;
	margin: 20px auto 10px auto
}

.fancy {
	width: 450px;
	height: auto
}

.fancy h3 {
	height: 30px;
	line-height: 30px;
	border-bottom: 1px solid #d3d3d3;
	font-size: 14px
}

.fancy form {
	padding: 10px
}

.fancy p {
	height: 28px;
	line-height: 28px;
	padding: 4px;
	color: #999
}

.input {
	height: 20px;
	line-height: 20px;
	padding: 2px;
	border: 1px solid #d3d3d3;
	width: 100px
}

.btn {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	padding: 5px 12px;
	cursor: pointer
}

.btn_ok {
	background: #360;
	border: 1px solid #390;
	color: #fff
}

.btn_cancel {
	background: #f0f0f0;
	border: 1px solid #d3d3d3;
	color: #666
}

.btn_del {
	background: #f90;
	border: 1px solid #f80;
	color: #fff
}

.sub_btn {
	height: 32px;
	line-height: 32px;
	padding-top: 6px;
	border-top: 1px solid #f0f0f0;
	text-align: right;
	position: relative
}

.sub_btn .del {
	position: absolute;
	left: 2px
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
		<div id='calendar'></div>
</body>
</html>
