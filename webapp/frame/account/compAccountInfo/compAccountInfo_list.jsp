<%--
  Created by IntelliJ IDEA.
  User: Hexy
  Date: 2014/9/15
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%@include file="/common/meta.jsp" %>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <fmt:setBundle basename="messages" var="lang"/>
  <title>公司账套列表</title>
  <script type="text/javascript"
          src="<c:url value='/scripts/frame/account/compAccountInfo/compAccountInfo_list.js'/>"></script>
  <script type="text/javascript"
          src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
  <style type="text/css">
    .label {
      text-align: left;
    }
  </style>
  <linkage:define/>
</head>
<body contextpath="<%=request.getContextPath()%>">
<div>
  <form id="compAccountInfoListForm" method="POST">
    <table>
      <tr>
        <td class="label">账套名称：</td>
        <td><input loxiaType="input" name="accountName"/></td>
        <td class="label">默认账套：</td>
        <td width="150"><bizoption:bizoption biztypekey="1001"
                                             id="isDefault" name="isDefault" isChoose="true"/></td>
      </tr>
    </table>
  </form>
  <div class="buttonlist buttonDivWidth">
    <button type="button" loxiaType="button" class="confirm"
            title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
            id="reload">
      <fmt:message key="button.query" bundle="${lang}"/>
    </button>
    <button type="button" loxiaType="button" class="confirm"
            title="tip：添加账套" id="toAddCompAccountInfo">添加账套
    </button>
  </div>
  <%@include file="/common/paginationInit.jsp" %>
  <table id="tbl-researchlist"></table>
  <div id="pager"></div>
</div>
</body>
</html>
