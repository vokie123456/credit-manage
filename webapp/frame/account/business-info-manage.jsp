<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/7/10
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title>商户信息管理</title>
</head>
<%@include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="messages" var="lang" />
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
<title>资金渠道管理</title>
<script type="text/javascript"
        src="<c:url value='/scripts/frame/account/business-info-manage.js?v=3.3.20'/>"></script>
<script type="text/javascript"
        src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
<style type="text/css">
    .businessInfomanage{width: 600px;}
    .businessInfomanage .proTable{width:100%;}
    .businessInfomanage .w100{width:100px;}
    table tr td{height:40px;}
    table tr td label{padding-left:12px;}
    .businessInfomanage .tdTextRight{text-align: right;}
    .businessInfomanage input[type="text"],select{width:100%; height:25px; padding: 0 5px;}
    #pager{height:32px;}
</style>
<body contextpath="<%=request.getContextPath()%>">
<form method="post" id="businessListForm">
    <div class="buttonlist buttonDivWidth">
        <button type="button" id="addAccount" loxiaType="button" class="confirm" title="tip"/>
        新增账户
        </button>
    </div>
</form>


<%@include file="/common/paginationInit.jsp"%>
<table id="tbl-list"></table>
<div id="pager"></div>
<div id="dialog-chgrole"></div>
<div id="businessInfomanage" style="display:none;">
    <div class="businessInfomanage">
        <table class="proTable tabs-son">
            <tbody>
            <input type="hidden" name="id">
            <tr>
                <td class="tdTextRight w100">商户名称<sup style="color:red;">*</sup>：</td>
                <td colspan="3">
                    <input type="text" id="sellerName" name="sellerName" class="bus" data-msg="商户名称"/>
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">商户简称<sup style="color:red;">*</sup>：</td>
                <td colspan="3">
                    <input type="text" id="subSellerName" name="subSellerName" class="bus" data-msg="商户简称" />
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">开户行<sup style="color:red;">*</sup>：</td>
                <td colspan="3">
                    <select name="bankId" id="bankId" data-msg="开户行">
                        <c:forEach items="${banksTypeList}" var="bankType">
                            <option value="${bankType.id}" name="bankId">${bankType.bankName}</option>
                        </c:forEach>

                    </select>
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">开户支行<sup style="color:red;">*</sup>：</td>
                <td colspan="3">
                    <input type="text" id="bankBranch" name="bankBranch" class="bus" data-msg="开户支行" />
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">户名<sup style="color:red;">*</sup>：</td>
                <td colspan="3">
                    <input type="text" id="accountName" name="accountName" class="bus" data-msg="户名">
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">银行卡号<sup style="color:red;">*</sup>：</td>
                <td class="linkProduct" style="idth:200px;">
                    <input type="text" id="bankNo" name="bankNo" class="bus" data-msg="银行卡号">
                </td>
                <td class="tdTextRight w100">启/停用<sup style="color:red;">*</sup>：</td>
                <td style="idth:200px;">
                    <select name="status" id="status" class="w40">
                        <option value="1">启用</option>
                        <option value="0">停用</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">联系人：</td>
                <td style="idth:200px;">
                    <input name="contactsName" id="contactsName" type="text" class="w40" >
                </td>
                <td class="tdTextRight w100">联系方式<sup style="color:red;">*</sup>：</td>
                <td style="idth:200px;">
                    <input name="mobile" class="bus" id="mobile" type="text" data-msg="联系方式">
                </td>
            </tr>
            <tr>
                <td class="tdTextRight w100">备注：</td>
                <td colspan="3" >
                    <textarea name="remark" id="remark" cols="80" rows="5"></textarea>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
