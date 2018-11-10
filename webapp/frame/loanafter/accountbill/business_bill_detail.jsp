<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<style type="text/css">
.moneyRight {
	text-align: right;
}
</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
   
    <%@ include file="/frame/loanafter/accountbill/business_bill_detail_body.jsp"%>
		
		
</body>
</html>