<%--
  Created by IntelliJ IDEA.
  User: Hexy
  Date: 2014/9/16
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <%@include file="/common/metaload.jsp"%>
  <fmt:setBundle basename="messages" var="lang" />
  <title><fmt:message key="title.apply.applyDetail"
                      bundle="${lang}" /></title>
  <script type="text/javascript"
          src="<c:url value='/scripts/frame/account/compAccountRatio/compAccountRatio_edit.js'/>"></script>
  <style type="text/css">
    .label {
      text-align: left;
    }

    .del_all {
      text-align: right;
    }
  </style>

</head>

<form id="compAccountRatioForm" method="post">
  <div class="divBgColor">公司账套的分配占比新增</div>
  <c:forEach var="systemDictionary" items="${systemDictionaryList}">
  <table class="col3">
    <tr>
      <td class="label">
        费用名称：<c:out value="${systemDictionary.subtypeName}" />
      </td>
      <td>

        <c:forEach var="compAccountInfo" items="${compAccountInfoList}">
          <table>
            <tr>
              <td class="label">
                账套名称 ：${compAccountInfo.accountName }
              </td>
              <td class="label">账套占比% ：</td>
              <td class="content"><input data-costCode="costCode_${systemDictionary.subtypeCode}" data-ratio="data-ratio" checkmaster="computeRatio"
                                      name="ratio_${compAccountInfo.compCode}_${projectId}_${lendId}_${systemDictionary.subtypeCode}_${compAccountInfo.id}"
                                      loxiaType="number" decimal="0"  />
                </td>
            </tr>
          </table>
        </c:forEach>
      </td>
    </tr>
    </table>
  </c:forEach>
  <div class="buttonlist buttonDivWidth">
    <button type="submit" loxiaType="button" class="confirm" id="btnSave">保存</button>
  </div>
</form>

</html>
