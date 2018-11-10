<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="/common/meta.jsp" %>
    <fmt:setBundle basename="messages" var="lang"/>
    <title>已办任务</title>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/workflow/taskList/workflow_tasks.js?v=2.1.2'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <style type="text/css">
        .link {
            text-decoration: underline;
            cursor: pointer;
            color: #556b80;
        }

        .link:HOVER {
            text-decoration: none;
        }

        .style_td {
            width: 45% !important;
        }

        .reply {
            margin-bottom: 10px;
            width: 205px;
        }

        .reply a {
            width: 100px;
            height: 30px;
            color: #333;
            line-height: 30px;
            text-align: center;
            display: inline-block;
            border: 1px solid #ccc;
            text-decoration: none;
        }

        .reply a:last-child {
            margin-left: -4px;
        }

        .active {
            background: #009fd3;
            color: #fff !important;
        }
    </style>
    <linkage:define/>
</head>
<body contextpath="<%=request.getContextPath()%>">
<div id="taskAgents">
    <div id="formdetail">
        <div class="divBgColor">
            <fmt:message key="label.search.param" bundle="${lang}"/>
        </div>
        <form id="taskCommandForm" method="post">
            <table>
                <tr>
                    <td class="label">客户：</td>
                    <td class="width200">
                        <input id="" name="clientName" type="text" trim="true"/>
                    </td>
                    <td class="label">手机号码：</td>
                    <td class="width200"><input id="" name="mobile_phone"
                                                type="number" trim="true"/></td>
                    <td class="label">任务：</td>
                    <td class="width200">
                        <select id="taskCode" name="taskCode" loxiaType="select">
                            <option value="">请选择</option>
                            <c:forEach items="${taskCodes }" var="task">
                                <option value="${task.taskCode }">${task.taskName }</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td class="label">拟批产品：</td>
                    <td class="width200">
                        <select name="creditMaxProductId" loxiaType="select">
                            <option value="">请选择</option>
                            <c:forEach items="${productNameList}" var="pm">
                                <option value="${ pm.id}">${ pm.productName }</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="label">领取时间：</td>
                    <td class="width200"><input id="getTimeBegin" name="getTimeBegin"
                                                loxiaType="date" trim="true" style="width: 43%"/>-<input id="getTimeEnd"
                                                                                                         name="getTimeEnd"
                                                                                                         loxiaType="date"
                                                                                                         trim="true"
                                                                                                         style="width: 43%"/>
                    </td>
                    <td class="label">提交时间：</td>
                    <td class="width200"><input id="submitTimeBegin" name="submitTimeBegin"
                                                loxiaType="date" trim="true" style="width: 43%"/>-<input
                            id="submitTimeEnd" name="submitTimeEnd"
                            loxiaType="date" trim="true" style="width: 43%"/></td>
                    <td class="label">申请时间：</td>
                    <td class="width200"><input id="createTimeBegin" name="createTimeBegin"
                                                loxiaType="date" trim="true" style="width: 43%"/>-<input
                            id="createTimeEnd" name="createTimeEnd"
                            loxiaType="date" trim="true" style="width: 43%"/></td>
                    <td class="label">申请产品：</td>
                    <td class="width200">
                        <select name="applicationProductMaxId" loxiaType="select">
                            <option value="">请选择</option>
                            <c:forEach items="${productNameList}" var="pm">
                                <option value="${ pm.id}">${ pm.productName }</option>
                            </c:forEach>
                        </select>
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
                        title="tip：<fmt:message key="tip.sys.apply.reset" bundle="${lang}"/>"
                        id="resets">
                    <fmt:message key="button.reset" bundle="${lang}"/>
                </button>
            </div>
        </form>
    </div>
    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-tasklist"></table>
    <div id="pager"></div>
    <div id="dialog" class="hidden"></div>
</div>
</body>
</html>