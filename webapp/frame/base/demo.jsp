<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title><fmt:message key="title.sys.loginlog" bundle="${lang}" /></title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/base/demo.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/main/unlimitedSelect/linkagesel.js'/>"></script>
<style type="text/css">
.label {
	text-align: left;
}
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<!-- 这里是页面内容区 -->
	<div class="ui-tabs ui-widget ui-widget-content ui-corner-all"
		id="div_out">
		<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
			<li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a href="#div-1">论语</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-2">孟子</a></li>
			<li class="ui-state-default ui-corner-top"><a href="#div-3">孔子</a></li>
		</ul>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom"
			id="div-1">
			
			<textarea id="orgTree" rows="3" cols="100" class="disNone">${orgTree }</textarea>
			<div>
				<select id="demo1"></select>
			</div>
			<div id="serchdiv">
				<div class="divBgColor">
					<fmt:message key="label.search.param" bundle="${lang}" />
				</div>
				<form id="sysLogCommandForm" method="post">
					<table>
						<tr>
							<td class="label"><fmt:message
									key="label.sys.loginlog.loginname" bundle="${lang}" /></td>
							<td width="150"><input id="loginName" name="loginName"
								loxiaType="input" trim="true" /></td>
							<td class="label"><fmt:message
									key="label.sys.loginlog.jobnumber" bundle="${lang}" /></td>
							<td width="150"><input id="jobNumber" name="jobNumber"
								loxiaType="input" trim="true" /></td>
							<td class="label"><fmt:message
									key="label.sys.loginlog.isenabled" bundle="${lang}" /></td>
							<td width="150"><bizoption:bizoption biztypekey="status"
									id="logStatus" name="isEnabled" isChoose="true"
									checkmaster="setInput5" /></td>
						</tr>
						<tr>
							<td class="label">不能为空</td>
							<td width="150"><input id="yy" name="yy" loxiaType="input"
								trim="true" mandatory="true" /></td>
							<td class="label">自定义验证</td>
							<td width="150"><input id="ff" name="ff" loxiaType="input"
								trim="true" mandatory="true" checkmaster="checkyy" /></td>
							<td class="label">数字验证</td>
							<td width="150"><input name="TT" id="TT" loxiaType="number"
								decimal="2" max="50" min="10.33" mandatory="true" /></td>
						</tr>
						<tr>
							<td class="label">
								<fmt:message key="label.sys.loginlog.logintime" bundle="${lang}" />
							</td>
							<td>
								<input id="loginTimeFrom" loxiaType="date" showtime="true" name="loginTimeFrom" checkmaster="setMinDate" readonly="readonly"/>
							</td>
							<td align="center" class="label" checkmaster="setMaxDate">到</td>
							<td>
								<input id="loginTimeTo" loxiaType="date" name="loginTimeTo" checkmaster="setMaxDate" readonly="readonly"/>
							</td>
							<td colspan="2"></td>
						</tr>
						<tr>
							<td class="label">查询或添加</td>
							<td><linkage:select type="province" name="pr1" pid="pr1"
									cid="c1" did="d1" /> <linkage:select type="city" name="c1"
									cid="c1" did="d1" /> <linkage:select type="district" name="d1"
									did="d1" /></td>
							<td align="center" class="label">编辑</td>
							<td><linkage:select type="province" name="p2" pid="p2"
									cid="c2" did="d2" seledProvince="1" /> <linkage:select
									type="city" name="c2" cid="c2" did="d2" seledCity="1" /> <linkage:select
									type="district" name="d2" did="d2" seledDistrict="3" /></td>
							<td align="center" class="label">显示详情</td>
							<td><linkageshow:show type="province" name="showLinkName"
									property="provinceId" /> <linkageshow:show type="city"
									name="showLinkName" property="cityId" /> <linkageshow:show
									type="district" name="showLinkName" property="distId" /></td>
						</tr>
						<tr>
							<td class="label">字典下拉 (查询，添加)</td>
							<td><bizoption:bizoption biztypekey="1002" name="sel"
									isChoose="true" /></td>
							<td align="center" class="label">字典下拉 (编辑)</td>
							<td><bizoption:bizoption biztypekey="1011" id="sel"
									name="sel" isChoose="false" selected="101116" /></td>
							<td align="center" class="label">对应字典详情</td>
							<td><bizoptionname:showname biztypekey="1011" value="101116" /></td>
						</tr>

					</table>
				</form>
				<div class="buttonlist buttonDivWidth">
					<button type="button" id="reload" loxiaType="button"
						class="confirm"
						title="tip：<fmt:message key="tip.sys.loginlog.search" bundle="${lang}"/>">
						<fmt:message key="button.query" bundle="${lang}" />
					</button>

					<button type="button" loxiaType="button" class="confirm"
						title="tip：选中" id="checkl">选中</button>

					<button type="button" loxiaType="button" class="confirm"
						title="tip：选中" id="dialog">open dialog</button>
				</div>
				<table id="tbl-userloginlist"></table>
				<div id="pager"></div>
			</div>
			<div id="details" class="hidden">
				<div class="divBgColor">详细信息：</div>
				<table>
					<tr>
						<td class="label">用户登录时间：</td>
						<td id="loginTime"></td>
						<td class="label">登陆结果：</td>
						<td id="result"></td>

					</tr>
					<tr>
						<td class="label">用户名：</td>
						<td id="userName"></td>
						<td class="label">客户端IP地址</td>
						<td id="clientIp"></td>
					</tr>
					<tr>
						<td class="label">客户端信息：</td>
						<td colspan="3" id="clientData"></td>
					</tr>
				</table>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm"
						title="tip：<fmt:message key="button.toback" bundle="${lang}"/>"
						id="back">
						<fmt:message key="button.toback" bundle="${lang}" />
					</button>
				</div>
			</div>
			<!-- 弹出区域 -->
			<div id="detail" class="hidden">
				<table id="tbl-details"></table>
			</div>
		</div>
		<div class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide" id="div-2">
	<div id="divOp1" >
	<form id="op_form1">
	<p></p>
		<div id="edittable" loxiaType="edittable">
			<table operation="add,delete" append="1" width="90%">
				<thead>
					<tr>
						<th width="1%"><input type="checkbox" /></th>
						<th width="18%">11111</th>
						<th width="18%">22222</th>
						<th width="18%">33333</th>
						<th width="15%">44444</th>
						<th width="10%">55555</th>
						<th width="10%">66666</th>
					</tr>
				</thead>
				<tbody></tbody>
				<tbody>
					<tr>
						<td><input type="checkbox"/></td>
						<td>
							<input name="stvLineCmd.locationCode" trim="true" mandatory="true" />
							<input type="hidden" name="stvLineCmd.location.id" value="" trim="true"/>		
						</td>
						<td>
							<input loxiaType="input" name="stvLineCmd.barCode" trim="true" checkmaster="selectSetValue" />
							<input type="hidden" name="stvLineCmd.skuId" value="" trim="true"/>
						</td>
						<td><input loxiaType="input" name="stvLineCmd.jmCode" trim="true" /></td>
						<td><input loxiaType="input" name="stvLineCmd.keyProperties" trim="true" /></td>
						<td>
							<select name="stvLineCmd.invStatus.id" class="hidden" id="invstatus">
								<option value=""><s:text name='%{warstaselect}'/></option>
							</select>
						</td>
						<td>
							<input loxiaType="number" name="stvLineCmd.quantity" trim="true" mandatory="true" decimal="2"/>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</form>
</div>
		</div>
		<div
			class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide"
			id="div-3">
			选择： <input type="text" id="txtConfirm"/>
			
		</div>
			
<div id="dialog-chgrole">
<h3>用户信息</h3>
<span class="label">用户名</span><span class="field1"></span>
<span class="label">真实姓名</span><span class="field1"></span>
<table id="tbl-rolelist"></table>
<p></p>
<div class="buttonlist">
<button type="button" loxiaType="button" class="confirm"  id="exedemo">确定</button>
<button type="button" loxiaType="button" class="cancel"  id=" canceltt" >取消</button>
</div>
</body>
</html>

