<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"  manifest="/scripts/common/clear.appcache">
<head>
	<%@include file="/common/meta.jsp"%>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/photoGallery.css'/>"/> 
    <script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/scripts/newsZr/jquery.photo.gallery.js'/>"></script>
</head>
<body>
<div class="box">
	<div class="gallery"></div>
</div>
<script>
	$.initGallery();
</script>
</body>
</html>