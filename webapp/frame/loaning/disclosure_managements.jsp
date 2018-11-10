<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- 放款查询列表-->
<head>
    <%@include file="/common/meta.jsp" %>
    <fmt:setBundle basename="messages" var="lang"/>
    <title></title>
    <script type="text/javascript" src="<c:url value='/scripts/newsZr/lib/jquery-1.9.1.min.js'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/my-jquery-ajax.js?v=2.0.0'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/loaning/disclosure_managements.js?v=3.9.4'/><c:out value='${now.getTime()}'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/scripts/frame/loaning/disclosure_management.css'/><%=ver%>"/>
    <style>
        .a-color{
            text-decoration: none !important;
        }
    </style>
    <linkage:define/>
</head>
<body contextpath="<%=request.getContextPath()%>">
<div id="imgBox" style="display:none">
    <img src="" alt="" />
</div>
<div class="tabSlide">
    <ul class="control clearfix">
        <li><a href="javascript:;" id="noReply2" >个人用户</a></li>
        <li class="border"><a href="javascript:;" id="alreadyReply2">企业用户</a></li>
    </ul>
    <div class="content"></div>
</div>

<form id="lendListForm" method="post"  >
    <table>
        <tr>
            <td class="label1">企业名称：
            </td>
            <td width="150">
                <input name="enterpriseName" loxiaType="input" trim="true" class="enterpriseName"/>
            </td>
            <td class="label1">录入日期：</td>
            <td class="timerTd">
                <input id="" loxiaType="date" name="enterTimeStart" checkmaster="setMinDate" readonly="readonly"/>
                <span>到</span>
                <input id="" loxiaType="date" name="enterTimeEnd" checkmaster="setMaxDate" readonly="readonly"/>
            </td>
            <td class="label1">创建日期：</td>
            <td class="timerTd">
                <input id="" loxiaType="date" name="ccCreateTimeStart" checkmaster="setMinDate" readonly="readonly"/>
                <span>到</span>
                <input id="" loxiaType="date" name="ccCreateTimeEnd" checkmaster="setMaxDate" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td class="label1">信用代码：</td>
            <td width="150">
                <input name="organizationCode" loxiaType="input" trim="true"/>
            </td>
            <td class="label1">推送日期：</td>
            <td class="timerTd">
                <input id="" loxiaType="date" name="pushTimeStart" checkmaster="setMinDate" readonly="readonly"/>
                <span>到</span>
                <input id="" loxiaType="date" name="pushTimeEnd" checkmaster="setMaxDate" readonly="readonly"/>
            </td>
        </tr>

    </table>
    <div class="buttonlist buttonDivWidth">
        <button type="button" loxiaType="button" class="confirm" title="tip：<fmt:message key="tip.sys.apply.search" bundle="${lang}"/>" id="reload">
            <fmt:message key="button.query" bundle="${lang}" />
        </button>
        <button type="reset" loxiaType="button" class="confirm" title="tip:<fmt:message key="button.reset" bundle="${lang}" />"/>
        <fmt:message key="button.reset" bundle="${lang}" />
        </button>
    </div>
    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-lendlist"></table>
    <div id="pager"></div>
</form>
<%--<div id="dialog-chgrole"></div>--%>

<%-- 信息录入 --%>
<div id="addProduct1" class="addProduct1" style="display:none;">
    <div class="companyForm">
        <table class="companyForm1">
            <tr>
                <td>企业名称: <span class="color_red">*</span></td>
                <td width="400" class="text_left entName"></td>
                <td>
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
                <td>统一信用代码: <span class="color_red">*</span></td>
                <td class="organizationCode text_left"></td>
            </tr>

            <tr>
                <td>成立时间: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="成立时间" name="companyCreateTime" value="" placeholder="如：2017年5月10日" class="companyCreateTime Validation"></td>
            </tr>
            <tr>
                <td>注册资本: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="注册资本" name="registeredCapital" value="" placeholder=""  class="decimal registeredCapital Validation">万元</td>
                <td style="text-align: left"></td>
            </tr>

            <tr>
                <td>实缴资本: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="实缴资本" name="contributedCapital" value="" class="decimal contributedCapital Validation">万元</td>
                <td style="text-align: left"></td>
            </tr>
            <tr>
                <td>所属行业: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="所属行业" placeholder="如：互联网" name="industry" value="" class="industry Validation"></td>
            </tr>
            <tr>
                <td>营收范围: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="营收范围" name="revenueRange" value="" placeholder="" class="decimal revenueRange Validation">万元</td>
                <td style="text-align: left"></td>
            </tr>
            <tr>
                <td>负债情况: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="负债情况" name="debtInfo" value="" placeholder="" class="decimal debtInfo Validation">元</td>
                <td style="text-align: left"></td>
            </tr>
            <tr>
                <td>企业法人: <span class="color_red">*</span></td>
                <td  class="text_left"><input type="text" data-msg="企业法人" name="businessLegalPerson" value="" placeholder="如：张丹丹" class="businessLegalPerson Validation"></td>
            </tr>
            <tr>
                <td>经营区域: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="经营区域" name="businessArea" value="" placeholder="全国" class="businessArea Validation"></td>
            </tr>
            <tr>
                <td>注册地: <span class="color_red">*</span></td>
                <td class="salaryRange text_left zcd">
                    <linkage:select type="province"  name="registerLocationProvinceId" pid="pb1" cid="cb1" did="db1" seledProvince="${provinces}" />
                    <linkage:select type="city" seledCity="${citys}" name="registerLocationCtiyId" cid="cb1" did="db1" />
                    <linkage:select type="district" seledDistrict="${districts}" name="registerLocationDistrictId" did="db1" />
                    <input type="text " value="" placeholder="如：协和路699号" name="registerLocationDetail" width="100" style=" width:100px" class="registerLocationDetail">
                </td>
            </tr>
            <tr>
                <td>办公地点: <span class="color_red">*</span></td>
                <td class="salaryRange text_left bgd">
                    <linkage:select type="province" name="officeLocationProvinceId" pid="pb11" cid="cb11" did="db11" seledProvince="${provinces}" />
                    <linkage:select type="city" seledCity="${citys}" name="officeLocationCtiyId" cid="cb11" did="db11" />
                    <linkage:select type="district" seledDistrict="${districts}" name="officeLocationDistrictId" did="db11" />
                    <input type="text " placeholder="如：协和路699号" name="officeLocationDetail" style=" width:100px" class="officeLocationDetail">
                </td>
            </tr>
            <tr>
                <td>逾期次数: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="逾期次数" value="0" name="overDucCount" class="number overDucCount Validation"></td>
            </tr>
            <tr>
                <td>逾期金额: <span class="color_red">*</span></td>
                <td class="text_left"><input type="text" data-msg="逾期金额" value="0" name="overDucAmmount" class="decimal overDucAmmount Validation">元</td>
            </tr>
            <tr>
                <td>其他借款金额: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="其他借款金额" name="otherLoanAmount" class="decimal otherLoanAmount Validation">元</td>
                <td style="text-align: left"></td>
            </tr>
            <tr>
                <td>基本情况介绍: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="基本情况介绍" name="basicInfo" value="企业资质良好，营收较高" placeholder=""  class="basicInfo Validation"></td>
            </tr>
            <tr>
                <td>借款用途: <span class="color_red">*</span></td>
                <td class="text_left lendRea" >
                    <select name="lendReasonId" class="lendReason" onchange="lendRea(this)">


                    </select>
                </td>
            </tr>
            <tr>
                <td>还款来源: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="还款来源" name="repaymentSource" value="" placeholder="" class="repaymentSource Validation"></td>
            </tr>
            <tr>
                <td>征信情况: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="" value="征信情况" name="creditInfo" placeholder=""  class="creditInfo Validation"></td>
            </tr>
            <tr>
                <td>诉讼情况: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="诉讼情况" name="sueInfo" value="" placeholder="共被诉讼N次" class="sueInfo Validation"></td>
            </tr>
            <tr>
                <td>处罚情况: <span class="color_red">*</span></td>
                <td class="text_left" ><input type="text" data-msg="处罚情况" name="punishmentInfo" value="" placeholder="共被处罚N次" class="punishmentInfo Validation"></td>
            </tr>
        </table>
    </div>

    <button type="button"loxiaType="button" class="confirm" title="tip" onclick="save_cus()">
        保存
    </button>
    <button type="button"  loxiaType="button" class="confirm" title="tip" onclick="submit_cus()">
        提交
    </button>
</div>

<%-- 录入查看--%>
<div id="addProduct2" style="display:none;">
    <table class="addProduct2">
        <tr>
            <td>企业名称:</td>
            <td width="400" class="text_left entName"></td>
        </tr>
        <tr>
            <td>统一信用代码: </td>
            <td class="organizationCode text_left"></td>
        </tr>

        <tr>
            <td>成立时间: </td>
            <td class="text_left companyCreateTime"></td>
        </tr>
        <tr>
            <td>注册资本: </td>
            <td class="text_left registeredCapital"></td>
            <td style="text-align: left"></td>
        </tr>
        <tr>
            <td>实缴资本: </td>
            <td class="text_left contributedCapital"></td>
            <td style="text-align: left"></td>
        </tr>
        <tr>
            <td>所属行业: </td>
            <td class="text_left industry"></td>
        </tr>
        <tr>
            <td>营收范围: </td>
            <td class="text_left revenueRange"></td>
            <td style="text-align: left"></td>
        </tr>
        <tr>
            <td>负债情况: </td>
            <td class="text_left debtInfo"></td>
            <td style="text-align: left"></td>
        </tr>
        <tr>
            <td>企业法人: </td>
            <td  class="text_left businessLegalPerson"></td>
        </tr>
        <tr>
            <td>经营区域:</td>
            <td class="text_left businessArea"></td>
        </tr>
        <tr>
            <td>注册地: <span class="color_red">*</span></td>
            <td class="salaryRange text_left zcd">
                <linkage:select type="province"  name="registerLocationProvinceId" pid="pb1" cid="cb1" did="db1" seledProvince="${provinces}" />
                <linkage:select type="city" seledCity="${citys}" name="registerLocationCtiyId" cid="cb1" did="db1" />
                <linkage:select type="district" seledDistrict="${districts}" name="registerLocationDistrictId" did="db1" />

                <input disabled type="text " value="" placeholder="如：协和路699号" name="registerLocationDetail" width="100" style=" width:100px" class="registerLocationDetail">
            </td>
            <%--<td>--%>

            <%--</td>--%>
        </tr>
        <tr>
            <td>办公地点: <span class="color_red">*</span></td>
            <td class="salaryRange text_left bgd">
                <linkage:select type="province" name="officeLocationProvinceId" pid="pb11" cid="cb11" did="db11" seledProvince="${provinces}" />
                <linkage:select type="city" seledCity="${citys}" name="officeLocationCtiyId" cid="cb11" did="db11" />
                <linkage:select type="district" seledDistrict="${districts}" name="officeLocationDistrictId" did="db11" />
                <input type="text " disabled placeholder="如：协和路699号" name="officeLocationDetail" style=" width:100px" class="officeLocationDetail">
            </td>
            <%--<td>--%>

            <%--</td>--%>
        </tr>
        <tr>
            <td>逾期次数: </td>
            <td class="text_left overDucCount" > </td>
        </tr>
        <tr>
            <td>逾期金额: </td>
            <td class=" text_left overDucAmmount"> </td>
        </tr>
        <tr>
            <td>其他借款金额:</td>
            <td class="text_left otherLoanAmount" > </td>
            <td style="text-align: left"></td>
        </tr>
        <tr>
            <td>基本情况介绍: </td>
            <td class="text_left basicInfo" > </td>
        </tr>
        <tr>
            <td>借款用途: </td>
            <td class="text_left lendReason" >

            </td>
        </tr>
        <tr>
            <td>还款来源: </td>
            <td class="text_left repaymentSource" ></td>
        </tr>
        <tr>
            <td>征信情况: </td>
            <td class="text_left creditInfo" ></td>
        </tr>
        <tr>
            <td>诉讼情况: </td>
            <td class="text_left sueInfo" ></td>
        </tr>
        <tr>
            <td>处罚情况:</td>
            <td class="text_left punishmentInfo" ></td>
        </tr>

    </table>
</div>


</body>
</html>

