<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />
<title>签约管理</title>
<script type="text/javascript"
	src="<c:url value='/scripts/frame/workflow/taskList/sign_contract_manage.js?v=3.8.4'/>"></script>
<script type="text/javascript"
	src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<script type="text/javascript"
			src="<c:url value='/scripts/my-jquery-ajax.js?v=2.0.0'/>"></script>
<linkage:define />
</head>
<style>
    .anjian table{border-collapse: collapse;}
    .anjian tr td{border:1px solid #333;padding:8px;}
</style>
<body contextpath="<%=request.getContextPath()%>">
	<form id="signListForm" method="post">
		<table>
			<tr>
				<td class="label">客户：</td>
				<td width="150"><input name="clientName" loxiaType="input"
					trim="true" /></td>
				<td class="label">授信状态：</td>
				<td width="150"><select name="stat" id="stat">
						<option selected="selected" value="120203">授信未使用</option>
						<option value="120206">提现中</option>
						<option value="120207,120210">授信失败</option>
				</select></td>
				<td class="label">授信时间：</td>
				<td class="width200"><input id="finalDateBegin" name="finalDateBegin"
							loxiaType="date" trim="true" style="width: 43%"/>-<input id="finalDateEnd" name="finalDateEnd"
							loxiaType="date" trim="true" style="width: 43%"/></td>
				<td class="label">操作时间：</td>
				<td class="width200"><input id="repealTimeBegin" name="repealTimeBegin"
							loxiaType="date" trim="true" style="width: 43%"/>-<input id="repealTimeEnd" name="repealTimeEnd"
							loxiaType="date" trim="true" style="width: 43%"/></td>
			</tr>
			<tr>
				<td class="label">手机：</td>
				<td width="150"><input name="mobilePhone" loxiaType="input"
					trim="true" /></td>
				<td class="label">产品大类：</td>
				<td width="150"><select name="creditroductId" loxiaType="select">
						<option value="">请选择</option>
						<c:forEach var="product" items="${products}">
							<option value="${product.id}">${product.productName}</option>
						</c:forEach>
				</select></td>
			</tr>
		</table>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm"
				title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
				id="reload">
				<fmt:message key="button.query" bundle="${lang}" />
			</button>
			<button type="reset" loxiaType="button" class="confirm" title="tip"
				id="reset" />
			<fmt:message key="button.reset" bundle="${lang}" />
			</button>
			<button type="button" id="caseRefuse" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.caserecue" bundle="${lang}"/>">
				案件拒绝
			</button>
			<button type="button" id="caseCancel" loxiaType="button" class="confirm" title="tip:<fmt:message key="tip.sys.audit.casecancel" bundle="${lang}"/>">
				案件取消
			</button>
		</div>
		<%@include file="/common/paginationInit.jsp"%>
		<table id="tbl-signlist"></table>
		<div id="pager"></div>
	</form>

</body>
<div id="dialog-chgrole"></div>
<div id="anjianRefuse" style="display:none;">
<div class="anjian" >
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="label">拒绝原因</td>
				<td>
					<p>
						<select id="resue_slt1" name="reasonCode"  onchange="selectAudit(this,'resue_operReason')">
							<option value="">请选择</option>
							<%-- <c:forEach items="${audits }" var="ite">
								<option value="${ite.typeCode }">${ite.typeName }</option>
							</c:forEach> --%>
						</select>
						<select id="resue_operReason" name="subReasonCode">
							<option value="">请选择</option>
						</select>
					</p>
				</td>
			</tr>
			<tr>
				<td class="label">拒绝意见</td>
				<td >
					<textarea name="checkInfo" id="resue_season" cols="60" rows="10" ></textarea>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input  id ="resue_isInbackbox" name="inBlackList" type="checkbox"/>
					<label for="resue_isInbackbox">加入黑名单</label>
					<bizselect:bizselect biztypekey="1194" startSort="1" endSort="8" id="resue_backboxCode" name="blacklistSource" isChoose="true"/>
				</td>
			</tr>
		</table>
</div>
</div>
<div id="anjianCancel" style="display:none;">
  <div class="anjian">
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td class="label">取消原因</td>
				<td>
					<p>
						<select id="cancel_slt1" name="subReasonCode" >
							<option value="">请选择</option>
							<%--<c:forEach items="${cancelReasons }" var="ite">--%>
								<%--<option value="${ite.sutypeCode }">${ite.sutypeName }</option>--%>
							<%--</c:forEach>--%>
						</select>
					</p>
				</td>
			</tr>
			<tr>
				<td class="label">备注</td>
				<td >
					<textarea name="checkInfo" id="cancel_info" cols="60" rows="10" ></textarea>
				</td>
			</tr>
		</table>
	</div>
</div>
</html>
