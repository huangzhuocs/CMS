<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>订单页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="./css/styles.css" type="text/css" />

<SCRIPT language=JavaScript type=text/JavaScript>
<!--

-->
</SCRIPT>

</HEAD>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
	<table cellSpacing=0 cellPadding=0 width=776 align=center border=0>
		<tr>
			<td width="220" rowspan="3"><img src="images/jb_logo.jpg"
				width="200"></td>
			<td width="556" height="36"></td>
		</tr>
		<tr>
			<TD
				style="FONT-SIZE: 24pt; FILTER: blur(add=1, direction=120, strength=5); WIDTH: 100%; COLOR: #000000; FONT-FAMILY: arial; POSITION: relative"
				noWrap><B><span class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我学我会</span>
					网上订餐系统</B></TD>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>
	<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
		<TBODY>
			<TR>
				<TD background="images/001.gif" height=42>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD width=0 height=20></TD>
								<TD align=middle><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT></A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT></A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT></A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT></A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT></A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="../backLogin.html" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT></A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT></TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
		<TBODY>
			<TR vAlign=top>
				<TD width=181 background="images/002.gif">
					<TABLE cellSpacing=0 cellPadding=0 width=181 border=0>
						<TBODY>
							<TR>
								<TD><IMG height=234 src="images/left_top.jpg" width=181></TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD align=center height=30><FONT color=#000000> <SCRIPT
											language=javascript src="images/DateTime2.js"></SCRIPT> <SCRIPT
											language=javascript>tick('cn');
											</SCRIPT>
								</FONT></TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD></TD>
							</TR>
							<TR>
								<TD background="images/003.gif" height=4></TD>
							</TR>
							<TR>
								<TD></TD>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD></TD>
							</TR>
							<TR>
								<TD background="images/003.gif" height=4></TD>
							</TR>
							<TR>
								<TD align=center>
									<TABLE cellSpacing=0 cellPadding=0 width="94%" border=0>
										<TBODY>
											<TR>
												<TD><br />
													<div id="menuDiv" style="width:80px; margin:0px auto;">
														<a href="/OrderFood/back/AddManager.jsp"
															style="color: blue;">添加新管理员</a> <br /> <br /> <a
															style="color: blue;"
															href="/OrderFood/listFoodServlet?action=listfood">餐品列表</a><br />
														<br /> <a style="color: blue;"
															href="/OrderFood/back/cateDetail.jsp">添加餐品</a><br /> <br />
														<a style="color: blue;"
															href="/OrderFood/listFoodServlet?action=listuser">查看用户信息</a><br />
														<br /> <a style="color: blue;"
															href="/OrderFood/listFoodServlet?action=listorder">查看订单</a><br />
														<br /> <a style="color: blue;"
															href="/OrderFood/listFoodServlet?action=listoldorder">查看历史订单</a>
														<br /> <br /> <a style="color: red;" href="">退出后台管理</a>

													</div></TD>
											</TR>
										</TBODY>
									</TABLE>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
				<TD>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD><IMG height=72 src="images/001.jpg" width=595></TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD width="90%">
									<div class='cnt'>
										<marquee style="FONT-SIZE: 13px; COLOR: #0000FF"
											scrollamount='5' direction='left'>
											<IMG height=15 src="images/tp009.gif" width=15>
											欢迎您使用我学我会网上订餐系统，祝您用餐愉快！
										</marquee>
									</div> &nbsp;&nbsp;
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD align=right background="images/004.gif" height=19></TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="96%" align=center
						border=0>
						<TBODY>
							<TR>
								<TD><BR></TD>
							</TR>
						</TBODY>
					</TABLE>
					<table width="92%" border="0" align="CENTER" cellpadding="2"
						cellspacing="1" bgcolor="#c0c0c0">
						<tr>
							<td colspan="9"><div align="center" class="STYLE2">订单详情</div></td>
						</tr>
						<tr bgcolor="#dadada">
							<td height="22" width="50">
								<div align="CENTER">
									<font color="#000000">编号</font>
								</div>
							</td>
							<td width="610" height="22">
								<div align="CENTER">
									<font color="#000000">商品名称</font>
								</div>
							</td>
							<td height="22" width="104">
								<div align="CENTER">
									<font color="#000000">单价</font>
								</div>
							</td>
							<td height="22" width="100">
								<div align="CENTER">
									<font color="#000000">数量</font>
								</div>
							</td>
							<td width="116" height="22">
								<div align="CENTER">
									<font color="#000000">金额</font>
								</div>
							</td>
						</tr>
						<c:forEach items="${list }" var="item">
							<tr bgcolor="#ffffff">
								<td width="50" align="center" height="22"><font
									color="#000000">${item.food_id }</font></td>
								<td align="center" height="22"><font color="#000000">${item.food_name }</font>
									<input type="hidden" name="prodid" value="500047"></td>
								<td width="104" align="center" height="22"><font
									color="#000000">￥${item.food_price }</font></td>
								<td width="100" class="hh" align="center" height="22">${item.count }</td>
								<td width="116" class="bb" align="center" height="22"><font
									color="#000000">￥${item.money }</font></td>
							</tr>
						</c:forEach>
						<tr bgcolor="#dadada">
							<td width="50" height="22" align="center"><font
								color="#000000">合计</font></td>
							<td height="22" align="center"><font color="#000000">-</font></td>
							<td width="104" height="22" align="center"><font
								color="#000000">-</font></td>
							<td width="100" class="hh" height="22" align="center"><font
								color="#000000">-</font></td>
							<td width="116" class="bb" align="center" height="22"><font
								color="#000000">￥${list[1].total } </font></td>
						</tr>

					</table> <br> <br>





				</TD>
			</TR>
		</TBODY>

	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
		<TBODY>
			<TR>
				<TD background="images/005.gif" height=8></TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
		<TBODY>
			<TR>
				<TD bgColor=#eeeeee>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD align=center><BR>
									<P align=center>
										<FONT color=#000000>Copyright &copy;
											2009&nbsp;&nbsp;&nbsp;&nbsp; 长沙牛耳教育所有</FONT>
									</P> <BR> <BR></TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</BODY>
</HTML>
