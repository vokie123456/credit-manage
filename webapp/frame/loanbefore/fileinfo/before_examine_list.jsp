<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanbefore/fileinfo/before_examine_list.js'/>"></script>
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
	<div>
		<form id="clientProjectQueryForm">
		<input type="hidden" id="flag" value="${flag}" />
			<table>
				<tr>
					<td class="label">客户名称：</td>
					<td><input loxiaType="input" trim="true" name="clientName" /></td>

					<td class="label">客户经理：</td>
					<td width="150"><user:user bizHall="${bizHalls }"
							roleCode="0101,0102" userId="${userId }" compCode="${compCode }"
							id="broker" name="broker" isChoose="true" /></td>
				</tr>
			</table>

            
              <div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm" id="reload">
					<fmt:message key="button.query" bundle="${lang}" />
				</button>
				<button type="reset" loxiaType="button" class="confirm" id="resets">
					<fmt:message key="button.reset" bundle="${lang}" />
				</button>
				
			  </div>
			
			
		</form>
		<form id="beforeExamineForm" method="post"
			action="<%=request.getContextPath()%>/base/fileinfo/uploadExamineFile.do"
			enctype="multipart/form-data" target="temp">

			<input type="hidden" id="lendinfo_projectId" name="projectId"
				value="${projectId }">

				<table style="width: 100%">
					<tr>
						<td style="width:360px;"><input name="fileField" type="file" id="fileField"/>
							<button type="button" loxiaType="button" class="confirm"
								id="uploadExamine">上传贷前调查报告</button>        
						</td>
						<td id="zzsc" style="display:none;"><img src="<%=request.getContextPath()%>/images/upload.gif" alt="正在加载"   width="20" style="cursor: pointer;"/></td>
					</tr>
				</table>
		</form>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-list"></table>
		<div id="pager"></div>
	</div>
	
    <iframe id="temp" name="temp" style="display: none;"></iframe>
</body>
</html>
