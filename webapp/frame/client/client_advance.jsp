<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<!-- 放款查询列表-->
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/client/client_advance.js?v=3.5'/>"></script>

<style type="text/css">
.style_td {
	width: 45% !important;
}
.label {
	text-align: right;
}
.client_adv{width:100%;}
.client_adv td{height:30px; line-height:30px; text-align:right;}
.left-tex{width:100%;}
.left-tex  td:last-child{text-align:left;}
.left-tex td select{width:150px;}
.left-tex td textarea{width:350px; height:150px;resize:none}

.client-find{width:1050px; text-align:center;white-space:normal;}
/*示例图轮播样式*/
.Carousel{background: #FFFFFF; display:none; width: 320px; height: 400px; position: absolute; right: -7px; top: -22px; overflow: hidden;}
.Carousel .sildeUl{clear: both; position: absolute; left: 0; top: 0; padding:0px !important;}
.Carousel .sildeUl li{list-style: none; float: left; width: 320px; height: 400px;}
.Carousel .CarBtn{display: none; width: 30px; height: 40px; position: absolute; top: 50%; margin-top: -20px; cursor: pointer;}
.Carousel .prevBtn{background: url(../../images/examples/left.png) center no-repeat; left: 0;}
.Carousel .nextBtn{background: url(../../images/examples/right.png) center no-repeat; right: 0;}

.dayDv{position: relative;}
.dayDv .moreA{position: absolute; right: -50px; top: 3px;}
.timeDv{position: relative; display: none;}
.timeDv input{width: 85px;}
.timeDv .closeA{position: absolute; right: -40px; top: 3px;}
</style>
<linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
	<form id="lendListForm" method="post">
		<table>
			<tr>
				<td class="label">客户：</td>
				<td width="150"><input id="" name="clientName"
					loxiaType="input" trim="true" /></td>
				<td class="label">手机号码：</td>
				<td width="150"><input id="" name="mobilePhone"
					loxiaType="input" trim="true" /></td>
				<td class="label">客户编号：</td>
				<td width="150"><input id="" name="clientCode"
					loxiaType="input" trim="true" /></td>
				<td class="label">推进人：</td>
				<td width="150"><input id="" name="userName"
					loxiaType="input" trim="true" /></td>
			</tr>
			<tr>
				<td class="label">推进方式：</td>
				<td>
					<bizselect:bizselect biztypekey="1900"
						startSort="1" endSort="5" id="advanceWay"
						name="advanceWay" isChoose="true" />
				</td>
				<td class="label">申请产品：</td>
				<td width="150">
					<select name="productMaxId" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach items="${productMaxList}" var="pm" >
							<option value="${ pm.id}">${ pm.productName }</option>
						</c:forEach>
					</select>
				</td>
				<td class="label">最后推进时间：</td>
				<td width="150">
					<input id="" name="beginAdvanceTime" loxiaType="date" trim="true" />到
				</td>
				<td width="150">	
					<input id="" name="endAdvanceTime" loxiaType="date" trim="true" />
				</td>
			</tr>
			<tr>
				<td class="label">推进原因：</td>
				<td width="150">
					<select name="adcanceType" loxiaType="select">
						<option value="0">请选择</option>
						<option value="1">注册未提交授信</option>
						<option value="2">初审退回补件</option>
						<option value="3">审批拒绝</option>
						<option value="4">授信未提现</option>
					</select>
				</td>
				<td class="label">推进结果：</td>
				 <td width="150">
				 	<select name="advanceResult" id="advanceResult" loxiaType="select">
						<option value="">请选择</option>
						<option value="124501">待推进</option>
						<option value="124506">继续跟进客户</option>
					</select>
				</td> 
				<td class="label"> 归属地：</td>
				<td width="150">
					<input id="" name="zone" loxiaType="input" trim="true" />
				</td>
				<td class="label">任务创建时间：</td>
				<td>
					<div class="dayDv">
						<label>
							<input type="radio" name="createTimes" value="1"/>
							<span>两小时</span>
						</label>
						<label>
							<input type="radio" name="createTimes" value="2"/>
							<span>六小时</span>
						</label>
						<label>
							<input type="radio" name="createTimes" value="3"/>
							<span>半天内</span>
						</label>
						<input type="radio" name="createTimes" style="display: none;" id="createTimes" value="4" />
						<a class="moreA" href="javascript:;">更多条件</a>
					</div>
					<div class="timeDv">
						<input id="dp1"  loxiaType="date" trim="true" name="beginCreateTime" />
						-
						<input id="dp2"  loxiaType="date" trim="true" name="endCreateTime" />
						<a class="closeA" href="javascript:;">关闭</a>
					</div>
				</td> 
			</tr>
			<tr>
				<td class="label"> 客户来源：</td>
				<td width="150">
					<bizselect:bizselect biztypekey="1248"
								startSort="1" endSort="2" id="status"
								name="customerSource" isChoose="true" />
				</td> 
				<td class="label"> 分配状态：</td>
				<td width="150">
					<select name="distState"  loxiaType="select">
						<option value="">全部</option>
						<option value="0">待分配</option>
						<option value="1">已分配</option>
					</select>
				</td> 
				
				<td class="label">常住城市：</td>
				<td class="width200">
					<linkage:select type="province" name="permanentProvince" pid="pr1" cid="c1" styleClass="style_td"/>
					<linkage:select type="city" name="permanentCity" pid="pr1" cid="c1" styleClass="style_td"/>
				</td>
				<td class="label"></td>
				<td class="width200">
					
				</td>
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
				批量分派推进
			</button>
			<table>
				<tr>
					<td><input class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only ui-state-hover" type="button" value="待推进" id="toBePushed"/></td>
					<td><input type="button" value="已推进" id="alreadyAdvance"/></td>
					<td><input type="button" value="推进成功" id="promoteSuccess"/></td>
					<td><input type="button" value="推进失败" id="promoteFail"/></td>
				</tr>
			</table>
		</div>
		<%@include file="/common/paginationInit.jsp" %>
		<table id="tbl-lendlist"></table>
		<div id="pager"></div>
	</form>
<div id="dialog-chgrole"></div>
</body>
</html>
