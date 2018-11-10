<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<p class="mrtb10">
<!-- 	<span>报告时间：2015.03.09 16:23:26</span>
	<span>查询时间：2015.03.09 13:22:45</span> -->
</p>
<table class="table-text-left tabcustomPeo" cellpadding="0" cellspacing="0" style="margin-bottom: 20px;">
	<tbody>
		<tr>
			<td style="width: 25%;" class="BgColor">姓名+身份证+手机号</td>
			<td style="width: 25%;">  
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == 0 }">
				       	未知
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == 1 }">
				                          一致
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == -1 }">
				       	不一致 
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == -2 }">
				       	数据异常 
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == -3 }">
				       	系统异常
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
			<td style="width: 25%;" class="	">+银行卡号（${zhongCXPersonInfos.bankNo } ）</td>
			<td style="width: 25%;">
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == 0 }">
				       	未知
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == 1 }">
				                          一致
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == -1 }">
				       	不一致 
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == -2 }">
				       	数据异常 
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.ncmcAuth == -3 }">
				       	系统异常
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<td class="BgColor">性别</td>
			<td>
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.gender == 0}">
			       		女
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.gender == 1}">
				                          男
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
			<td class="BgColor">年龄</td>
			<td>${zhongCXPersonInfos.age}</td>
		</tr>
		<tr>
			<td class="BgColor">星座</td>
			<td>${zhongCXPersonInfos.constellation}</td>
			<td class="BgColor">身份证原始发证机关所在地</td>
			<td>${zhongCXPersonInfos.issAutLoc}</td>
		</tr>
		<tr>
			<td class="BgColor">学历</td>
			<td>
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.education == 0}">
			       		未知
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.education == 1}">
				                          高学历
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.education == 2}">
			       		中学历
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.education == 3}}">
				                          低学历
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
			<td class="BgColor">毕业院校性质</td>
			<td>
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.schoolAttr == 0}">
			       		未知
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.schoolAttr == 1}">
				                          知名院校
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.schoolAttr == 2}">
			       		普通院校
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
		</tr>
		<tr>
			<td class="BgColor">毕业时间</td>
			<td>
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.graduationTime == 0}">
			       		未知
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.graduationTime == 1}">
				        1年内
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.graduationTime == 2}">
			       		3年内
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.graduationTime == 3}">
			       		3年以前
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
			<td class="BgColor">号码所属运营商</td>
			<td>${zhongCXPersonInfos.operator}</td>
		</tr>
		<tr>
			<td class="BgColor">号码归属地</td>
			<td>${zhongCXPersonInfos.attribution}</td>
			<td class="BgColor">号码品牌</td>
			<td>${zhongCXPersonInfos.brand}</td>
		</tr>
		<tr>
			<td class="BgColor">号码状态</td>
			<td>
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.status == 0}">
			       		未知
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.status == 1}">
				                          未启用
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.status == 2}">
			       		正常
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.status == 3}">
			       		欠费停机
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.status == 4}">
				                          其他停机
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.status == 5}">
			       		已销号
				    </c:when>
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
			<td class="BgColor">在网时长(移动暂时不支持)</td>
			<td>
				<c:if test="${zhongCXPersonInfos.operator eq '中国联通' }">
					<c:choose>
					    <c:when test="${zhongCXPersonInfos.inNettime == 1}">
				       		1个月及以下
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 2}">
	                       2个月
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 3}">
				       		3-6个月
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 4}">
				       		7-12个月
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 5}">
					                        13-24个月
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 6}">
				       		25-36个月
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 7}">
				       		37个月及以上
					    </c:when>
					    <c:otherwise>
					     	
					    </c:otherwise>
					</c:choose>
				</c:if>
				<c:if test="${zhongCXPersonInfos.operator eq '中国电信' }">
					<c:choose>
					    <c:when test="${zhongCXPersonInfos.inNettime == 0}">
				       		0天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 1}">
					                          0-10天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 2}">
				       		10-20天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 3}">
				       		20-30天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 4}">
					                        30-60天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 5}">
				       		60-90天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 6}">
				       		90-180天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 7}">
				       		180-360天
					    </c:when>
					      <c:when test="${zhongCXPersonInfos.inNettime == 8}">
					                          360-720天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 9}">
				       		720-1080天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 10}">
				       		1080-1800天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 11}">
				       		1800-2160天
					    </c:when>
					    <c:when test="${zhongCXPersonInfos.inNettime == 12}">
				       		2160天以上
					    </c:when>
					    <c:otherwise>
					     	
					    </c:otherwise>
					</c:choose>
				</c:if>
			</td>
		</tr>
		<tr>
			<td class="BgColor">发卡行</td>
			<td><%-- ${zhongCXPersonInfos.} --%></td>
			<td class="BgColor">卡性质（如：信用卡）</td>
			<td>${zhongCXPersonInfos.attribute}</td>
		</tr>
		<tr>
			<td class="BgColor">卡等级（如：金卡）</td>
			<td>${zhongCXPersonInfos.level}</td>
			<td class="BgColor">过去3个月银联消费笔数</td>
			<td>${zhongCXPersonInfos.consumerNumThrMon}</td>
		</tr>
		<tr>
			<td class="BgColor">过去12个月银联消费笔数</td>
			<td>${zhongCXPersonInfos.consumerNumTweMon}</td>
			<td class="BgColor">过去3个月银联消费金额</td>
			<td>${zhongCXPersonInfos.consumerAmtThrMon}</td>
		</tr>
		<tr>
			<td class="BgColor">过去12个月银联消费金额</td>
			<td>${zhongCXPersonInfos.consumAmtTweMon}</td>
			<td class="BgColor">过去12个月有交易的月数</td>
			<td>${zhongCXPersonInfos.consumerNumTransTweMon}</td>
		</tr>
		<tr>
			<td class="BgColor">年交易金额同城排名</td>
			<td>${zhongCXPersonInfos.rankTransAmtTweMon}</td>
			<td class="BgColor">年交易笔数同城排名</td>
			<td>${zhongCXPersonInfos.rankTransCountTweMon}</td>
		</tr>
		<tr>
			<td class="BgColor">司法风险信息</td>
			<td>
				<c:choose>
				    <c:when test="${zhongCXPersonInfos.riskInfo == 0}">
			       		没有
				    </c:when>
				    <c:when test="${zhongCXPersonInfos.riskInfo == 1}">
				      	  有
				    </c:when>
				
				    <c:otherwise>
				     	
				    </c:otherwise>
				</c:choose>
			</td>
			<td class="BgColor">万象分</td>
			<td>${zhongCXPersonInfos.score}</td>
		</tr>
		<tr>
			<td class="BgColor">身份属性因子（百分比）</td>
			<td>${zhongCXPersonInfos.identity}</td>
			<td class="BgColor">信用记录因子</td>
			<td>${zhongCXPersonInfos.creditHistory}</td>
		</tr>
		<tr>
			<td class="BgColor">履约能力因子</td>
			<td>${zhongCXPersonInfos.performance}</td>
			<td class="BgColor">行为特质因子</td>
			<td>${zhongCXPersonInfos.behavior}</td>
		</tr>
		<tr>
			<td class="BgColor">社交影响因子</td>
			<td>${zhongCXPersonInfos.social}</td>
			<td class="BgColor"></td>
			<td></td>
		</tr>
	</tbody>
</table>