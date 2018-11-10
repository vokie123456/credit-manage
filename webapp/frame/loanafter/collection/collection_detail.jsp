<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/collection/collection_detail.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
	
}
.tdCenter {
    text-align: center;
}

</style>
</head>

<body contextpath="<%=request.getContextPath()%>">
	
	<form id="collectionDesForm">
	    <div class="divBgColor">
			<fmt:message key="label.collection.collectionTitle" bundle="${lang}" />
			
		</div>
		<table border="1" append="1" bordercolor="#EFEFEF" width="100%">

				<th>催收人</th>
				<th>催收方式</th>
			    <th>催收状态</th>
				<th>催收时间</th>
				<th>催收概述</th>
						
						
				<c:forEach items="${dklist}" var="dis" varStatus="loop">
					<tr>
					    <td class="tdCenter"><showusername:showusername
									value="${dis.dunWho }" /></td>
									
						<td class="tdCenter"><bizoptionname:showname biztypekey="1041"
								value="${dis.dunManner }" /></td>
						
						<td class="tdCenter"><bizoptionname:showname biztypekey="1040" value="${dis.dunStatus }" /></td>
						<td class="tdCenter"><fmt:formatDate value="${dis.dunTime }" pattern="yyyy-MM-dd"/></td>
					    <td class="tdCenter"><label style="color: blue; text-decoration: underline;"
								onclick="showVisitComment(${loop.index})"> 
								催收概况
							</label>
						<input type="hidden" value="${dis.dunComments }" id="linkArea${loop.index }"/></td>
					</tr>
				</c:forEach>


			</table>
	</form>
	
	<div id="dialogDiv" class="hidden">
	   <label id="labelArea"></label>
	</div>
	
</body>
</html>
