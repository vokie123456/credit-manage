<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/meta.jsp"%>
<table id="copyTable"  class="textalignCenter tabcustom"  cellpadding="0"
					cellspacing="0" >
	<tr>
			<td class="widthPx60"><input  type="checkbox"  id="selectCost"  name="selectCost" /></td>
			<td class="label">
				<bizselect:bizselect biztypekey="1090"  name="productCostList[${count}].costCode" 
				 startSort="31" endSort="50"  mandatory="true" />
				<input type="hidden" name="productCostList[${count}].costTitle" 	value="" />
			</td>
			<td class="content" >
			<bizoption:bizoption biztypekey="1092"  mandatory="true" name="productCostList[${count}].costMode"
								isChoose="false"  checkmaster="selectSetValue" />
			</td>
			<td class="content" >
				<input type="text"  loxiaType="money" trim="true" name="productCostList[${count}].costRate"  value="" />
			</td>
			<td class="content" ><input type="text" loxiaType="number" decimal="2" 	trim="true" name="productCostList[${count}].costFix"  value="" /></td>
			<td class="content tabBorderRight" ><bizoption:bizoption biztypekey="1093"   	name="productCostList[${count}].costPeriod" isChoose="false" /></td>
		</tr>
	</table>