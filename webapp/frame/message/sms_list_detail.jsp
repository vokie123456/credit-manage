<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
<%@include file="/common/meta.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<fmt:setBundle basename="messages" var="lang" />
<title>短信列表详情</title>
<style type="text/css">
.label {
	text-align: left;
}
</style>
</head>
<body>
	<div class="divBgColor">
		<fmt:message key="label.person.sign.base" bundle="${lang}" />
	</div>
<table class="textalignCenter tabcustomPeo" cellpadding="0"
		cellspacing="0">
		<tr>
			<td class="label BgColor">项目编号：</td>
			<td  class="content">${smsListVo.projectCode}</td>   
			<%-- <td class="label">发送条件：</td>
			<td width="150" align="left">${smsListVo.actionCode}</td> --%>
			<td class="label BgColor">账单编号：</td>
			<td  class="content tabBorderRight">${smsListVo.billCode}</td>
		</tr>
		<tr>
			<td class="label BgColor">客户名称：</td>
			<td  class="content">${smsListVo.clientName}</td>
			<td class="label BgColor">手机号码：</td>
			<td  class="content tabBorderRight">${smsListVo.phone}</td>
		</tr>
		<tr>
			<td class="label BgColor">短信标题：</td>
			<td  class="content">${smsListVo.smsTitle}</td>
			<td class="label BgColor">状态：</td>
			<td  class="content tabBorderRight">${smsListVo.subtypeName}</td>
		</tr>
		<tr>
			<td class="label BgColor">短信内容：</td>
			<td colspan="3"  class="content tabBorderRight">${smsListVo.smsContent}</td>
		</tr>
		<tr>
			<td class="label BgColor">创建时间：</td>
			<td  class="content"><fmt:formatDate value='${smsListVo.createTime}' pattern='yyyy-MM-dd HH:ss:mm'/></td>
			<td class="label BgColor">发送时间：</td>
			<td  class="content tabBorderRight"><fmt:formatDate value='${smsListVo.sendTime}' pattern='yyyy-MM-dd HH:ss:mm'/></td>
		</tr>
		<%-- <tr>
			<td class="label">账单：</td>
			<td width="150" align="left">${smsListVo.billId}</td>
			<td class="label">发送IP：</td>
			<td width="150" align="left">${smsListVo.sendIp}</td>
		</tr>
		<tr>
			<td class="label">发送端口：</td>
			<td width="150" align="left">${smsListVo.sendPort}</td>
			<td class="label">发送通道：</td>
			<td width="150" align="left">${smsListVo.sendChannel}</td>
		</tr> --%>
	</table>
	<div  class="tabbuttonlist buttonDivWidth">
		<input type="button" class="confirm" id="cancel"  value="返回"   loxiaType="button"  onclick="javascript:window.location.href='<%=request.getContextPath()%>/message/smsList/toSmsList.do' "/>
	</div>
</body>
</html>
