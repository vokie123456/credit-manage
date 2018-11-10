<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>逾期催收通知涵</title>
<script type="text/javascript">
	$j(document)
			.ready(
					function() {

					var url =  $j("#reportUrl").val()
							+ "&clientId="
							+ $j("#dun_clientId").val()
							+ "&random="
							+ parseInt(Math.random() * 100000);
					
					//alert("重加载： " + url);
					$j("#reportDiv").attr("src", url);
		});
</script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div id="formdetail">
		<div class="divBgColor">
			逾期催收通知涵
		</div>
		<div style="display: none;">
		    <input type="hidden" id="dun_clientId" value="${clientId }" />
			<textarea id="reportUrl" rows="3" cols="30">${url }</textarea>
		</div>
		
		<div>
			<iframe id="reportDiv" style="width: 100%; height: 600px;"></iframe>
		</div>
	</div>
</html>
