<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<%@include file="/common/meta.jsp"%>
		<title>催收列表</title>
		<%-- 放弃 --%>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/> 
		<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/frame/loaning/collection_management_giveup.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
	</head>
	<body contextpath="<%=request.getContextPath()%>" style="background-color:#fff;">
		<div>
			<form id="collectionManagement" method="post">
				<div class="seachDv" style="margin:5px">
					<a id="reload">查询</a>
				</div>
			</form>
			<%@include file="/common/paginationInit.jsp" %>
			<table id="tbl-lendlist"></table>
			<div id="pager"></div>
		</div>
		<script>
			$(function(){
				$('#tabBtn a').click(function(e){
					e.preventDefault();
					_id = $(this).attr('href');
					$(this).addClass('active').siblings().removeClass('active');
					$('.tabCon').hide();
					$(_id).show();
				})
			})
		</script>
		
	</body>
</html>
