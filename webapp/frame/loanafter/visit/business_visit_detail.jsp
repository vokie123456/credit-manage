<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/visit/business_visit_detail.js'/>"></script>

<style type="text/css">
.label {
	text-align: left;
}
.tdCen{
    text-align: center;
}

</style>
</head>

<body contextpath="<%=request.getContextPath()%>">

	<div>
		<div class="title btnDiv">贷后调查情况</div>
		<form>
		<table border="1" append="1" bordercolor="#EFEFEF" width="100%">

				<!-- 调查方式 -->
				<th>贷后检查方式</th>
				
				<!-- 贷款五级分类-->
				<th>贷款五级分类</th>
				
				<!-- 回访情况记录 -->
				<th>检查意见</th>
				
				<!-- 调查人 -->
				<th>检查人</th>
				
				<!-- 其他调查人 -->
				<th>其他检查人</th>
				
				<th>检查时间</th>
						
				<c:forEach items="${volist}" var="dis" varStatus="loop">
					<tr>
						<td class="tdCen">
						<bizoptionname:showname biztypekey="1147"
								value="${dis.methodOfInvestigation }" /></td>
						<td class="tdCen"><bizoptionname:showname biztypekey="1038"
								value="${dis.fiveStatus }" /></td>
						<td class="tdCen">
						<label style="color: blue; text-decoration: underline;"
								onclick="showVisitComment(${loop.index})"> 
								检查意见
							</label>
						<input type="hidden" value="${dis.visitComments }" id="linkArea${loop.index }"/>
						</td>
						
						<td class="tdCen">${dis.agentName }</td>
						<td class="tdCen">${dis.otherName }</td>
						<td class="tdCen">${dis.infoTimeStr }</td>
					</tr>
				</c:forEach>


			</table>
	</form>

	</div>
	
	<div id="dialogDiv" class="hidden">
	   <label id="labelArea"></label>
	</div>


</body>
</html>
