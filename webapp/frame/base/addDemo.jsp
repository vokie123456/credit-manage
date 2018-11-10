<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<%@include file="/common/meta.jsp"%>
	<fmt:setBundle basename="messages" var="lang"/>
	<title><fmt:message key="title.sys.loginlog" bundle="${lang}"/></title>
<script type="text/javascript" src="<c:url value='/scripts/frame/base/addDemo.js'/>"></script>
	<style type="text/css">
		.label{ text-align:left;}
	</style>
	<linkage:define />
</head>

<body contextpath="<%=request.getContextPath() %>">	 
	<div class="divBgColor"><fmt:message key="label.search.param" bundle="${lang}"/></div>
	<form id="sysLogCommandForm" method="post" action="<%=request.getContextPath() %>/base/saveLogin.do">
	<table>
	  <tr>
		<td class="label"><fmt:message key="label.sys.loginlog.loginname" bundle="${lang}"/></td>
		<td width="150"><input id="loginName" name="loginName" loxiaType="input" trim="true" mandatory="true"/></td>
		<td class="label">远程iP：</td>
		<td width="150"><input id="remoteAddr" name="remoteAddr" loxiaType="input" trim="true" /></td>
		<td class="label">登陆状态：</td>
		<td width="150"> <bizoption:bizoption  biztypekey="loginStatus" id="logStatus" name="loginStatus" /></td>
	  </tr>
	   <tr>
	    <td class="label"><fmt:message key="label.sys.loginlog.logintime" bundle="${lang}"/></td>
		<td>
			<input id="loginTime" loxiaType="date" name="loginTime" mandatory="true" readonly="readonly"/>
			
		</td>		
		 
		<td class="label">提交方式：</td>
		<td width="225"><checkBox:checkBox  biztypekey="1004" id="loginFrom" name="loginFrom" checked="100411,100412"/></td>
			
		<td class="label">客户端信息：</td>
		<td> <textarea id="userAgent" name="userAgent" rows="5" loxiaType="input"  trim="true" mandatory="true"></textarea> 
		</td>
	  </tr>
	</table>
		<div class="buttonlist buttonDivWidth">
			<button type="submit" loxiaType="button" class="confirm" title="tip：<fmt:message key="label.research.detail.inves_submit" bundle="${lang}"/>" id="reload"><fmt:message key="label.research.detail.inves_submit" bundle="${lang}"/></button>
		</div>
			<div class="buttonlist buttonDivWidth">
			<button type="submit" loxiaType="button" class="confirm" title="tip：<fmt:message key="label.research.detail.inves_submit" bundle="${lang}"/>" id="reloadd"><fmt:message key="label.research.detail.inves_submit" bundle="${lang}"/></button>
		</div>
	</form>
<div id="dialog-confirm" style="display:none;"></div>
</body>
</html>
