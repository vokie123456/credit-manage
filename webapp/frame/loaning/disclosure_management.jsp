<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 披露管理  个人用户 -->
<head>
    <%@include file="/common/meta.jsp" %>
    <fmt:setBundle basename="messages" var="lang"/>
    <title></title>
    <script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/my-jquery-ajax.js?v=2.0.0'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/loaning/disclosure_management.js?v=3.9.4'/><c:out value='${now.getTime()}'/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/scripts/frame/loaning/disclosure_management.css?v=2.0.0'/><%=ver%>"/>
    <style>
        .a-color{
            text-decoration: none !important;
        }
    </style>
   <linkage:define/>
</head>
<body contextpath="<%=request.getContextPath()%>" >
<%--<div id="imgBox" style="display:none">--%>
    <%--<img src="" alt=""/>--%>
<%--</div>--%>
<div class="tabSlide">
    <ul class="control clearfix">
        <li class="border"><a href="javascript:;" id="noReply">个人用户</a></li>
        <li><a href="javascript:;" id="alreadyReply">企业用户</a></li>
    </ul>
    <div class="content"></div>
</div>
<form id="lendListForm" method="post">
    <table>
        <tr>
            <td class="label1" >客户姓名：</td>
            <td width="150">
                <input name="clientName"  loxiaType="input" trim="true"/>
            </td>
            <td class="label1">录入日期：</td>
            <td class="timerTd">
                <input id="enterTimeStart" loxiaType="date" name="enterTimeStart" checkmaster="setMinDate" readonly="readonly"/>

                <span>到</span>
                <input loxiaType="date" name="enterTimeEnd" checkmaster="setMaxDate" readonly="readonly"/>
            </td>
            <td class="label1">创建日期：</td>
            <td class="timerTd">
                <input  loxiaType="date" name="ccCreateTimeStart" checkmaster="setMinDate" readonly="readonly"/>
                <span>到</span>
                <input  loxiaType="date" name="ccCreateTimeEnd" checkmaster="setMaxDate" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td class="label1">手机号码：</td>
            <td width="150">
                <input name="mobilePhone" loxiaType="input" trim="true"/>
            </td>
            <td class="label1">推送日期：</td>
            <td class="timerTd">
                <input  loxiaType="date" name="pushTimeStart" checkmaster="setMinDate" readonly="readonly"/>
                <span>到</span>
                <input  loxiaType="date" name="pushTimeEnd" checkmaster="setMaxDate" readonly="readonly"/>
            </td>
        </tr>

    </table>

    <div class="buttonlist buttonDivWidth">
        <button type="button" loxiaType="button" class="confirm"
                title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>" id="reload">
            <fmt:message key="button.query" bundle="${lang}"/>
        </button>
        <button type="reset" loxiaType="button" class="confirm"
                title="tip:<fmt:message key="tip.sys.audit.reset" bundle="${lang}"/>">
            <fmt:message key="button.reset" bundle="${lang}"/>
        </button>
    </div>
    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-lendlist"></table>
    <div id="pager"></div>
</form>
<%--<div id="dialog-chgrole"></div>--%>

<%-- 信息录入 --%>
<div id="addProduct" style="display:none;">
    <div class="addProduct">
        <table>
            <tr>
                <td>借款人: <span class="color_red">*</span></td>
                <td width="210" class="text_left clientName"></td>
                <td class="flagqq">
                    <input type="hidden" class="synch" name="synchronizeFlag">
                    <input type="hidden" name="createTime" class="createTime">
                    <input type="hidden" name="updateTime" class="updateTime">
                    <input type="hidden" name="clientId" class="clientId">
                    <input type="hidden" name="id" class="id">
                    <input type="hidden" name="completeFlag" class="completeFlag">
                    <input type="hidden" name="clientTypeCode" class="clientTypeCode">
                </td>
            </tr>
            <tr>
                <td>性别: <span class="color_red">*</span></td>
                <td class="cus_sex text_left"></td>
            </tr>
            <tr>
                <td>年龄: <span class="color_red">*</span></td>
                <td class="cus_age text_left"></td>
            </tr>
            <tr>
                <td>身份证号: <span class="color_red">*</span></td>
                <td class="cardNo text_left"></td>
            </tr>
            <tr>
                <td>工作城市: <span class="color_red">*</span></td>
                <td class="city"><input type="text" data-msg="工作城市" class="Validation"  id="city" name="city" value="" placeholder="省市"></td>
            </tr>
            <tr>
                <td>收入范围: <span class="color_red">*</span></td>
                <td class="salaryRange"><input type="text" data-msg="收入范围" name="salaryRange" value="" class="decimal Validation"></td>
                <td style="text-align: left">万元</td>
            </tr>
            <tr>
                <td>负债情况: <span class="color_red">*</span></td>
                <td class="debtInfo"><input type="text" name="debtInfo"  data-msg="负债情况" value="" placeholder="如：50000" class="Validation"></td>
                <td style="text-align: left">元</td>
            </tr>
            <tr>
                <td>岗位职位: <span class="color_red">*</span></td>
                <td class="position"><input type="text" data-msg="岗位职位" name="position" value="职员" class="Validation"></td>
            </tr>
            <tr>
                <td>工作年限: <span class="color_red">*</span></td>
                <td class="workYears"><input type="text" data-msg="工作年限" name="workYears" class="Validation"></td>
            </tr>
            <tr>
                <td>雇佣类型: <span class="color_red">*</span>  </td>

                <td >
                    <select class="employTypeId" name="employTypeId" id="employTypeId">
                        <option value="">请选择</option>
                        <c:forEach items="${gylxList}" var="gyl">
                            <option data-name="${ gyl.subtypeName   }" value="${ gyl.subtypeCode   }" >${ gyl.subtypeName }</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>社会保险: <span class="color_red">*</span></td>
                <td class="socialInsurance"><input type="text" data-msg="社会保险" class="Validation" name="socialInsurance" value="五险一金" placeholder=""></td>
            </tr>
            <tr>
                <td>文化程度: <span class="color_red">*</span></td>
                <td class="educationBackgroundId"><select name="educationBackgroundId" >
                    <option value="">请选择</option>
                    <c:forEach items="${whcdList}" var="whc">
                        <option value="${ whc.subtypeCode   }">${ whc.subtypeName }</option>
                    </c:forEach>
                </select></td>
            </tr>
            <tr>
                <td>户口所在地: <span class="color_red">*</span></td>
                <td class="permanentResidenceLocation text_left">
                    <input type="text" class="Validation" data-msg="户口所在地" name="permanentResidenceLocation" style="width:240px;">
                </td>
            </tr>
            <tr>
                <td>婚姻状况: <span class="color_red">*</span></td>
                <td class="marriageInfo">
                    <input type="text" name="marriageInfo" data-msg="婚姻状况" class="Validation">
                </td>
            </tr>
            <tr>
                <td>逾期次数: <span class="color_red">*</span></td>
                <td class="overDucCount "><input type="text" data-msg="逾期次数" value="0" name="overDucCount" class="number check Validation"></td>
            </tr>
            <tr>
                <td>逾期金额: <span class="color_red">*</span></td>
                <td class="overDucAmmount"><input type="text" data-msg="逾期金额" value="0" name="overDucAmmount" class="decimal check Validation"></td>
                <td style="text-align: left">元</td>
            </tr>
            <tr>
                <td>其他借款金额: <span class="color_red">*</span></td>
                <td><input type="text" data-msg="其他借款金额" name="otherLoanAmount" class="decimal check otherLoa Validation"></td>
                <td style="text-align: left">元</td>
            </tr>
            <tr>
                <td>基本情况介绍: <span class="color_red">*</span></td>
                <td class="basicInfo"><input type="text" data-msg="基本情况介绍" class="Validation" name="basicInfo" value="" placeholder=""></td>
            </tr>
            <tr>
                <td>借款用途: <span class="color_red">*</span></td>
                <td>
                    <select name="lendReasonId" id="" class="lendReason">
                        <option value="">请选择</option>
                        <c:forEach items="${sdList}" var="sdl">
                            <option value="${ sdl.subtypeCode   }">${ sdl.subtypeName }</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td>还款来源: <span class="color_red">*</span></td>
                <td class="repaymentSource Validation"><input type="text" data-msg="还款来源" name="repaymentSource" value="" placeholder=""></td>
            </tr>
            <tr>
                <td>征信情况: <span class="color_red">*</span></td>
                <td class="creditInfo"><input type="text " data-msg="征信情况" value="征信良好" name="creditInfo" placeholder="" class="Validation"></td>
            </tr>
            <tr>
                <td>诉讼情况: <span class="color_red">*</span></td>
                <td class="sueInfo"><input type="text" data-msg="诉讼情况" class="Validation" name="sueInfo" value="" placeholder="共被诉讼N次"></td>
            </tr>
            <tr>
                <td>处罚情况: <span class="color_red">*</span></td>
                <td class="punishmentInfo"><input type="text" data-msg="处罚情况" class="Validation" name="punishmentInfo" value="" placeholder="共被处罚N次"></td>
            </tr>
        </table>
    </div>

    <button type="button"  loxiaType="button" class="confirm" title="tip" onclick="save_cus()">
        保存
    </button>
    <button type="button"  loxiaType="button" class="confirm" title="tip" onclick="submit_cus()">
        提交
    </button>
</div>
<%-- 录入查看--%>
<div id="addProduct1" style="display:none;">
    <table class="addProduct pro_search">
        <tr>
            <td>借款人: </td>
            <td width="210" class="text_left clientName"></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td class="cus_sex1 text_left"></td>
        </tr>
        <tr>
            <td>年龄: </td>
            <td class="cus_age text_left"></td>
        </tr>
        <tr>
            <td>身份证号:</td>
            <td class="cardNo text_left" title=""></td>
        </tr>
        <tr>
            <td>工作城市: </td>
            <td class="text_left city"></td>
        </tr>
        <tr>
            <td>收入范围: </td>
            <td class="text_left salaryRange"></td>
            <%--<td style="text-align: left">万元</td>--%>
        </tr>
        <tr>
            <td>负债情况:</td>
            <td class="debtInfo text_left"></td>

        </tr>
        <tr>
            <td>岗位职位:</td>
            <td class="position text_left"> </td>
        </tr>
        <tr>
            <td>工作年限: </td>
            <td class="workYears text_left"></td>
        </tr>
        <tr>
            <td>雇佣类型: </td>
            <td class="employTypeId text_left">
            </td>
        </tr>
        <tr>
            <td>社会保险: </td>
            <td class="socialInsurance text_left"></td>
        </tr>
        <tr>
            <td>文化程度: </td>
            <td class="educationalBackground text_left"></td>
        </tr>
        <tr>
            <td>户口所在地: </td>
            <td class="permanentResidenceLocation text_left"></td>
        </tr>
        <tr>
            <td>婚姻状况:</td>
            <td  class="marriageInfo text_left"></td>
        </tr>
        <tr>
            <td>逾期次数: </td>
            <td class="overDucCount text_left"></td>
        </tr>
        <tr>
            <td>逾期金额:</td>
            <td class="overDucAmmount text_left"></td>
        </tr>
        <tr>
            <td>其他借款金额: </td>
            <td class="otherLoa text_left"></td>
        </tr>
        <tr>
            <td>基本情况介绍: </td>
            <td class="basicInfo text_left"></td>
        </tr>
        <tr>
            <td>借款用途: </td>
            <td class="lendReason text_left">

            </td>
        </tr>
        <tr>
            <td>还款来源:</td>
            <td class="repaymentSource text_left"></td>
        </tr>
        <tr>
            <td>征信情况: </td>
            <td  class="creditInfo text_left"></td>
        </tr>
        <tr>
            <td>诉讼情况:</td>
            <td class="sueInfo text_left"></td>
        </tr>
        <tr>
            <td>处罚情况: </td>
            <td class="punishmentInfo text_left"></td>
        </tr>

    </table>
</div>

</body>
</html>
