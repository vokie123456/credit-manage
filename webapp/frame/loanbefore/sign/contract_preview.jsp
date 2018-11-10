<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />
<title>合同预览</title>
<object id="LODOP" classid="clsid:2105C259-1E0C-4534-8141-A753534CB4CA"></object>
<style type="text/css">
center {
	width: 800px;
}

#contractDiv {
	margin: auto 0px;
}

#contractTitle {
	width: 850px;
	text-align: right;
	margin: auto;
	line-height: 40px;
}

#contractText {
	border: 1px solid #000000;
	width: 710px;
	text-align: center;
	margin: auto;
	padding-top: 75px;
	padding-left: 87.5px;
	padding-bottom: 62.5px;
	padding-right: 50px;
}
</style>
<script type="text/javascript">
	var LODOP = document.getElementById("LODOP");

	$j(document).ready(
			function() {
				$j("#contractText").load("${contractURL }");

				$j("#print").click(function() {
					$j("#contractTitle").hide();
					$j("#contractText").css("border", "1px solid #ffffff");

					window.print();

					$j("#contractTitle").show();
					$j("#contractText").css("border", "1px solid #000000");
				});

				$j("#export").click(
						function() {
							window.location.href = $j("body").attr(
									"contextpath")
									+ "/base/contractModel/toExport.do?id="
									+ "${contractId}"
									+ "&projectId="
									+ "${projectId}";
						});
			});
</script>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="a">
		<div id="contractTitle">
			<input id="print" type="button" value="打印" /> <input id="export"
				type="button" value="导出" />
		</div>
		<!--startprint-->
		<div id="contractText"></div>
		<!--endprint-->
	</div>
</body>