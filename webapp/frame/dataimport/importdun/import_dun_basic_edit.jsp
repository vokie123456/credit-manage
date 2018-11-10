<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/dataimport/importdun/import_dun_basic_edit.js'/>"></script>
</head>
<style>
	.content ul{
	padding: 0px; 
	}
</style>
<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">催收信息</div>
	<input type="hidden" id="edit_compCode" value="${compCode }" />
	<div class="content_middle">
		<form id="submitForm" method="post" enctype="multipart/form-data"
		target="temp" >
			<table class="col3">
				<tr>
					<input type="hidden" id="clientId" name="clientId"
						value="${clientId }" />
					<input type="hidden" name="dunId" id="dunId"
						value="${dunBasic.dunId }" />
					<td class="label" valign="bottom">催收方式：</td>
					<td class="content" width="150" colspan="3" valign="top"><checkBox:checkBox
							biztypekey="1041" name="dunManners" checked="${dunBasic.dunManner }" /><label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<!-- 回访人 -->
					<td class="label">催收人：</td>
					<td class="content">
					<select id="dunWho" name="dunWho" class="ui-loxia-default ui-corner-all"></select>
					<input type="hidden" id="hiddenWho" value="${dunBasic.dunWho }" />
					</td>

					<td class="label">催收时间：</td>
					<td class="content"><input loxiaType="date" name="dunTime"
						trim="true" mandatory="true" value="${dunBasic.dunTime }" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">其他催收人：</td>
					<td colspan="3"><select
						class="ui-loxia-default ui-corner-all ui-loxia-highlight"
						type="select" name="otherAgent" id="otherAgent"
						multiple="multiple" style="background: #FFF; width: 250px;">
							<c:forEach items="${agentList }" var="item">
								<option value="${item.userId }">${item.userName }</option>
							</c:forEach>
					</select></td>
				</tr>
			</table>
			<table class="col3">
				<tr>
					<td class="label">添加文件：</td>
					<td class="content"><input type="file" name="myfiles"
						id="myfiles" /></td>
					<td class="label"></td>
					<td class="content"></td>
					
				</tr>
				<c:if test="${!empty fileList }">
					<c:forEach items="${fileList }" var="item" varStatus="loop">
						<tr>
							<td class="label">已上传文件${loop.index+1 }：</td>
							<td colspan="3" class="content">${item.fileName }.${item.fileFormat }<label
								style="color: blue; text-decoration: underline;"
								onclick="download(${item.fileId})">下载</label>&nbsp;&nbsp;<label
								style="color: blue; text-decoration: underline;"
								onclick="del(${item.fileId},${dunBasic.dunId },${clientId })">删除</label></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</form>
	</div>
	<script>
			var v = "${dunBasic.otherAgent }";
			v = ',' + v + ',';
			var s = v.split(',');
			$j('#otherAgent option').each(function() {
				if (v.indexOf(',' + this.value + ',') != -1)
					this.selected = true;
			});
		</script>
	<div class="buttonlist buttonDivWidth">
		<input type="button" class="confirm" id="submitVisit" value="完成催收"
			loxiaType="button" /> <input type="button" class="confirm"
			id="backUp" value="返回" loxiaType="button" />
	</div>
	<iframe id="temp" name="temp" class="disNone"></iframe>
</body>
</html>
