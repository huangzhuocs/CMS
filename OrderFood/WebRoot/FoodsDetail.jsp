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

<title>菜品详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/styles.css" type="text/css" />

<SCRIPT language=JavaScript type=text/JavaScript>
<!--
	function showAdvanceDiv(){
		var flag = document.getElementById("advanceDiv").style.display;
		if(flag=="none")
			document.getElementById("advanceDiv").style.display = "block";
		else
			document.getElementById("advanceDiv").style.display = "none";
	}
-->
</SCRIPT>
<style type="text/css">
<!--
-->
#cateTable td {
	border: 1px solid black;
	text-align: center;
}

#menuDiv a:hover {
	text-decoration: underline;
}
</style>

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
									<table width="90%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td width="90" height="90" valign="top"><img
						src="images/${food.fpic }" border="0" width="80" height="80"></td>
					<td valign="top">
					<table width="98%" border="0" cellspacing="1" cellpadding="0"
						align="center">
						<tr>
							<td><strong>${food.fname }</strong></td>
						</tr>
						<tr>
							<td height="21">
							<font color="#ff0000">价格：人民币${food.fprice }元</font><br>
							${food.fdescript }</td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td height="30">编号: ${food.fid }</td>
					<td>
					<table width="145" border="0" cellspacing="1" cellpadding="0">
						<tr>
							<td align="center" width="70"><a href="cars?action=add&fid=${food.fid }">
							<img src="images/buy_cn.gif" border=0></a></td>
						</tr>
					</table>
					</td>
				</tr>
			</table>
			<P align=center><STRONG><FONT size=4>详细资料</FONT></STRONG></P>
			<HR align=center width="100%" color=#000000 noShade SIZE=1>

			<P align=center><IMG
				style="BORDER-LEFT-COLOR: #000000; BORDER-BOTTOM-COLOR: #000000; WIDTH: 232px; BORDER-TOP-COLOR: #000000; POSITION: static; HEIGHT: 172px; BORDER-RIGHT-COLOR: #000000; align: "
				height=294 alt="" hspace=0 src="images/${food.fpic }" width=350
				border=0></P>
			<P align=center><FONT size=3>${food.fdescript }</FONT></P>
			<br>
			</td>
		</tr>
</table>
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
	</table>
</BODY>
</html>
