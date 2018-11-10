
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<%@include file="/common/metaload.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/whitelist/white_add_dialog.js'/>"></script>

</head>

<form id="whiteForm" method="post">
    <input type="hidden" name="clientId" value="${clientId}" />
				
	<table class="col3">
				<td class="label">开户行：</td>

				<td class="content"><input id="openBank" name="openBank"
					loxiaType="input" trim="true" value="" mandatory="true"/><label
				class="del_mandatory">&nbsp;&nbsp;*</label>
				</td>
					
				<tr>
				   <td class="label">银行卡号：</td>
					<td class="content"><input loxiaType="input"
						name="bankCardNo" value="" mandatory="true"/><label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				
				<tr>
				   <td class="label">手机号：</td>
					<td class="content"><input loxiaType="input" checkmaster="validatemobile"
						name="mobliePhone" value="" mandatory="true"/><label
				class="del_mandatory">&nbsp;&nbsp;*</label></td>
				</tr>
				
			</table>
	<div class="buttonlist buttonDivWidth" style="text-align:center;">
		<button type="button" loxiaType="button" class="confirm"
			id="save">保存</button>
		<button type="button" loxiaType="button" class="confirm" id="cancel">关闭</button>
	</div>
</form>