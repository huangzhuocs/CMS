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

<title>用户登录界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="./css/styles.css" type="text/css" />

<script language="javascript">
	function checkUserInfo() {
		if (document.loginForm.userName.value == "") {
			alert("用户名不能为空");
			return false;
		}
		if (document.loginForm.userPwd.value == "") {
			alert("密码不能为空");
			return false;
		}
	}
</script>
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
												<TD width="100%" align="center">我学我会网上点餐系统用户请直接登录</TD>
											</TR>
										</TBODY>
									</TABLE> <BR>
								</TD>
							</TR>
						</TBODY>
					</TABLE> <!-- 用postForm表单向result.jsp用GET请求提交数据，注意method属性和action属性的设置
				loginName参数用来保存用户名 
				loginPass参数用来保存密码
			-->
					<form method="POST" name="loginForm"
						onSubmit="return checkUserInfo()" action="user?action=login">
						<table width="100%" border="0">
							<tr>
								<td width="15%"></td>
								<td width="12%"></td>
								<td width="29%"></td>
								<td width="44%"></td>
							</tr>
							<tr>
								<td></td>
								<td valign="middle" align="center">用户名：</td>
								<td valign="top"><input type="text" name="userName"
									size="19" class="input"></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td valign="middle" align="center">密&nbsp;&nbsp;码：</td>
								<td valign="top"><input type="password" name="userPwd"
									size="20" class="input"></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2" align="center"><input type="submit"
									name="Submit" value="登录" onclick="show()"></td>
								<td></td>
							</tr>
							<tr>
								<td height="33"></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<div id=error align="center">
							<span style="color: red"> <c:if
									test="${requestScope.errorMsg != null }">
			       ${requestScope.errorMsg}
			    </c:if>
							</span>
						</div>
					</form>
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
											2009&nbsp;&nbsp;&nbsp;&nbsp; 长沙牛耳教育所有</FONT>
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
</HTML>