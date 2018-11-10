<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/27
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@include file="/common/meta.jsp"%>
    <fmt:setBundle basename="messages" var="lang" />
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/base/applicationManagement/apply_management.js?var=1.0.1'/>"></script>
    <title>应用管理</title>
</head>
<style>
    .apply_management .w150{width:80px;}
    .apply_management span{
        display:inline-block;
        width:80px;
    }
</style>
<body contextpath="<%=request.getContextPath()%>">
    <div class="buttonlist buttonDivWidth">
        <button type="button" id="biaodiFile" loxiaType="button" class="confirm" title="tip" onclick="addApplication()"/>
        新增应用
        </button>
    </div>
    <%@include file="/common/paginationInit.jsp"%>
    <table id="tbl-lendlist"></table>
    <div id="pager"></div>
<div id="applyManagement" style="display:none;">
    <div class="apply_management">
        <table>
            <input type="hidden" name="id">
            <tr>
                <td class="w150">应用名称<sup>*</sup>:</td>
                <td>
                    <input type="text" name="applyName" class="pro" data-msg="应用名称">
                </td>
            </tr>
            <tr>
                <td class="w150">应用代码<sup>*</sup>:</td>
                <td>
                    <input type="text" name="applyCode" class="pro" data-msg="应用代码">
                </td>
            </tr>
            <tr>
                <td class="w150">短信签名<sup>*</sup>:</td>
                <td>
                    <input type="text" name="smsSign" class="pro" data-msg="短信签名">
                </td>
            </tr>
            <tr>
                <td class="w150">显示产品<sup>*</sup>:</td>
                <td>
                    <span><input type="checkbox" onclick=allandnotSelect(this)>全部</span>
                    <c:forEach items="${productMaxInfoList}" var="productMaxInfo">
                       <span><input type="checkbox" id="productId" name="productId" value="${productMaxInfo.id}">${productMaxInfo.productName}</span>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <td class="w150">速贷联盟<sup>*</sup>:</td>
                <td>
                    <span><input type="radio" name="showAlliance" value="100111" id="sdlmShow" data-msg="速贷联盟">显示</span>
                    <span><input type="radio" name="showAlliance"  value="100112" id="sdlmhiden" data-msg="速贷联盟">隐藏</span>
                </td>
            </tr>
            <tr>
                <td class="w150">备注:</td>
                <td><textarea name="remarks" id="remarks" cols="60" rows="10" data-msg="备注" onchange="limitNumber(this)"></textarea></td>
            </tr>
        </table>
    </div>
</div>
</body>
</html>
