<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.credit.inves.title"
		bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/credit/credit_inves.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">

		<div class="divBgColor">
			<fmt:message key="label.credit.inves.comp.info" bundle="${lang}" />
		</div>
		<form id="creditInvesForm" method="post">
		<input type="hidden" id="credit_applyId" name="applyId" value="${applyId }"/>
		<input type="hidden" id="credit_projectId" value="${vo.projectId }"/>
			<table border="1" cellpadding="0" cellspacing="0"
					width="92%">
					
					
				<tr>
				    <th></th>
				    <!-- 企业名称 -->
				    <th><fmt:message
							key="label.credit.inves.comp.name" bundle="${lang}" /></th>
					<!--组织机构代码 -->
					<th><fmt:message
							key="label.credit.inves.org.code" bundle="${lang}" /></th>
							
					<!-- 征信状态-->
					<th ><fmt:message
							key="label.credit.inves.comp.info.status" bundle="${lang}" /></th>
					<!-- 征信状态-->
					<th ><fmt:message
							key="label.credit.result.status" bundle="${lang}" /></th>
							
					<!-- 征信结果下载-->
					
					<th><fmt:message
							key="label.credit.inves.downloan.title" bundle="${lang}" /></th>
					
				</tr>
				<tr style="text-align:center;">
				    <td><input type="checkbox" id="isCheck"/></td>
					
					<td width="150">${vo.compName }</td>
					<input type="hidden" id="compName" value="${vo.compName }"/>

					
					<td width="150">${vo.orgCode }</td>
                    <input type="hidden" id="orgCode" value="${vo.orgCode }"/>
                    
                     
					<td width="150"><bizoptionname:showname biztypekey="1096" value="${vo.status }" /></td>
					<td width="150">${vo.resultStatus }</td>
                    <td><label id="loadLink" style="color:blue;text-decoration:underline;"><fmt:message
							key="label.credit.inves.downloan" bundle="${lang}" /></label></td>
				</tr>
			</table>
			
		</form>
		<br/>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-creditInves"></table>
	    <div id="pager"></div>
	    
	<div class="buttonlist buttonDivWidth">
		<button type="button" loxiaType="button" class="confirm hidden1"
			title="" id="add"><fmt:message
							key="label.credit.inves.but.query" bundle="${lang}" /></button>
		</button>
	</div>

</body>