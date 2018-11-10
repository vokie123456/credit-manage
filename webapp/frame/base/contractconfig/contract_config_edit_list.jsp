<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/contractconfig/contract_config_edit_list.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<body contextpath="<%=request.getContextPath()%>">
	<div id="contractConfigListDiv">
		<!-- 合同信息 -->
		<input  type="hidden"  id="compCode"  value="${compCode }" />
		<div class="divBgColor">合同模板信息</div>
			<div>
				<table class="tabCenter" border="1" cellpadding="0" cellspacing="0"
					width="100%">
					<th>合同类型</th>
					<th>合同模板编号</th>
					<th>合同模板名称</th>
					<th>是否为主合同</th>
					<th>是否还款更新审结余额</th>
					<th><fmt:message key="label.contract.edit.operate"
							bundle="${lang}" /></th>
					<th><fmt:message key="label.contract.edit.operate"
							bundle="${lang}" /></th>
					<c:forEach items="${ccList}" var="cc" varStatus="loop">
						<tr>
							<td><bizoptionname:showname biztypekey="1143" value="${cc.contractClassCode }"/></td>
							<td>${cc.contractModelCode }</td>
							<td>${cc.contractModelName }</td>
							<td><bizoptionname:showname biztypekey="1001" value="${cc.ifMaster }"/></td>
							<td><bizoptionname:showname biztypekey="1001" value="${cc.ifRepayUpdate }"/></td>
							<td>
							<label id="loadLink"
								style="color: blue; text-decoration: underline;"
								onclick="editContractConfig(${cc.id })">编辑
						   </label></td>
						   <td>
							  <label id="loadLink"
								style="color: blue; text-decoration: underline;"
								onclick="delContractConfig(${cc.id })">删除
							</label></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnAddContractConfig">
					<fmt:message key="label.contract.edit.btn.add" bundle="${lang}" />
				</button>
			</div>
	</div>
	<div id="contractConfigDetailDiv"></div>
</body>

</html>
