<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 签约信息新增-->
<head>
<%@include file="/common/metaload.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="lable.sign.return"
							bundle="${lang}" /></title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
<form id="signReturnForm" method="post"  >
	<div id="formreturn">
		        <input id="projectId1" name="signContract.projectId"  value="${projectId}" type="hidden"/>	
		        <input id="signStauts1" name="signContract.signStauts"  value="${signStauts}" type="hidden"/>	
		        <input id="signId1" name="signContract.signId"  value="${signId}" type="hidden"/>	
		 <table>
			<tr>
				<td class="label"><fmt:message key="label.sign.returnReason"
							bundle="${lang}" /></td>
				<td width="150">
				<bizoptionname:showname
						biztypekey="1056" name="signAddVo" property="returnReason" />
				
				</td>
			</tr>
		</table>
		<table>
			<tr>
		    	<td class="label"><fmt:message key="label.sign.returnRemark"
							bundle="${lang}" /></td>
				<td width="450" colspan="5">	
				${signAddVo.returnRemark }
				</td>
		   </tr>
		</table>
	</div>	
</form>
</body>
</html>
