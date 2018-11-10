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
    <title>结算管理</title>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/account/settlement-manage.js?v=2.1.3'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <style type="text/css">

    </style>
</head>
<body contextpath="<%=request.getContextPath()%>">
<form id="settleForm" method="POST">
    <table>
        <tr>
            <td class="label">客户姓名：</td>
            <td>
                <input type="text" name="clientName">
            </td>
            <td class="label">手机：</td>
            <td>
                <input type="text" name="mobilePhone">
            </td>

            <td class="label">结算状态：</td>
            <td>
                <select name="settlementstatus">
                    <option value="">请选择</option>
                    <c:forEach items="${settlementStatue}" var="pro">
                        <option value="${pro.subtypeCode }">${pro.subtypeName }</option>
                    </c:forEach>
                </select>
            </td>
            <td class="label">结算时间：</td>
            <td class="width200"><input id="createTimeBegin" name="settlementStartDate" loxiaType="date" trim="true" style="width: 43%"/>-
                <input id="createTimeEnd" name="settlementEndDate" loxiaType="date" trim="true" style="width: 43%"/></td>
        </tr>
        <tr>
            <td class="label">合同编号：</td>
            <td>
                <input type="text" name="loan_code">
            </td>
            <td class="label">资金渠道：</td>
            <td>
                <select name="capitalChannel">
                    <option value="">请选择</option>
                    <c:forEach items="${channelList}" var="pro">
                        <option value="${pro.channelCode }">${pro.channelName }</option>
                    </c:forEach>
                </select>
            </td>
            <td class="label">还款状态：</td>
            <td>
                <select name="lendStatus">
                    <option value="">请选择</option>
                    <c:forEach items="${lendStatue}" var="pro">
                        <option value="${pro.subtypeCode }">${pro.subtypeName }</option>
                    </c:forEach>
                </select>
            </td>
            <td class="label">来源应用:</td>
            <td width="200" colspan="1" class="timerTd">
                <select name="applyCode" loxiaType="select">
                    <option value="">请选择</option>
                    <c:forEach items ="${amList}" var="mapOne">
                        <option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>
                    </c:forEach>
                </select>
            </td>
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
        <button type="button" loxiaType="button" class="confirm batch-settle">
            批量结算
        </button>
        <button type="button" loxiaType="button" class="confirm unbatch-settle">
            无需结算
        </button>
    </div>
</form>
<%@include file="/common/paginationInit.jsp"%>
<table id="tbl-list"></table>
<div id="pager"></div>
</body>
</html>