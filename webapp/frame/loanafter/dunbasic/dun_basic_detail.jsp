<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/dunbasic/dun_basic_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">催收信息</div>
	<div class="content_middle">
		<table class="col3">
			<tr>
				<input type="hidden" id="clientId" name="clientId"
						value="${clientId }" />
					<input type="hidden" name="dunId" id="dunId"
						value="${dunBasic.dunId }" />
				<td class="label">
					催收方式：
				</td>
				<td class="content"><bizoptionname:showname biztypekey="1041"
						name="dunManner" value="${dunBasic.dunManner }" /></td>
					<td class="label">催收人：</td>
					<td class="content"><showusername:showusername value="${dunBasic.dunWho }" /></td>
			</tr>
			<tr>
				<td class="label">催收时间：</td>
					<td class="content">${dunBasic.dunTime }</td>
			</tr>
			<tr>
				<td class="label">其他催收人：</td>
				<td class="content">${username }</td>
			</tr>
			<c:if test="${!empty fileList }">
				<c:forEach items="${fileList }" var="item" varStatus="loop">
					<tr>
						<td class="label">已上传文件${loop.index+1 }：</td>
						<td class="content">${item.fileName }.${item.fileFormat }<label
							style="color: blue; text-decoration: underline;"
							onclick="download(${item.fileId})">下载</label></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>
