<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我学我会网上订餐系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="./css/styles.css" type="text/css" />
<script type="text/javascript">
	function show() {
		var id = document.getElementById("show").value;
		if (id != "") {
			document.getElementById("div1").style.display = "none";
			document.getElementById("div2").style.display = "block";
			document.getElementById("div3").style.display = "block";
		} else {
			document.getElementById("div1").style.display = "block";
			document.getElementById("div2").style.display = "none";
			document.getElementById("div3").style.display = "none";
		}
	}
</script>
<style type="text/css">
#body1 {
	width: 580px;
}

#body1 ul {
	list-style-type: none;
	padding: 0px;
}

#body1 ul li {
	float: left;
	text-align: center;
	line-height: 14px;
	width: 220px;
	height: 150px;
	margin: 0px 25px;
}

#body1 ul a {
	width: 180px;
	color: black;
	text-decoration: none;
}

#body1 ul a:hover {
	font-size: 14px
}
</style>
</head>

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0"
	onload="show()">
	<input type="hidden" id="show" value="${sessionScope.user.uname}">
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
					网上订餐系统</B>
			</TD>
		</tr>
		<tr>
			<td align="right"><div id=div1>
					<a href="login.jsp" onclick="show()"><span
						style="font-size: 14px;color: gray">用户登录</span> </a> <a
						href="register.jsp"><span style="font-size: 14px;color: gray">用户注册</span>
					</a>
				</div>
			</td>

		</tr>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>
	<div id=div2
		style="position: absolute;left: 900px;top: 58px;display: none">
		<span style="font-size: 14px">欢迎<a
			href="userMessage?action=person&uid=${sessionScope.user.uid }"><span
				style="color: red;font-size: 14px">${sessionScope.user.uname
					}</span> </a>前来订餐</span> &nbsp;&nbsp; <a href="user?action=quit"><span
			style="font-size: 14px;text-decoration: none;color: red">退出</span> </a>			   
</div>
<div id=div3
		style="position: absolute;left: 350px;top: 420px;display: none">
    <a href="order?action=compelet&uid=${sessionScope.user.uid }" style="text-decoration: none"><span style="font-size: 14px;">已支付订单</span></a>
	<br /> <br /><br /> <br />
	<a href="order?action=unCompelet&uid=${sessionScope.user.uid }" style="text-decoration: none"><span style="font-size: 14px;">未支付订单</span></a>
 </div>

	<TABLE cellSpacing=0 cellPadding=0 width=776 align=center border=0>
		<TBODY>
			<TR>
				<TD background="images/001.gif" height=42>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD width=0 height=20></TD>
								<TD align="center"><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="food" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT> </A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT> </A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT> </A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT> </A><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT> </A><FONT
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
								<TD><IMG height=234 src="images/left_top.jpg" width=181>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
					<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
						<TBODY>
							<TR>
								<TD align="center" height=30><FONT color=#000000> <SCRIPT
											language=javascript src="images/DateTime2.js"></SCRIPT> <SCRIPT
											language=javascript>
												tick('cn');
											</SCRIPT> </FONT></TD>
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
								<TD align="center">
									<TABLE cellSpacing=0 cellPadding=0 width="94%" border=0>
										<TBODY>
											<TR>
												<TD></TD>
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
									</div> &nbsp;&nbsp;</TD>
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

												<TD width="100%" align="right"><a href="car/car.jsp"><img
														src="images/lcart_cn.gif" border=0> </a></TD>
											</TR>
										</TBODY>
									</TABLE> <BR>

									<div id="body1">
										<ul>
											<c:forEach items="${requestScope.list }" var="food">
												<li>
													<TABLE height="100%" cellSpacing=1 cellPadding=2 border=0>
														<TBODY>
															<TR>
																<TD vAlign=top width=90 height=90><A href=#
																	target=_blank><IMG height=80 alt=点击图片查看内容
																		src="images/${food.fpic }" width=80 border=0> </A></TD>
																<TD vAlign=top>
																	<TABLE cellSpacing=1 cellPadding=0 width="100%"
																		align=center border=0>
																		<TBODY>
																			<TR>
																				<TD><A href=# target=_blank><STRONG>${food.fname
																							}</STRONG> </A></TD>
																			</TR>
																			<TR>
																				<TD height=21><FONT color=#ff0000>现价：人民币${food.fprice
																						}元</FONT><BR> <a href="#">${food.fdescript }</a>！</TD>
																			</TR>
																		</TBODY>
																	</TABLE>
																</TD>
															</TR>
															<TR>
																<TD height=28>编号: ${food.fid }</TD>
																<TD>
																	<TABLE cellSpacing=1 cellPadding=0 width=145 border=0>
																		<TBODY>
																			<TR>
																				<TD align="center" width="70"><a href="cars?action=add&fid=${food.fid }"><img
																						src="images/buy_cn.gif" border="0"
																						longdesc="shoppingCart.html"> </a></TD>
																				<TD align="center" width=70><A href="user?action=seefood&food_id=${food.fid }"
																					target=_blank><IMG src="images/detail_cn.gif"
																						border=0> </A></TD>
																			</TR>
																		</TBODY>
																	</TABLE>
																</TD>
															</TR>
														</TBODY>
													</TABLE>
												</li>
											</c:forEach>
										</ul>
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
								<TD align="center"><BR>
									<P align=center>
										<FONT color=#000000>Copyright &copy;
											2009&nbsp;&nbsp;&nbsp;&nbsp; 长沙牛耳所有</FONT>
									</P>
									<P align=center></P> <BR> <BR>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	
</BODY>
</HTML>
