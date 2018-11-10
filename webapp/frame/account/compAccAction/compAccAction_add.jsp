<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <%@include file="/common/meta.jsp"%>
  <fmt:setBundle basename="messages" var="lang" />
  <title><fmt:message key="title.apply.applyDetail"
                      bundle="${lang}" /></title>
  <script type="text/javascript"
          src="<c:url value='/scripts/frame/account/compAccAction/compAccAction_edit.js'/>"></script>
  <style type="text/css">
    .label {
      text-align: left;
    }

    .del_all {
      text-align: right;
    }
  </style>
  <linkage:define />
</head>
<body contextpath="<%=request.getContextPath()%>">
<form id="compAccActionAddForm" method="post">
  <div class="divBgColor">新增会计分录</div>
  <div class="ui-tabs-panel ui-widget-content ui-corner-bottom">
  <table class="col3">
    <tr>
      <td class="label">记账动作名称:</td>
      <td class="content">
      	<select id="accountActionCode" name="accountActionCode"
						class="null ui-loxia-default ui-corner-all">
							<c:forEach items="${accActionlist }" var="accAction">
								<option value="${accAction.actionCode }">${accAction.actionName }</option>
							</c:forEach>
		</select>
      </td>
      <td class="label"></td>
      <td class="content"></td>
    </tr>
    <tr>
      <td class="label">账套名称:</td>
      <td align="content">
      		<select id="refAccountId" name="refAccountId"
						class="null ui-loxia-default ui-corner-all">
							<c:forEach items="${compacclist }" var="compacc">
								<option value="${compacc.id }">${compacc.accountName }</option>
							</c:forEach>
			</select>
      </td>
      <td class="label"></td>
      <td class="content"></td>
    </tr>
    <tr>
      <td class="label">借方科目名称:</td>
      <td align="content">
      		<select id="subjectD" name="subjectD"
						class="null ui-loxia-default ui-corner-all">
							<c:forEach items="${accsublist }" var="accsub">
								<option value="${accsub.subjectId }">${accsub.subjectTitle }</option>
							</c:forEach>
			</select>
      </td>
      <td class="label"></td>
      <td class="content"></td>
    </tr>
     <tr>
      <td class="label">贷方科目名称:</td>
      <td align="content">
      		<select id="subjectC" name="subjectC"
						class="null ui-loxia-default ui-corner-all">
							<c:forEach items="${accsublist }" var="accsub">
								<option value="${accsub.subjectId }">${accsub.subjectTitle }</option>
							</c:forEach>
			</select>

      </td>
      <td class="label"></td>
      <td class="content"></td>
    </tr>
  </table>
  <div class="buttonlist buttonDivWidth">
    <button type="submit" loxiaType="button" class="confirm" id="btnSave">保存</button>
    </div>
  </div>
</form>
</body>
</html>

