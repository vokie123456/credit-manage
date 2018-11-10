<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<%--<script type="text/javascript"--%>
	<%--src="<c:url value='/scripts/frame/client/client_thirdParty.js?v=1.4.13'/>"></script>--%>

<style type="text/css">
.style_td {
	width: 45% !important;
}
.label {
	text-align: right;
}
.gjTable{width: 100%; text-align: left;}
.gjTable sup{color:red;}
.gjTable select{width: 85%;}
.gjTable textarea{width: 90%; resize: none;}
.titText{width: 75px; text-align: right;}

.findList-table{
	text-align: center;
	width: 100%;
	border-top: 1px solid #CFCFCF;
	border-right: 1px solid #CFCFCF;
}

.findList-table thead td{
	background: rgba(242, 242, 242, 0.776);
}

.findList-table td{
	border-left: 1px solid #CFCFCF;
	border-bottom: 1px solid #CFCFCF;
}

</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="lendListForm" method="post">
		<table class="client_adv">
			<tr>
				<td class="label">客户：</td>
				<td>
					<input id="" name="clientName" loxiaType="input" trim="true" />
				</td>
				<td class="label">手机号码：</td>
				<td>
					<input id="" name="mobile" loxiaType="input" trim="true" />
				</td>
				<td class="label">接通结果：</td>
				<td>
					<bizselect:bizselect  biztypekey="1655" startSort="1" endSort="5" id="lastPustResult" name="lastPustResult" isChoose="true" />
				</td>
				<td class="label">来源渠道：</td>
				<td>
					<select name="source" loxiaType="select">
						<option value="" >请选择</option>
						<c:forEach items ="${map}" var="mapOne">
							<option value=${ mapOne.key } > ${mapOne.value }</option>
						</c:forEach>
					</select>
				</td>
				<td class="label">推送时间：</td>
				<td>
					<input class="style_td" name="pushTimeStart" loxiaType="date" trim="true" />到
					<input  class="style_td" name="pushTimeEnd" loxiaType="date" trim="true" />
				</td>
			</tr>
			<tr>

				<td class="label">分配处理人：</td>
				<td>
					<select id="pushHander" name="pushHander">
						<option value="">请选择</option>
						<c:forEach items="${pusherHanders}" var="pusher">
							<option value="${pusher.userId}">${pusher.userNames}</option>
						</c:forEach>
					</select>
				</td>
                <td class="label">是否注册：</td>
                <td>
                   <select id="isRegister" name="isRegister">
                       <option value="">请选择</option>
                       <option value="0">未注册</option>
                       <option value="1">已注册</option>
                   </select>
                </td>
				<td class="label">跟进状态：</td>
				<td>
					<bizselect:bizselect  biztypekey="2123" startSort="1" endSort="3" id="followStatus" name="followStatus" isChoose="true" />
				</td>
                <td class="label">最后分配时间：</td>
                <td>
                    <input  class="style_td" name="lastTimeStart" loxiaType="date" trim="true" />到
                    <input  class="style_td" name="lastTimeEnd" loxiaType="date" trim="true" />
                </td>

				<!--<td class="label">注册日期：</td>
				<td>
					<input id="" class="style_td" name="registerTimeStart" loxiaType="date" trim="true" />到
					<input id="" class="style_td" name="registerTimeEnd" loxiaType="date" trim="true" />
				</td> -->
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
		 	<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm"
				title="tip" id="reset"/>
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" loxiaType="button" class="confirm" id="batchAllocation" />
				手工分配
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
<script type="text/javascript"
		src="<c:url value='/scripts/frame/client/client_thirdParty.js?v=1.4.13'/>"></script>
</html>
