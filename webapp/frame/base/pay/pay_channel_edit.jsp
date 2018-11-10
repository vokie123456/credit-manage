<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<title>系统配置编辑</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/pay/pay_channel_edit.js'/>"></script>
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
			<table>
				<tr>
					<td class="label">支付渠道编号：</td>
					<c:if test="${pc.channelCode eq null }">
						<td><input name="channelCode" loxiaType="input" trim="true"
							value="${pc.channelCode}" mandatory="true"><label
							class="del_mandatory">&nbsp;&nbsp;*</label></td>
					</c:if>
					<c:if test="${pc.channelCode ne null }">
						<td>${pc.channelCode} <input type="hidden" name="channelCode"
							trim="true" value="${pc.channelCode}"></td>
					</c:if>
				</tr>
				<tr>

					<td class="label">渠道名称：</td>
					<td><input name="channelName" loxiaType="input" trim="true"
						value="${pc.channelName}" mandatory="true"> <label
						class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				<tr>
					<td class="label">通联接口 url：</td>
					<td><input name="channelUrl" loxiaType="input" trim="true"
						value="${pc.channelUrl}"></td>
				</tr>
				
				<tr>
					<td class="label">通联扣款业务类型：</td>
					<td><input name="tlBusinessCode" loxiaType="input" trim="true"
						value="${pc.tlBusinessCode}"></td>
				</tr>
				
				<tr>
					<td class="label">是否需要验证：</td>
					<td><bizoption:bizoption name="tlIsVerify" biztypekey="1001"
							selected="${pc.tlIsVerify }"></bizoption:bizoption></td>
				</tr>
				
				
				<tr>
					<td class="label">公钥密码：</td>
					<td><input name="tltcerPassword" loxiaType="input" trim="true"
						value="${pc.tltcerPassword}"></td>
				</tr>

				<tr>
					<td class="label">公钥地址：</td>
					<c:if test="${pc.tltcerPath ne null}">
					<td>${pc.tltcerPath}</td>
					</c:if>
					
					<td><input type="file" name="myfiles" id="myfiles" /></td>
				</tr>
				
				<tr>
					<td class="label">银联版本号：</td>
					<td><input name="ylVersion" loxiaType="input" trim="true"
						value="${pc.ylVersion}"></td>
				</tr>
				<tr>
					<td class="label">银联网关号：</td>
					<td><input name="ylGateId" loxiaType="input" trim="true"
						value="${pc.ylGateId}"></td>
				</tr>
				<tr>
					<td class="label">银联交易url：</td>
					<td><input name="ylTradeUrl" loxiaType="input" trim="true"
						value="${pc.ylTradeUrl}"></td>
				</tr>
				<tr>
					<td class="label">银联查询url：</td>
					<td><input name="ylQueryUrl" loxiaType="input" trim="true"
						value="${pc.ylQueryUrl}"></td>
				</tr>
				<tr>
					<td class="label">银联白名单url：</td>
					<td><input name="ylWhiteUrl" loxiaType="input" trim="true"
						value="${pc.ylWhiteUrl}"></td>
				</tr>
				
				<tr>
					<td class="label">是否有效：</td>
					<td><bizoption:bizoption name="ifValid" biztypekey="1001"
							selected="${pc.ifValid }"></bizoption:bizoption></td>
				</tr>
				<tr>
					<td class="label">描述备注：</td>
					<td><input name="channelDesc" loxiaType="input" trim="true"
						value="${pc.channelDesc}"></td>
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