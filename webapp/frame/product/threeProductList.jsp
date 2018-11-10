<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
    <%@include file="/common/meta.jsp" %>
    <fmt:setBundle basename="messages" var="lang"/>
    <title><fmt:message key="label.lend.query" bundle="${lang}"/></title>
    <script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery.form.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/product/threeProductList.js?v=1.5.11'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <style type="text/css">
        html, body {
            height: 100%;
        }

        /*新增编辑产品css*/
        .addProduct {
            width: 650px;
        }

        .proTable {
            width: 100%;
        }

        .proTable tr td {
            padding: 10px 0;
        }

        .proTable .w85 {
            width: 85px;
        }

        .proTable .w150 {
            width: 150px;
        }

        .proTable span {
            color: #FF0000
        }

        .proTable .tdTextRight {
            text-align: right;
        }

        .proTable input[type="text"], select {
            width: 130px;
            height: 25px;
            padding: 0 5px;
        }

        .proTable input[type="checkbox"] {
            width: 25px;
            height: 25px;
            padding: 0 5px;
            vertical-align: middle;
            margin-top: 0;
        }

        .proTable input[type="radio"] {
            width: 25px;
            height: 25px;
            padding: 0 5px;
            vertical-align: middle;
            margin-top: 0;
            border-radius: 0;
        }

        .proTable .moneyInp input {
            width: 50px;
        }

        .proTable tbody tr td .w450 {
            width: 454px;
        }
    </style>
</head>
<body contextpath="<%=request.getContextPath()%>">
<div id="imgBox" style="display:none">
    <img src="" alt=""/>
</div>
<%-- 新增产品按钮 --%>
<form id="lendListForm" method="post">
    <div class="buttonlist buttonDivWidth">
        <button type="button" id="biaodiFile" loxiaType="button" class="confirm" title="tip" onclick="addPorductMax()"/>
        新增三方产品
        </button>
    </div>
    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-lendlist"></table>
    <div id="pager"></div>
</form>

<%-- 新增产品弹框 --%>
<div id="addProduct" style="display:none;">

    <div class="addProduct">
        <div class="proHtml">
            <input type="hidden" name="id"/>
            <table class="proTable tabs-son" id="tab1">
                <tbody>
                <tr>
                    <td class="tdTextRight w150"><span>*</span> 产品名称:&nbsp;&nbsp;</td>
                    <td>
                        <input type="text" placeholder="加薪贷" name="productName" id="productName" class="pro"
                               data-msg="产品名称"/>
                    </td>

                    <td class="tdTextRight w150"><span>*</span> 产品简称:&nbsp;&nbsp;</td>
                    <td>
                        <input type="text" name="productAbbr" placeholder="加薪贷" class="pro" data-msg="产品简称"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w150"><span>*</span> 产品代码:&nbsp;&nbsp;</td>
                    <td>
                        <input type="text" placeholder="限20个字符长度" name="productCode" id="productCode" class="pro"
                               data-msg="产品代码"/>
                    </td>
                    <td class="tdTextRight w150"><span>*</span> 产品排序:&nbsp;&nbsp;</td>
                    <td>
                        <input type="number" name="sort" placeholder="为文本输入，整数型" class="pro" data-msg="产品排序"
                               onchange="validateNum(this)"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85"><span>*</span> 借款金额：</td>
                    <td class="moneyInp">
                        <input type="text" placeholder="8500" name="productMinAmount" class="pro minMoney money"
                               data-msg="借款金额"/>
                        <span>-</span>
                        <input type="text" placeholder="20000" name="productMaxAmount" class="pro maxMoney money"
                               data-msg="借款金额"/>
                    </td>
                    <td class="tdTextRight w85"><span>*</span> 借款利率%：</td>
                    <td class="moneyInp">
                        <input type="text" placeholder="1.25" name="productMinRate" class="pro minRate money"
                               data-msg="借款利率" onblur="testvalidation(this)"/>
                        <span>-</span>
                        <input type="text" placeholder="1.67" name="productMaxRate" class="pro maxRate money"
                               data-msg="借款利率" onblur="testvalidation(this)"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85"><span>*</span> 借款期限：</td>
                    <td class="moneyInp">
                        <input type="text" placeholder="1,3,6,9,12,18" name="productMinPeriod"
                               class="pro loanMinPeriod money" data-msg="借款期限"/>
                        <span>-</span>
                        <input type="text" placeholder="1,3,6,9,12" name="productMaxPeriod"
                               class="pro loanMaxPeriod money" data-msg="借款期限"/>
                    </td>
                    <td class="tdTextRight w85"><span>*</span>利率单位</td>
                    <td>
                        <select name="rateUnit" id="rateUnit">
                            <option value="105812" selected>月</option>
                            <option value="105814">日</option>
                            <option value="105813">周</option>
                            <option value="105811">年</option>
                        </select>
                    </td>

                </tr>
                <tr>
                    <td class="tdTextRight w85"><span>*</span> 期限单位：</td>
                    <td>
                        <bizselect:bizselect biztypekey="1058" startSort="11" endSort="14" id="termUnit"
                                             name="productPeriodUnit" isChoose="true" selected="105811"/>
                    </td>
                    <td class="tdTextRight w85"><span>*</span> 启用状态：</td>
                    <td>
                        <select name="productStatus">
                            <option value="">请选择</option>
                            <option value="0" selected="selected">是</option>
                            <option value="1">否</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <td class="tdTextRight w85"><span>*</span> 还款方式：</td>
                    <td colspan="4" class="modeRepayment">
                        <checkBox:checkBox name="repaymentWay" biztypekey="2126"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85">支付方式：</td>
                    <td colspan="4" class="">
                        <checkBox:checkBox name="paymentWay" biztypekey="2127"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85">逾期费用：</td>
                    <td colspan="4" class="">
                        <checkBox:checkBox name="overdueFee" biztypekey="2128"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85">产品类型：</td>
                    <td><bizselect:bizselect biztypekey="2129"
                                             startSort="1" endSort="5" id="productKind"
                                             name="productType" isChoose="true" selected=""/>
                    </td>
                    <td class="tdTextRight w85">抵押方式：</td>
                    <td>
                        <bizselect:bizselect biztypekey="2130"
                                             startSort="1" endSort="5" id="mortgageMode"
                                             name="mortgageMode" isChoose="true" selected=""/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85">产品简介：</td>
                    <td colspan="3">
                        <input type="text" style="width:450px;" placeholder="产品介绍，少于20字" max-length="20"
                               name="productIntroduce" class="ProductIntroduction" onchange="limitNumberTwenty(this)"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85"><span>*</span> 产品链接：</td>
                    <td colspan="3">
                        <input type="text" style="width:450px;" max-length="10" placeholder="输入H5链接地址"
                               name="productLink" class="pro" data-msg="产品链接"/>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85"><span>*</span> 所属公司：</td>
                    <td colspan="3">
                        <select name="CompanyId" class="w450 originalCompany">

                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="tdTextRight w85"><span>*</span> 显示logo：</td>
                    <td colspan="3">
                        <input type="radio" name="logo" value="1">产品logo
                        <input type="radio" name="logo" value="0" checked>公司logo
                    </td>
                </tr>
                </tbody>
            </table>
        </div>


    </div>

</div>

</body>
</html>
