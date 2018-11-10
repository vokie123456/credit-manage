<%--
  Created by IntelliJ IDEA.
  User: Hexy
  Date: 2014/9/15
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <%@include file="/common/meta.jsp"%>
  <fmt:setBundle basename="messages" var="lang" />
  <title><fmt:message key="title.apply.applyDetail"
                      bundle="${lang}" /></title>
  <script type="text/javascript"
          src="<c:url value='/scripts/frame/account/compAccountInfo/compAccountInfo_edit.js'/>"></script>
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
<form id="compAccountInfoAddForm" method="post">
  <input name="id" type="hidden" value="${compAccountInfo.id}"/>
  <input name="isDefault" type="hidden" value="${compAccountInfo.isDefault}"/>
  <div class="divBgColor">公司账套编辑</div>
  <table>
  <!--   <tr>
      <td class="label">账套编号：</td>
      <td align="left">
        <input id="accountCode" name="accountCode"
                              loxiaType="input" trim="true" mandatory="true"
                              value="${compAccountInfo.accountCode }"/>
        <label class="del_mandatory">&nbsp;&nbsp;*</label>
      </td>
    </tr>
     -->
    <tr>
      <td class="label">账套名称：${param.accountName }</td>
      <td align="left">
        <input id="accountName" name="accountName"   class="floatleft"
                              loxiaType="input" trim="true" 
                              value="${compAccountInfo.accountName }" mandatory="true"/>
        <label class="del_mandatory">&nbsp;&nbsp;*</label>
      </td>
    </tr>
    <tr>
      <td class="label">备注：</td>
      <td align="left">
        <input id="remark" name="remark" loxiaType="input" trim="true"
                              value="${compAccountInfo.remark }" />
    </tr>

  </table>
  <div class="buttonlist buttonDivWidth">
    <button type="submit" loxiaType="button" class="confirm" id="btnSave">保存</button>
  </div>
</form>
</body>
</html>
