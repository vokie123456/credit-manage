<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 企业   -->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.audit.tasklist" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/loanafter/repaymanage/self_repay_list.js?v='/><c:out value='${now.getTime()}'/> "></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
.label {
	text-align: right;
}
.style_td {
	width: 38% !important;
}

.seleTd select{
	width: 150px;
}
.reply{margin-bottom:10px;width:205px;}
.reply a{width:100px;height:30px;color:#333;line-height:30px;text-align:center;display:inline-block;border:1px solid #ccc;text-decoration:none;}
.reply a:last-child{margin-left:-4px;}
.active{background: #c9c9c9 none repeat scroll 0 0;}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">

<div class="tabSlide">
	<ul class="control clearfix">
		<li><a href="javascript:;" id="noReply" >代扣查询</a></li>
		<li class="border"><a href="javascript:;" id="alreadyReply">主动还款</a></li>
	</ul>
	<div class="content"></div>
</div>
<!--
action 用于重置
-->
	<form id="qryfrm" action="" method="POST">
		<table>
			<tr>
				<td class="label">客户姓名：</td>
				<td>
					<input loxiaType="input" trim="true" name="clientName" />
				</td>
				<td class="label">手机：</td>
				<td>
					<input loxiaType="input" trim="true" name="mobilePhone" />
				</td>
				<td class="label">还款状态：</td>
				<td class="seleTd">
					<bizselect:bizselect biztypekey="1204" startSort="1" endSort="3" id="status" name="transStatus" isChoose="true" />
				</td>
				<td class="label">还款时间：</td>
				<td>
					<input id="startDate" class="style_td" name="startDate" loxiaType="date" trim="true" />
					—
					<input id="endDate" class="style_td" name="endDate" loxiaType="date" trim="true" />
				</td>
                <td class="label">合同编号：</td>
                <td>
                    <input loxiaType="input" trim="true" name="loanCode" />
                </td>
				<%--<td class="label">来源应用：</td>--%>
				<%--<td width="200" colspan="1" class="timerTd">--%>
					<%--<select name="applyCode" loxiaType="select">--%>
						<%--<option value="">请选择</option>--%>
						<%--<c:forEach items ="${amList}" var="mapOne">--%>
							<%--<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>--%>
						<%--</c:forEach>--%>
					<%--</select>--%>
				<%--</td>--%>

			</tr>
		</table>
		<input type="hidden" name="clientId" value="${clientId}" id="clientId" />
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" id="resets">
				<fmt:message key="button.reset" bundle="${lang}" />
			</button>
		</div>
	</form>
	<%@include file="/common/paginationInit.jsp"%>
	<table id="tbl-list"></table>
	<div id="pager"></div>
	<div id="repaymentSearch" style="display:none;">
	  <table class='findList-table' text-align:center;cellpadding=0; cellspacing=0; border=1; style='text-align:center;'>
		  <thead>
		  <tr>
			  <td style="width: 230px">商户流水号</td>
			  <td style="width: 140px">报盘时间</td>
			  <td style="width: 140px">回盘时间</td>
			  <td style="width: 140px">来源应用</td>
			  <td style="width: 90px">扣款结果</td>
			  <td style="width: 120px">扣款金额</td>
			  <td style="width: 260px">回盘信息</td>
		  </tr>
		  </thead>
		  <div style="padding-bottom: 10px;">扣款结果：
		    <select loxiaType="select" trim="true" id="transStatusCode" name="transStatusCode" id="status" class="null" style="width:80px;">
				<option value="">全部</option >
				<option value="120401">交易成功</option>
				<option value="120402">交易失败</option>
				<option value="120403">交易中</option>
			</select>&nbsp;
			  <button type="button" class="confirm ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" id="aaa" role="button" onclick="transDetailQuery();" ria-disabled="false"><span class="ui-button-text">
				查询
			</span></button>
			  <label style="margin-left:200px;">扣款金额合计：</label><span id="transTotal"></span>
		  </div>
		  <tbody id="repaymentSearch_dv">
		  </tbody>
		  <tfoot>
		  <tr><td colspan='7' class='page-td'>
			  <a href='javascript:;' data-type='first'>首页</a>
			  <a href='javascript:;' data-type='prev'>上一页</a>
			  <a href='javascript:;' data-type='next'>下一页</a>
			  <a href='javascript:;' data-type='last'>末页</a>
			  <font id='dangqianye_txl'></font> / <font id='zongye_txl'></font>
			  <select name="pageSize" id="pageSize">
				  <option value="10">10</option>
				  <option value="20">20</option>
				  <option value="50">50</option>
			  </select>
		  </td>
		  </tr>
		  </tfoot>
	  </table>
  </div>
</body>
</html>
