<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <%@include file="/common/meta.jsp" %>
  <fmt:setBundle basename="messages" var="lang"/>
  <script type="text/javascript" src="<c:url value='/scripts/frame/before/contract/contract_detail.js'/>"></script>
</head>

<body contextpath="<%=request.getContextPath()%>">

<div id="contractDetailDiv">
  <div class="divBgColor">
    <fmt:message key="label.contract.edit.title" bundle="${lang}"/>
  </div>

  <form id="contractEditForm" method="post">
    <input type="hidden" id="projectId" name="projectId" value="${contractVo.projectId }"/>
    <input type="hidden" id="contractId" name="contractId" value="${contractVo.contractId }"/>
    <input type="hidden" id="collateralIds" name="collateralIds" value="${contractVo.collateralIds}" />
    <input type="hidden" id="guaranteeIds" name="guaranteeIds" value="${contractVo.guaranteeIds}" />
    <table class="col3">
   <tr>
        <td class="label">合同模板类型：</td>
        <input type="hidden"  name="contractType" id="contractType"  value="${contractVo.contractType}" />
        <td class="content">
        	${contractVo.contractTypeName}
		</td>
      </tr>
      <tr>
        <td class="label">合同名称：</td>
        <td class="content">
          ${contractVo.contractName }
        </td>
      </tr>
      <tr>
        <td class="label">合同编号：</td>
        <td class="content">
            <c:if test="${contractVo.subCode ne null}">${contractVo.contractCode}-${contractVo.subCode}</c:if>
            <c:if test="${contractVo.subCode eq null}">${contractVo.contractCode}</c:if>
        </td>
      </tr>
      <tr>
        <td class="label">合同开始日期：</td>
        <td class="content">
          <fmt:formatDate value='${contractVo.contractBegin }' pattern='yyyy-MM-dd' /></td>
        <td class="label">合同结束日期：</td>
        <td class="content">
          <fmt:formatDate value='${contractVo.contractEnd }' pattern='yyyy-MM-dd' /></td>
      </tr>
    </table>

    <%-- 可用押品列表--%>
    <div id="collateralListWrapperDiv">
        <div class="divBgColor">押品信息</div>

        <div id="collateralListDiv">
          <table class="tabCenter" border="1" cellpadding="0" cellspacing="0"
                 width="100%">
            <th><fmt:message key="label.assessCar.edit.collateral.operate"
                             bundle="${lang}" /></th>
            <th><fmt:message key="label.assessCar.edit.collateral.type"
            bundle="${lang}" /></th>
            <th><fmt:message key="label.assessCar.edit.collateral.itNo"
            bundle="${lang}" /></th>
            <th><fmt:message
            key="label.assessCar.edit.collateral.notaryNo" bundle="${lang}" /></th>
            <th><fmt:message
            key="label.assessCar.edit.collateral.totalPrice" bundle="${lang}" /></th>
            <th><fmt:message
            key="label.assessCar.edit.collateral.assessName" bundle="${lang}" /></th>
            <th><fmt:message
            key="label.assessCar.edit.collateral.assessTime" bundle="${lang}" /></th>
            <th><fmt:message key="label.repay.princal.input"
            bundle="${lang}" /></th>

            <c:forEach items="${collateralEditListVoList}" var="collateral" varStatus="loop">
              <tr>
                <td>
                  <label >
                    <input type="checkbox" name="collateralCheckbox" value="${collateral.collateralId}"/>
                  </label>
                </td>
                <td><bizoptionname:showname biztypekey="1152,1153"
                value="${collateral.collateralType }" /></td>
                <td>${collateral.itCardNo }</td>
                <td>${collateral.notaryNo }</td>
                <td>${collateral.assessTotalprice }</td>
                <td>${collateral.assessName }</td>
                <td>${collateral.assessTime }</td>
                <td>${collateral.inputName }</td>
              </tr>
            </c:forEach>
          </table>
        </div>
    </div>

    <%-- 可用担保列表--%>
    <div id="guaranteeListWrapperDiv">
      <div class="divBgColor">
        担保信息
      </div>

      <div id="guaranteeListDiv">
        <table class="tabCenter" border="1" cellpadding="0" cellspacing="0"
               width="100%">
          <th><fmt:message key="label.assessCar.edit.collateral.operate"
                           bundle="${lang}" /></th>
          <th><fmt:message key="label.collateral.manager.guarantee.type"
          bundle="${lang}" /></th>

          <th><fmt:message key="label.collateral.manager.guarantee.name"
          bundle="${lang}" /></th>
          <th><fmt:message
          key="label.collateral.manager.guarantee.cardType"
          bundle="${lang}" /></th>
          <th><fmt:message
          key="label.collateral.manager.guarantee.cardNo" bundle="${lang}" /></th>
          <th><fmt:message
          key="label.collateral.manager.guarantee.updateTime"
          bundle="${lang}" /></th>
          <c:forEach items="${guaranteeVoList}" var="gl" varStatus="loop">
            <tr>
              <td>
                <label>
                  <input type="checkbox" name="guaranteeCheckbox" value="${gl.guaranteeId }" />
                </label>
              </td>
              <td><bizoptionname:showname biztypekey="1149"
              value="${gl.guaranteeType }" /></td>
              <td>${gl.guaranteeName }</td>
              <td><bizoptionname:showname biztypekey="1007,1102"
              value="${gl.cardType }" /></td>
              <td>${gl.cardNo }</td>
              <td>${gl.inputTime }</td>
            </tr>
          </c:forEach>
        </table>
      </div>
   </div>


    <div class="buttonlist buttonDivWidth">
      <button id="btnBack" type="button" loxiaType="button"
              class="confirm">
        <fmt:message key="label.contract.edit.btn.back" bundle="${lang}"/>
      </button>
    </div>
  </form>
</div>
</body>
