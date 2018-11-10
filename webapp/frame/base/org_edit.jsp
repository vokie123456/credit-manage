<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>编辑部门</title>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="orgForm" method="post">
		<table>
			<tr>
				<!-- 
						<td>部门编号:</td>
						 -->
				<td><input type="hidden" name="companyCode" id="companyCode"
					value="${compCode }" /> <input type="hidden" id="nowUpcode"
					name="nowUpcode" value="${nowUpcode }" /><input id="orgCode"
					name="orgCode" type="hidden" readonly="readonly"
					value="${orgCode }"></td>
			</tr>
			<tr>
				<td class="label width130" >部门名称:</td>
				<td><input id="orgName" name="orgName" loxiaType="input"
					trim="true" mandatory="true" value="${orgName }"><label
					class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label width130">上级部门:</td>
				<td><select id="upCode" name="upCode"
					class="ui-loxia-default ui-corner-all ui-loxia-highlight">
						<c:forEach var="item" items="${compOrgList }">
							<option value="${item.orgCode }"
								<c:if test="${item.orgCode==upCode}">selected='selected'</c:if>>${item.orgName }</option>
						</c:forEach>
				</select><label class="del_mandatory">&nbsp;&nbsp;*</label></td>
			</tr>
			<tr>
				<td class="label" style="width:130px;">是否营业厅:</td>
				<td><radio:radio biztypekey="1001" id="isBusiness"
						name="isBusiness" checked="${isBusiness }"></radio:radio></td>
			</tr>
			<tr>
				<td class="label" style="width:130px;">部门类型:</td>
				<td><radio:radio biztypekey="1185" id="orgType"
						name="orgType" checked="${organization.orgType}"></radio:radio></td>
			</tr>
		</table>
	</form>
</body>
</html>
