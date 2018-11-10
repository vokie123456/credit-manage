<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/dataimport/importexamine/import_examine_edit.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">
	<div class="divBgColor">贷后检查信息</div>
	<div class="content_middle">
		<form id="submitForm" method="post" enctype="multipart/form-data"  target="temp" >
			<table class="textalignCenter tabcustomPeoNoborder" cellpadding="0" cellspacing="0">
				<tr>
					<input type="hidden" id="exam_projectId"
						value="${projectId }" />
					<input type="hidden" id="exam_compCode"
						value="${compCode }" />
					
					
					<input type="hidden" name="examineId" id="examineId"
						value="${examine.examineId }" />
						
						
					<td class="label">
						贷后检查贷款状态：
					</td>
					<td class="content"><bizoption:bizoption id="loanStatus"
							biztypekey="1038" name="loanStatus"
							selected="${examine.loanStatus }" isChoose="true"
							mandatory="true" /> <label class="del_mandatory">&nbsp;&nbsp;*</label></td>
					<td class="label">
						检查方式：
					</td>
					<td class="content"><bizoption:bizoption id="examineMethod"
							biztypekey="1147" name="examineMethod" isChoose="true"
							selected="${examine.examineMethod }" mandatory="true" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
				    
				    <td class="label">贷后检查人：</td>
					<td class="content">
					<select id="examineAgent" name="examineAgent" class="ui-loxia-default ui-corner-all"></select>
					<input type="hidden" id="hiddenWho" value="${examine.examineAgent }" />
					</td>
				
					
					<td class="label">
						 贷后检查时间：
					</td>
					<td class="content"><input loxiaType="date"
						name="examineDoneDate" trim="true" mandatory="true"
						value="${examine.examineDoneDate }" /> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">其他检查人：</td>
					<td class="content"><select
						class="ui-loxia-default ui-corner-all ui-loxia-highlight"
						type="select" name="otherAgent" id="otherAgent"
						multiple="multiple" style="background: #FFF; width: 250px;">
							<c:forEach items="${agentList }" var="item">
								<option value="${item.userId }">${item.userName }</option>
							</c:forEach>
					</select></td>
						<td class="label"></td>
				<td class="content"></td>
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
				<input type="hidden" value="${nums }" id="fileNum" />
				
				<c:if test="${!empty fileList }">
					<c:forEach items="${fileList }" var="item" varStatus="loop">
						<tr>
							<td class="label">已上传文件${loop.index+1 }：</td>
							<td colspan="3" class="content">${item.fileName }.${item.fileFormat }<label
				                             style="color: blue; text-decoration: underline;"
								onclick="download(${item.fileId})">下载</label>&nbsp;&nbsp;<label
								style="color: blue; text-decoration: underline;"
								onclick="del(${item.fileId})">删除</label></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</form>
		<iframe id="temp"  name="temp" class="disNone"></iframe>
	</div>

	<script>
			var v = "${examine.otherAgent }";
			v = ',' + v + ',';
			var s = v.split(',');
			$j('#otherAgent option').each(function() {
				if (v.indexOf(',' + this.value + ',') != -1)
					this.selected = true;
			});
		</script>
	<div class="buttonlist buttonDivWidth">
		<input type="button" class="confirm"
			id="submitVisit" value="提交" loxiaType="button" />
		<input type="button" class="confirm"
			id="backUp" value="返回" loxiaType="button" />
	</div>
</body>
</html>
