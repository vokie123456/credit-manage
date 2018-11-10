<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">
<head>
    <%@include file="/common/meta.jsp"%>
    <fmt:setBundle basename="messages" var="lang" />
    <title><fmt:message key="label.lend.query" bundle="${lang}" /></title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/style_zr.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/newsZr/photoGallery.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/themes/default/default.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/scripts/kindeditor/plugins/code/prettify.css'/>"/>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/client/waitcase_client.js?v=0.1.15'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <style type="text/css">
        .label {
            text-align: right;
        }
        table tr td{height:30px;}
        .reply{margin-bottom:10px;width:205px;}
        .reply a{width:100px;height:30px;color:#333;line-height:30px;text-align:center;display:inline-block;border:1px solid #ccc;text-decoration:none;}
        .reply a:last-child{margin-left:-4px;}
        .active{background: #c9c9c9 none repeat scroll 0 0;}
        #easyDialogWrapper {
            width: 880px !important;
        }
        .client-find{width:1050px; text-align:center;white-space:normal;}
    </style>
</head>

<body contextpath="<%=request.getContextPath()%>">
<div class="tabSlide">
    <ul class="control clearfix">
        <li><a href="javascript:;" id="noReply" >案件查询</a></li>
        <li class="border"><a href="javascript:;" id="alreadyReply">待进件客户</a></li>
    </ul>
    <div class="content"></div>
</div>
<form id="waitcaseForm" method="post">
    <input  name="clientAdvanceId" id="clientAdvanceId" type="hidden" loxiaType="input" trim="true" value=""/>
    <table>
        <tr>
            <td class="label">客户：</td>
            <td width="150"><input  name="clientName" id="clientName" loxiaType="input" trim="true" /></td>
            <td class="label">手机号码：</td>
            <td width="150"><input  name="clientMobile" id="clientMobile" loxiaType="input" trim="true" /></td>
            <td class="label">注册时间：</td>
            <td width="150"><input  name="createTimeStart" loxiaType="date" trim="true" />&nbsp;<span>到</span></td>
            <td class="width150"><input  name="createTimeEnd" loxiaType="date" trim="true" />
            </td>
            <td class="label">跟进时间：</td>
            <td width="150"><input name="editTimeStart" loxiaType="date" trim="true" />&nbsp;<span>到</span></td>
            <td class="width150"><input name="editTimeEnd" loxiaType="date" trim="true" />
            </td>
        </tr>
        <tr>
            <td class="label">跟进人：</td>
            <td width="150">
                <input type="text" name="adcancePeople">
            </td>
            <td class="label">取消申请原因：</td>
            <td width="150"><select name="reason" loxiaType="select">
                <option value="" >请选择</option>
                <option value="我已找到合适的贷款" >我已找到合适的贷款</option>
                <option value="贷款产品的利率太高" >贷款产品的利率太高</option>
                <option value="审批时间太久" >审批时间太久</option>
            </select></td>
            <td class="label">跟进结果：</td>
            <td width="150"><select name="advanceResult" loxiaType="select">
                <option value="" >请选择</option>
                <option value="124514" >来电</option>
                <option value="124515" >回访</option>
                <option value="124516" >投诉</option>
                <option value="124517" >资质不符</option>
                <option value="124518" >无法接听</option>
                <option value="124519" >其他</option>
            </select></td>
        </tr>
    </table>
    <div class="buttonlist buttonDivWidth">
        <button type="button" loxiaType="button" class="confirm"
                title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>"
                id="reload">
            <fmt:message key="button.query" bundle="${lang}" />
        </button>
        <button type="reset" loxiaType="button" class="confirm"
                title="tip" id="reset"/>
        <fmt:message key="button.reset" bundle="${lang}" />
        </button>
    </div>

    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-waitcaseList"></table>
    <div id="pager"></div>
</form>
<div id="dialog-chgrole"></div>

<%--登记跟进弹框--%>
<div id="loginPush" style="display: none;">
    <div class="loginPush">
        <input type="hidden" name="client_id" id="client_id"/>
        <input type="hidden" name="clientCreditId" id="clientCreditId"/>
        <table>

            <tr>
                <td style="width: 80px;"><span style='color: red'>*</span>跟进方式:</td>
                <td><bizselect:bizselect biztypekey="1900" id="advanceWay_zr" name="advanceWay" startSort="6"  endSort="10" isChoose="true" checkmaster="2"  selected="190006"/></td>
                <td colspan="2" style="color:#1F7AFF;">最近一次登录情况</td>
            </tr>
            <tr>
                <td><span style='color: red'>*</span>跟进结果:</td>
                <td><bizselect:bizselect biztypekey="1245" id="advance_result" startSort="14" endSort="19" name="advanceResult" isChoose="true" selected="124514" /></td>
                <td>登录时间</td>
                <td id="loginTime"></td>
            </tr>
            <tr>
            <td>工作城市:</td>
            <td><input type="text" id="permanentProvince" name="wrokProvince" placeholder="省" value="" disabled="disabled">&nbsp;&nbsp;&nbsp;&nbsp;<input id="permanentCity"  name="workCity" type="text" placeholder="市" disabled="disabled"></td>
                <td>登录应用:</td>
                <td id="applyName"></td>
            </tr>
            <tr>
                <td>房产所在地:</td>
                <td><input id="housePrivinceName" name="housePropertyProvince" type="text" placeholder="省" disabled="disabled">&nbsp;&nbsp;&nbsp;&nbsp;<input id="houseCityName" name="housePropertyCity" type="text" placeholder="市" disabled="disabled"></td>

            </tr>
            <tr>
                <td style="width: 80px;"><span style='color: red'>*</span>跟进描述:</td>
                <td><textarea id="adcance_reason" name='adcance_reason' cols="60" rows="5" ></textarea></td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>
