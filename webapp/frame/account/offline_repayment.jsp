<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
    <%@include file="/common/meta.jsp" %>
    <fmt:setBundle basename="messages" var="lang"/>
    <title><fmt:message key="label.lend.query" bundle="${lang}"/></title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/account/offline_repayment.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <style type="text/css">
        /*.timerTd {*/
            /*min-width: 300px;*/
        /*}*/

        .timerTd input {
            width: 115px !important;
        }

        .label {
            text-align: left;
        }
        .right {
            text-align: right;
        }

        body {
            background: #fff !important;
            margin: 10px;
        }

        .left-tex {
            width: 100%;
        }
    </style>
</head>

<body contextpath="<%=request.getContextPath()%>">
<form id="lendListForm" method="post">
    <table>
        <tr>
            <td class="label">客户姓名：</td>
            <td width="150"><input id="" name="clientName"
                                   loxiaType="input" trim="true"/></td>
            <td class="label">审核状态：</td>
            <td width="150">
                <bizselect:bizselect biztypekey="1260"
                                     startSort="1" endSort="3" id="auditStatus"
                                     name="auditStatus" isChoose="true"/>
            </td>
            <td class="label">来源应用:</td>
            <td width="200" colspan="1" class="timerTd">
                <select name="applyCode" loxiaType="select">
                    <option value="">请选择</option>
                    <c:forEach items="${amList}" var="mapOne">
                        <option value=${ mapOne.applyCode}> ${mapOne.applyName}</option>
                    </c:forEach>
                </select>
            </td>

        </tr>
        <tr>
            <td class="">客户操作时间：</td>
            <td class="timerTd" colspan="2">
                <input id="createTimeStart" loxiaType="date" name="createTimeStart" checkmaster="setMinDate" readonly="readonly" width="150"/>
                <span>到</span>
                <input id="createTimeEnd" loxiaType="date" name="createTimeEnd" checkmaster="setMaxDate" readonly="readonly" width="150"/>
            </td>
            <td class="right" >审核时间：</td>
            <td class="timerTd" colspan="2">
                <input id="auditTimeStart" loxiaType="date" name="auditTimeStart" checkmaster="setMinDate" readonly="readonly" width="150"/>
                <span>到</span>
                <input id="auditTimeEnd" loxiaType="date" name="auditTimeEnd" checkmaster="setMaxDate" readonly="readonly" width="150"/>
            </td>
        </tr>
    </table>
    <div class="buttonlist buttonDivWidth">
        <button type="button" loxiaType="button" class="confirm"
                title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
                id="reload">
            <fmt:message key="button.query" bundle="${lang}"/>
        </button>
        <button type="reset" loxiaType="button" class="confirm"
                title="tip" id="reset"/>
        <fmt:message key="button.reset" bundle="${lang}"/>
        </button>
        <button type="button" loxiaType="button" id="exportFK"  class="confirm">
            导出
        </button>
    </div>
    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-lendlist"></table>
    <div id="pager"></div>
</form>
<div id="dialog-chgrole"></div>
</body>
</html>
