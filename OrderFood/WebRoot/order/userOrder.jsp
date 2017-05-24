<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


  </head>
  
  <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"
	text="#000000" link="#000000" vlink="#000000" alink="#000000" >
	<input type="hidden" value="${requestScope.payed }" id="payed" />
     
<table width="100%" border="0" cellspacing="0" cellpadding="0"
	bgcolor="#FFFFFF" height="100%">
	<tr valign="top">
		<td>
		<table width="98%" border="0" cellspacing="1" cellpadding="2"
			align="center">
			<tr valign="bottom">
				<td height="30"><img
					src="images/cart.gif"> <font
					color="#000000">您的订单中有以下商品</font></td>
			</tr>
		</table>
		<table width="98%" border="0" cellspacing="2" cellpadding="0"
			align="center">
			<tr bgcolor=#808000>
				<td height="1" bgcolor="#999999"></td>
			</tr>
		</table>
		<table width="98%" border="0" cellspacing="2" cellpadding="0"
			align="center">
			<tr>
				<td height="5"></td>
			</tr>
		</table>
		<table width="98%" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td>
				<table width="80%" border="0" align="CENTER" cellpadding="2"
					cellspacing="1" bgcolor="#c0c0c0">
					<tr bgcolor="#dadada">
						<td height="22" width="50">
						<div align="CENTER"><font color="#000000">订单编号</font></div>
						</td>
						<td width="110" height="22">
						<div align="CENTER"><font color="#000000">购物车编号</font></div>
						</td>
						<td height="22" width="104">
						<div align="CENTER"><font color="#000000">用户账号</font></div>
						</td>
						<td height="22" width="300">
						<div align="CENTER"><font color="#000000">订单详情</font></div>
						</td>
						<td width="216" height="22">
						<div align="CENTER"><font color="#000000">订单状态</font></div>
						</td>
						<td width="316" height="22">
						<div align="CENTER"><font color="#000000">商品操作</font></div>
						</td>
					</tr>
                   <c:forEach items="${sessionScope.list }" var="order">                                          
					<tr bgcolor="#ffffff">
						<td width="50" align="center" height="22"><font
							color="#000000">${order.order_id }</font></td>
						<td align="center" height="22"><font color="#000000">${order.car.car_id }</font>
						<input type="hidden" name="prodid" value="500047"></td>
						<td width="104" align="center" height="22"><font
							color="#000000">${order.user.uid }</font></td>
						<td width="100" class="hh" align="center" height="22"><a href="order?action=select&cid=${order.car.car_id }">查看订单详情</a></td>
						<td width="116" class="bb" align="center" height="22"><font
							color="#000000">${order.payed=='1'?'已支付':'未支付' }</font></td>
						<td width="116" class="bb" align="center" height="22"><font
						    color="#000000">	
						    <a href="order?action=payeds&cid=${order.car.car_id } ">去支付</a>	&nbsp;&nbsp;&nbsp;&nbsp;				    
						    <a href="order?action=delete&oid=${order.order_id }">删除</a>
						     
						    </font></td>
						    
                            
                               
					</tr>
                 </c:forEach>                    									
				</table>
				<br>				
			 </td>
			</tr>
		</table>
		</td>
	</tr>
</table>
     
<br>
</body>
</html>
