<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/dataimport/importdun/import_dun_edit_list.js'/>"></script>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div id="examineListDiv">
		<div class="divBgColor">催收</div>
		<input type="hidden" id="compCode" value="${compCode }" />

		<input type="hidden" id="clientId" value="${clientId }" />
		<div id="listDiv">
			<table class="textalignCenter tabcustom0" cellpadding="0"
				cellspacing="0" width="100%">
				<tr class="custr custrBag">
					<th>催收人</th>
					<th>催收方式</th>
					<th>催收状态</th>
					<th>催收日期</th>
					<th>文件</th>
					<th class="tabBorderRight0">操作</th>
				</tr>
				<c:forEach items="${list}" var="dun" varStatus="loop">
					<input type="hidden" id="flag${loop.index }" value="${ dun.flag}" />
					<tr class="custr">
						<td><showusername:showusername value="${dun.dunWho }" /></td>
						<td><bizoptionname:showname biztypekey="1041"
								value="${dun.dunManner }" /></td>
						<td><bizoptionname:showname biztypekey="1040"
								value="${dun.dunStatus }" /></td>
						<td><fmt:formatDate value="${dun.dunTime }"
								pattern="yyyy-MM-dd" /></td>
						<td class="tdCla"><label id="manager${loop.index}"
							style="color: blue; text-decoration: underline;"
							onclick="displayTr(${loop.index},${dun.dunId })">管理</label></td>
						<td class="tabBorderRight0"><label class="fileList"
							onclick="edit(${dun.dunId},${clientId })">编辑</label></td>
					</tr>
					<tr id="managerTr${loop.index}" class="disNone">
						<td colspan="7" class="bordertop">
							<table width="500" style="border: 0px;">
								<tr>
									<td align="left" width="100">添加文件</td>
									<td align="left">
										<form id="upLoadForm${loop.index}" method="post"
											action="<%=request.getContextPath()%>/dataimport/dunbasic/uploadFile.do"
											enctype="multipart/form-data" target="temp${loop.index}">
											<!-- 用来作为参数传递 -->
											<input type="hidden" name="dunId" value="${dun.dunId }" /> <input
												type="hidden" name="clientId" value="${dun.clientId }" /> 
												<input type="hidden" name="compCode" value="${compCode }" /><input
												type="file" name="myfiles"
												onchange="upload(${loop.index},${dun.dunId })" />
										</form>
									</td>
									<td class="tabBorderRight0"><iframe id="temp${loop.index}"
											name="temp${loop.index}" class="disNone"></iframe></td>
								</tr>
								<tr>
								</tr>
							</table>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div class="tabbuttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="add">添加催收信息
			</button>
		</div>
	</div>
	<div id="loadDiv"></div>
	<script>
		var v = "${dun.otherAgent }";
		v = ',' + v + ',';
		var s = v.split(',');
		$j('#otherAgent option').each(
			function() {
				if (v.indexOf(','+ this.value+ ',') != -1)
					this.selected = true;
		});
	</script>
</body>
</html>
