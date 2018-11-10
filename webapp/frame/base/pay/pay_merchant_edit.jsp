<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/pay/pay_merchant_edit.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<div>
		<form id="frm-addconfig" method="POST" enctype="multipart/form-data"
			target="temp">
			<input name="id" type="hidden" value="${pc.id}" />
			<input id="compCode" type="hidden" value="${compCode}" />
			<table>
				<tr>
					<td class="label">渠道名称：</td>
					<td>
					
					<select name="channelCode" class="ui-loxia-default ui-corner-all" id="code"></select>
					<input type="hidden" id="hiddenCode" value="${pc.channelCode}">
					
					</td>
				</tr>
				<tr>

					<td class="label">商户号：</td>
					<td><input name="merchantId" loxiaType="input" trim="true"
						value="${pc.merchantId}"></td>
				</tr>
				<tr>
					<td class="label">用户名：</td>
					<td><input name="userName" loxiaType="input" trim="true"
						value="${pc.userName}"></td>
				</tr>
				<tr>
					<td class="label">密码：</td>
					<td><input name="password" loxiaType="input" trim="true"
						value="${pc.password}"></td>
				</tr>

				<tr>
					<td class="label">私钥：</td>
					<c:if test="${pc.pfxName ne null}">
					<td>${pc.pfxName}</td>
					</c:if>
					
					<td><input type="file" name="myfiles" id="myfiles" /></td>
				</tr>
				<tr>
					<td class="label">私钥密码：</td>
					<td><input name="pfxPassword" loxiaType="input" trim="true"
						value="${pc.pfxPassword}"></td>
				</tr>
				<tr>
					<td class="label">是否有效：</td>
					<td><bizoption:bizoption name="ifValid" biztypekey="1001"
							selected="${pc.ifValid }"></bizoption:bizoption></td>
				</tr>
			</table>
			<div class="buttonlist buttonDivWidth">
				<button type="button" loxiaType="button" class="confirm"
					id="btnSave">保存</button>

				<button type="button" loxiaType="button" class="confirm"
					id="backoff">返回</button>
			</div>
		</form>
		
	</div>
    <iframe id="temp" name="temp"  class="disNone"></iframe>
</body>
</html>