<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<title>资金渠道管理</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/account/fund_channel_manage.js?v='/><c:out value='${now.getTime()}'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
 .capitalChannel{width: 600px;}
  .capitalChannel .protable{width:100%;}
  .capitalChannel .w85{width:85px;}
  table tr td{height:40px;}
  table tr td label{padding-left:12px;}
  .capitalChannel .tdTextRight{text-align: right;}
  .capitalChannel input[type="text"],select{width: 130px; height:25px; padding: 0 5px;}
  .capitalChannel tbody tr td .w440{width:440px;}
  .capitalChannel tbody tr td .w400{width:400px;}
 /*.capitalChannel .linkProduct input[type="checkbox"]{width:70px;}*/
    #pager{height:32px;}
</style>
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="CapitalListForm" method="post">
		<div class="buttonlist buttonDivWidth">
			<button type="button" id="addcapitalChannel" loxiaType="button" class="confirm" title="tip" onclick=""/>
				新增资金渠道
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-list"></table>
		<div id="pager"></div>

	</form>
	<div id="dialog-chgrole"></div>
	   <div id="capitalChannel" style="display:none;">
			<div class="capitalChannel">
				<input type="hidden" name="id"/>
                <input type="hidden" name="createUser"/>
                <input type="hidden" name="updateUser"/>
			<table class="proTable tabs-son">
			<tbody>
			<tr>
				<td class="tdTextRight w85">渠道名称：</td>
				<td>

					<input type="text" name="channelName"  class="cap" data-msg="渠道名称" id="channelName"/>
				</td>
				<td class="tdTextRight w85">渠道代码：</td>
				<td>
					<select name="channelCode" class="cap" data-msg="渠道代码">

					</select>
					<%--<input type="text" name="channelCode" class="cap" data-msg="渠道代码" />--%>
				</td>
			</tr>
			<tr>
				<td class="tdTextRight w85">以房费率：</td>
				<td>
					<input type="number" name="yifangFeeRate" class="cap" data-msg="以房费率"/>%
				</td>
				<td class="tdTextRight w85">固金所费率：</td>
				<td>
					<input type="number" name="thirdPlatformRate" class="cap" data-msg="固金所费率" />%
				</td>
			</tr>
			<tr>
				<td class="tdTextRight w85">渠道类型：</td>
				<td>
					<bizselect:bizselect biztypekey="2124" name="fundChannelType" id="fundChannelType" isChoose="true" />
				</td>
				<td class="tdTextRight w85">是否有效：</td>
				<td>
					<select name="isValid">
						<option value="">请选择</option>
						<option value="1" selected="selected">是</option>
						<option value="0">否</option>
					</select>
				</td>
			</tr>
			<tr>
				<td class="tdTextRight w85">罚息计算类型：</td>
				<td>
					<select name="overdueRateType">
						<option value="">请选择</option>
						<option value="212501" selected="selected">房速贷</option>
						<option value="212502">固金所</option>
					</select>
				</td>
				<td class="tdTextRight w85"></td>
				<td></td>

			</tr>
			<tr>
				<td class="tdTextRight w85">关联产品：</td>
				<td colspan="3" class="linkProduct">


				</td>
			</tr>
			<tr>
				<td class="tdTextRight w85">描述：</td>
				<td colspan="3" >
					<textarea name="remark" id="" cols="80" rows="5" class="w440"></textarea>
				</td>
			</tr>
		</tbody>
		</table>
		</div>
	   </div>
</body>
</html>