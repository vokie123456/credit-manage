<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  manifest="/scripts/common/clear.appcache">

<head>
<%@include file="/common/meta.jsp"%>
<fmt:setBundle basename="messages" var="lang" />

<script type="text/javascript"
	src="<c:url value='/scripts/common/compute.js'/>"></script>

<style type="text/css">
</style>
<linkage:define />
</head>

<body contextpath="<%=request.getContextPath()%>">
	<Table style="width: 100%">
		<tr>
			<td style="width: 50%" valign="top">
				<div class="divBgColor">资产</div>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="saveproduct">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>存货</th>
								<th>数量</th>
								<th>单价</th>
								<th>价值</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>总存货</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="sumprice">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="money"
									mandatory="true" sumTextId="sumprice"
									checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div> <br />
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%" id="">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>固定资产</th>
								<th>描述</th>
								<th>单价</th>
								<th>价值</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>总固定资产</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="sumfixacccount">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="money"
									mandatory="true" sumTextId="sumfixacccount"
									checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="buttonlist buttonDivWidth">
					<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
				</div>
			</td>
			<td style="width: 50%" valign="top">
				<div class="divBgColor">收入和支出预算</div>
				<div id="gradeDiv" loxiaType="edittable">
					<table operation="add,delete" append="1" width="100%"
						id="yearincomeTable">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectCostAll"
									id="selectCostAll" /></th>
								<th>业务类型</th>
								<th>业务项目</th>
								<th>去年销量</th>
								<th>去年单价</th>
								<th>去年销售额</th>
								<th>预计今年销量</th>
								<th>预计今年单价</th>
								<th>预计今年销售额</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<td>总规律性收入</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td>-</td>
								<td id="sumlastyear">￥0.00</td>
								<td>-</td>
								<td>-</td>
								<td id="sumyear">￥0.00</td>
							</tr>
						</tfoot>
						<tbody id="gradeBody">

						</tbody>
						<tbody>
							<tr>
								<td><input type="checkbox" id="selectCost"
									name="selectCost" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="ctype"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="lastyear"
									value="" mandatory="true" sumTextId="sumlastyear"
									checkmaster="computeCommon" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="remark"
									value="" mandatory="true" /></td>
								<td><input type="text" loxiaType="input" name="year"
									mandatory="true" sumTextId="sumyear"
									checkmaster="computeCommon" /></td>
							</tr>
						</tbody>
					</table>
		</div>
		<br />
		<div id="gradeDiv" loxiaType="edittable">
			<table operation="add,delete" append="1" width="100%"
				id="payoutTable">
				<thead>
					<tr>
						<th><input type="checkbox" name="selectCostAll"
							id="selectCostAll" /></th>
						<th>主营业务成本支出</th>
						<th>支出</th>
					</tr>
				</thead>
				<tfoot>
					<tr>
						<td>总成本</td>
						<td>-</td>
						<td id="sumPayOut">￥0.00</td>
					</tr>
				</tfoot>
				<tbody id="gradeBody">

				</tbody>
				<tbody>
					<tr>
						<td><input type="checkbox" id="selectCost" name="selectCost" /></td>
						<td><input type="text" loxiaType="input" name="ctype"
							value="" mandatory="true" /></td>
						<td><input type="text" loxiaType="input" name="remark"
							value="" mandatory="true" sumTextId="sumPayOut"
							checkmaster="computeCommon" /></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
		</div>
		</td>
		</tr>
	</Table>

	<div class="divBgColor">贷款期内主营业务收入支出预测</div>
	<div id="gradeDiv" loxiaType="edittable">
		<table  width="100%" id="table">
			<thead>
				<tr>
					<th>描述(月)</th>
					<th>育肥羊价格</th>
					<th>重量(斤)</th>
					<th>每月产仔数量</th>
					<th>每月出栏</th>
					<th>销售收入</th>
					<th>种养、育肥羊总支出</th>
					<th>种养存栏数</th>
					<th>育肥羊存栏数</th>
					<th>种养每月支出</th>
					<th>育肥羊每月支出</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<td>合计:</td>
					<td id="sumyfyprice">￥0.00</td>
					<td id="sumweight">￥0.00</td>
					<td id="summonthnumber">￥0.00</td>
					<td id="sumchulan">￥0.00</td>
					<td id="sumsellincome">￥0.00</td>
					<td id="sumallpayout">￥0.00</td>
					<td id="sumzysavelan">￥0.00</td>
					<td id="sumyfysavelan">￥0.00</td>
					<td id="sumzypayout">￥0.00</td>
					<td id="sumyfypayout">￥0.00</td>
				</tr>
			</tfoot>
			<tbody>
			<c:forEach var="i" begin="1" end="12">
				<tr>
					<td align="center"><c:out value="${i}"/></td>
					<td><input type="text" loxiaType="input" name="price" value=""
						mandatory="true" 
						sumTextId="sumyfyprice"
						checkmaster="computeCommon"
						/></td>
					<td><input type="text" loxiaType="input" name="weight"
						value="" mandatory="true" 
						sumTextId="sumweight"
						checkmaster="computeCommon"
						/></td>
					<td><input type="text" loxiaType="input" name="monthnumber"
						value="" mandatory="true" 
						sumTextId="summonthnumber"
						checkmaster="computeCommon"
						/></td>
					<td><input type="text" loxiaType="input" name="chulan"
					    value="" mandatory="true" 
					    sumTextId="sumchulan"
						checkmaster="computeCommon"
					    /></td>
					<td><input type="text" loxiaType="input" name="sellincome"
						value="" mandatory="true" 
						sumTextId="sumsellincome"
						checkmaster="computeCommon"
						/></td>
					<td><input type="text" loxiaType="input" name="allpayout"
						value="" mandatory="true" 
						sumTextId="sumallpayout"
						checkmaster="computeCommon"
						/></td>	
					<td><input type="text" loxiaType="input" name="zysavelan"
						value="" mandatory="true" 
						sumTextId="sumzysavelan"
						checkmaster="computeCommon"
						/></td>	
					<td><input type="text" loxiaType="input" name="yfysavelan"
						value="" mandatory="true" 
						sumTextId="sumyfysavelan"
						checkmaster="computeCommon"
						/></td>
					<td><input type="text" loxiaType="input" name="zypayout"
						value="" mandatory="true" 
						sumTextId="sumzypayout"
						checkmaster="computeCommon"
						/></td>	
					<td><input type="text" loxiaType="input" name="yfypayout"
						value="" mandatory="true" 
						sumTextId="sumyfypayout"
						checkmaster="computeCommon"
						/></td>
				</tr>
				</c:forEach>
			</tbody>
			<tbody id="gradeBody">

			</tbody>
		</table>
	</div>
	<div class="buttonlist buttonDivWidth">
			<button type="button" loxiaType="button" class="confirm" id="save">保存</button>
		</div>
</body>
</html>
