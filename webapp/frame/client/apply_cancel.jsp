
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
    <%@include file="/common/meta.jsp"%>
    <fmt:setBundle basename="messages" var="lang" />
    <title>申请取消列表</title>
    <script type="text/javascript"
            src="<c:url value='/scripts/frame/client/apply_cancel.js?v=1.0.5'/>"></script>
    <script type="text/javascript"
            src="<c:url value='/scripts/common/paginationInit.js'/>"></script>
</head>
<style>
    .style_td {
        width: 45% !important;
    }
    .label {

        width:130px;
        text-align: right;
    }
    .client_adv{width:100%;}
    .client_adv td{height:30px; line-height:30px; text-align:right;}
    .left-tex{width:100%;}
    .left-tex  td:last-child{text-align:left;}
    .left-tex td select{width:150px;}
    .left-tex td textarea{width:350px; height:150px;resize:none}
    .client-find{width:900px; text-align:center;white-space:normal;}
    .dayDv{position: relative;width:250px;}
    .dayDv .moreA{position: absolute; right: -20px; top: 3px;}
    .timeDv{position: relative; display: none;width:200px;}
    .timeDv input{width: 85px;}
    .timeDv .closeA{position: absolute; right: -20px; top: 3px;}
    .loginPush input{border:none;}
    select.ui-loxia-default, input.ui-loxia-default, textarea.ui-loxia-default {
        width: 71%;
    }
</style>
<body contextpath="<%=request.getContextPath()%>">
<form id="lendListForm" method="post">
    <table>
        <tr>
            <td class="label">客户：</td>
            <td width="150"><input name="clientName" loxiaType="input" trim="true" /></td>
            <td class="label">手机号码：</td>
            <td width="150"><input  name="mobilePhone" loxiaType="input" trim="true" /></td>
            <td class="label">客户编号：</td>
            <td width="150"><input  name="clientCode" loxiaType="input" trim="true" /></td>
            <td class="label">推进人：</td>
            <td width="150"><input  name="userName" loxiaType="input" trim="true" /></td>
        </tr>
        <tr>
            <td class="label">推进原因：</td>
            <td width="150" >
                <select name="caseType" loxiaType="select">
                    <option value="">请选择</option>
                    <c:forEach items="${pushReasonList}" var="pushReason" >
                        <option value="${ pushReason.subtypeCode}" <c:if test="${ pushReason.subtypeCode == 213104}"> selected = "selected" </c:if>  >${ pushReason.subtypeName}</option>
                    </c:forEach>
                    <%--<option value="213101">提现申请取消</option>--%>
                    <%--<option value="213102">更换资金渠道申请</option>--%>
                    <%--<option value="213103">提现后案件拒绝取消</option>--%>
                    <%--<option value="213104">注册未提交授信</option>--%>
                    <%--<option value="213105">审批拒绝</option>--%>
                    <%--<option value="213106">授信未提现</option>--%>
                    <%--<option value="213107">初审退回补件</option>--%>
                </select>
            </td>
            <td class="label">推进状态：</td>
            <td width="150">
                <select name="caseStatus" loxiaType="select">
                    <option value="1">请选择</option>
                    <option value="">全部</option>
                    <c:forEach items="${systemDictionariesList}" var="systemDictionaries" >

                        <c:if test="${119502 != systemDictionaries.subtypeCode}">
                            <option value="${ systemDictionaries.subtypeCode}">${ systemDictionaries.subtypeName }</option>
                        </c:if>
                    </c:forEach>
                </select>
            </td>
            <td class="label">最后推进时间：</td>
            <td width="150">
                <input  name="boostTimeStart" loxiaType="date" trim="true" style="width:90px;"/>到<input  name="boostTimeEnd" loxiaType="date" trim="true" style="width:90px;"/>
            </td>

        </tr>
        <tr>
            <td class="label">推进结果：</td>
            <td width="150">
                <select name="boostResultVal" id="boostResultVal" loxiaType="select">
                    <option value="">请选择</option>
                    <option value='124513'>无法接听</option>
                    <option value='124506'>继续跟进客户</option>
                    <option value='124508'>无效客户-联系方式无效</option>
                    <option value='124509'>无效客户-资质不符</option>
                    <option value='124510'>无效客户-无意向</option>
                    <option value='124511'>无效客户-利率不符合要求</option>
                    <option value='124512'>意向客户</option>
                </select>
            </td>
            <td class="label"> 归属地：</td>
            <td width="150">
                <input name="zone" loxiaType="input" trim="true" />
            </td>
            <td class="label">申请产品：</td>
            <td>
                <select name="productId" id="productId" loxiaType="select">
                    <option value="">全部</option>
                    <c:forEach items="${products}" var="product" >
                        <option value="${ product.id}">${ product.productName }</option>
                    </c:forEach>
                </select>

            </td>
            <td class="label"> 客户来源：</td>
            <td width="150">
                <bizselect:bizselect biztypekey="1248"
                                     startSort="1" endSort="2" id="status"
                                     name="customerSource" isChoose="true" />
            </td>
        </tr>
        <tr>
            <td class="label"> 分配状态：</td>
            <td width="150">
                <select name="allotStatus"  loxiaType="select">
                    <option value="">全部</option>
                    <option value="0">待分配</option>
                    <option value="1">已分配</option>
                </select>
            </td>

            <td class="label">常住城市：</td>
            <td class="width200">
                <linkage:select type="province" name="permanentProvince" pid="pr1" cid="c1" styleClass="style_td"/>
                <linkage:select type="city" name="permanentCity" pid="pr1" cid="c1" styleClass="style_td"/>
            </td>
            <td class="label">任务创建时间：</td>
            <td>
                <div class="dayDv">
                    <label>
                        <input type="radio" name="createTimeStr" value="2"/>
                        <span>两小时</span>
                    </label>
                    <label>
                        <input type="radio" name="createTimeStr" value="6"/>
                        <span>六小时</span>
                    </label>
                    <label>
                        <input type="radio" name="createTimeStr" value="12"/>
                        <span>半天内</span>
                    </label>
                    <a class="moreA" href="javascript:;">更多条件</a>
                </div>
                <div class="timeDv">
                    <input id="beginCreateTime"  loxiaType="date" trim="true" name="beginCreateTime" style="width:80px;"/>
                    -
                    <input id="endCreateTime"  loxiaType="date" trim="true" name="endCreateTime" style="width:80px;"/>
                    <a class="closeA" href="javascript:;">关闭</a>
                </div>
            </td>
            <%--<td class="label">来源应用：</td>--%>
            <%--<td width="150">--%>
                <%--<select name="applyCode" loxiaType="select">--%>
                    <%--<option value="">请选择</option>--%>
                    <%--<c:forEach items ="${amList}" var="mapOne">--%>
                        <%--<option value=${ mapOne.applyCode} > ${mapOne.applyName}</option>--%>
                    <%--</c:forEach>--%>
                <%--</select>--%>
            <%--</td>--%>
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
        <c:if test="${isClientManager==1}">
            <button type="button" loxiaType="button" class="confirm" id="batchAllocation" />
            批量分派推进
            </button>
        </c:if>
    </div>
    <%@include file="/common/paginationInit.jsp" %>
    <table id="tbl-lendlist"></table>
    <div id="pager"></div>

    <%--登记跟进弹框--%>
    <div id="loginPush" style="display: none;">
        <div class="loginPush">
            <input type="hidden" name="clientId" id="client_id"/>
            <input type="hidden" name="clientCreditId" id="clientCreditId"/>
            <input type="hidden" name="boostId" id="boostId"/>
            <input type="hidden" name="boostReason">
            <table width="650">
                <%--<tr>--%>
                    <%--<td>提现金额:</td>--%>
                    <%--<td id="withdrawAmt"></td>--%>
                    <%--<td>--%>
                        <%--<p style="color:blue;">最近一次登录情况</p>--%>
                    <%--</td>--%>
                <%--</tr>--%>
                <%--<tr>--%>
                    <%--<td>提现产品:</td>--%>
                    <%--<td id="productName"></td>--%>
                    <%--<td><div><span>登录时间:</span><span id="loginTime"></span></div></td>--%>
                <%--</tr>--%>


                <tr>
                    <td>客户来源:</td>
                    <td id="customerSource"></td>
                    <td>
                       <p style="color:blue;">最近一次登录情况</p>
                    </td>

                </tr>
                <tr>
                    <td><span style='color: red' style="width: 80px;">*</span>推进方式:</td>
                    <td><bizselect:bizselect biztypekey="1900" id="boostMode" name="boostMode" startSort="6"  endSort="10" isChoose="true" checkmaster="2"  selected="190006"/></td>
                    <td><div><span>登录时间:</span><input id="loginTime" name="lastLoginTime" /></div></td>
                </tr>
                <tr>
                    <td><span style='color: red'>*</span>推进结果:</td>
                    <td>
                        <select name="boostResult" id="boostResult" style="width:280px;">
                            <option value='124513' selected="selected">无法接听</option>
                            <option value='124506'>继续跟进客户</option>
                            <option value='124508'>无效客户-联系方式无效</option>
                            <option value='124509'>无效客户-资质不符</option>
                            <option value='124510'>无效客户-无意向</option>
                            <option value='124511'>无效客户-利率不符合要求</option>
                            <option value='124512'>意向客户</option>
                        </select>
                    </td>
                    <td><div><span>登录应用:</span><input type="hidden" id="applyCode" name="applyCode"><input id="loginApplication" name="applyName" /></div></td>
                </tr>
                <tr>
                    <td>工作城市:</td>
                    <td><input type="text" id="worksPrivinceName" name="worksPrivinceName" placeholder="省" value="" disabled="disabled">&nbsp;&nbsp;&nbsp;&nbsp;<input id="worksCityName"  name="worksCityName" type="text" placeholder="市" disabled="disabled"></td>
                </tr>
                <tr>
                    <td>房产所在地:</td>
                    <td><input id="housePrivinceName" name="housePrivinceName" type="text" placeholder="省" disabled="disabled">&nbsp;&nbsp;&nbsp;&nbsp;<input id="houseCityName" name="houseCityName" type="text" placeholder="市" disabled="disabled"></td>
                </tr>
                <tr>
                    <td style="width: 80px;"><span style='color: red'>*</span>推进描述:</td>
                    <td><textarea id="boostDesc" name='boostDesc' cols="60" rows="5" ></textarea></td>
                </tr>
            </table>
        </div>
    </div>
</form>
</body>
</html>
