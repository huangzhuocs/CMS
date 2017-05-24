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

<title>查看用户信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/styles.css" type="text/css" />


<style type="text/css">
<!--
.STYLE2 {
	font-size: x-large;
	font-weight: bold;
	font-family: "黑体";
}

#menuDiv a:hover {
	text-decoration: underline;
}
-->
</style>
<script type="text/javascript" src="js/save.js"></script>
</head>

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
								<TD align=middle height=30><FONT color=#000000> <SCRIPT
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
								<TD align=middle>
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
				<TD align="center">
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
								<TD>

									<TABLE cellSpacing=1 cellPadding=1 width="100%" align=center
										bgColor=#c0c0c0 border=0>
										<TBODY>
											<TR bgColor=#dadada>

												<TD width="100%" align="right"><div align="center">
														<a href="#"
															onClick="window.open('shopCart.html','shopcart','width=580,height=250,resizable=no,scrollbars=yes')"><span
															style="color:red; font-weight:bold; font-size:24px;">我学我会网上订餐系统后台界面</span></a>
													</div></TD>
											</TR>
										</TBODY>
									</TABLE> <br />
									<div>
										<form name="form1" enctype="multipart/form-data" method="post">
											<table width="563" border="1" cellpadding="0" cellspacing="0">
												<tr>
													<td colspan="9"><div align="center" class="STYLE2">用户信息</div></td>
												</tr>
												<tr>
													<td width="50" height="38"><div align="center">账号</div></td>
													<td width="70" height="38"><div align="center">密码</div></td>
													<td width="50" height="38"><div align="center">姓名</div></td>
													<td width="50" height="38"><div align="center">年龄</div></td>
													<td width="50" height="38"><div align="center">性别</div></td>
													<td width="70" height="38"><div align="center">送餐地址</div></td>
													<td width="70" height="38"><div align="center">联系电话</div></td>
													<td width="70" height="38"><div align="center">邮箱</div></td>
													<td width="100" height="38"><div align="center">喜欢的菜</div></td>

												</tr>

												<c:forEach items="${list }" var="p">
													<tr>
														<td height="38"><div align="center">${p.uname}</div></td>

														<td height="38"><div align="center">${p.upwd}</div></td>

														<td height="38"><div align="center">${p.name}</div></td>

														<td height="38"><div align="center">${p.age}</div></td>

														<td height="38"><div align="center">${p.sex}</div></td>

														<td height="38"><div align="center">${p.address}</div></td>

														<td height="38"><div align="center">${p.mobile}</div></td>

														<td height="38"><div align="center">${p.email}</div></td>

														<td height="38"><div align="center">${p.likefood}</div></td>

													</tr>
													<tr></tr>
												</c:forEach>


											</table>
										</form>
									</div>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
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
								<TD align=middle><BR>
									<P align=center>
										<FONT color=#000000>Copyright &copy;
											2009&nbsp;&nbsp;&nbsp;&nbsp; 长沙牛耳所有</FONT>
									</P>
									<P align=center></P> <BR> <BR></TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</BODY>
</html>
