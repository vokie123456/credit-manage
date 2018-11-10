<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/metaload.jsp"%>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/companyinfo/company_payChannelComp.js'/>"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title></title>
</head>
<body contextpath="<%=request.getContextPath()%>">
  <form id="payChannelCompform" method="post">
    <c:forEach items="${payChannelList}" var="payChannel">
       <input type="checkbox" name="channelCode" id="${payChannel.channelCode}" value="${payChannel.channelCode}">${payChannel.channelName}</input>
    </c:forEach>
     <input type="hidden" id="payChannelCompCode" value="${channelCode}"></input>
     <input type="hidden" id="comPanyCode" value="${comPanyCode}">
    <br/>
    <div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				id="submitContact">保存</button>
	</div>
  </form>
</body>
</html>