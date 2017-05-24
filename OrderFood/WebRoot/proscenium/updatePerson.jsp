<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'personCentar.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="../css/styles.css" type="text/css" />

<SCRIPT language=JavaScript type=text/JavaScript>
<!--
	
-->
</SCRIPT>
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
								<TD align=center><FONT
									style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="food" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT>
								</A><FONT style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT>
								</A><FONT style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT>
								</A><FONT style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT>
								</A><FONT style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT><A
									href="#" target=_self><FONT
										style="FONT-SIZE: 13px; COLOR: #000000"></FONT>
								</A><FONT style="FONT-SIZE: 13px; COLOR: #000000">&nbsp;&nbsp;</FONT>
							</TR>
						</TBODY>
					</TABLE></TD>
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
														<a
															href="userMessage?action=person&uid=${sessionScope.user.uid }"
															style="text-decoration: none">用户个人详细信息</a><br /> <br />
														<a
															href="userMessage?action=show&uid=${sessionScope.user.uid }"
															style="text-decoration: none">修改用户信息</a> <br /> <br />
														<a href="proscenium/updatePwd.jsp"
															style="text-decoration: none">修改密码</a> <br />  <br /> <a
															href="food">退出</a>
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
														<span style="color:red; font-weight:bold; font-size:24px;">用户个人主页</span>
													</div></TD>
											</TR>
										</TBODY>
									</TABLE> <br />
									<div>
										<form name="form1" method="post"
											action="userMessage?action=update">
											<table width="563" height="255" border="0" cellpadding="0"
												cellspacing="0">
												<tr>
													<td colspan="3"><div align="center" class="STYLE2">修改用户信息</div>
													</td>
												</tr>
												<tr>
													<td width="204" height="38"><div align="right">用户ID：</div>
													</td>
													<td width="210"><input type="text" readonly="readonly"
														value="${sessionScope.user.uid }" name="uid" class="input"
														style="width:170px;"></td>
													<td width="149">&nbsp;</td>
												</tr>
												<tr>
													<td width="204" height="38"><div align="right">姓名：</div>
													</td>
													<td width="210"><input type="text" name="name"
														value="${requestScope.userMessage.name }" class="input"
														style="width:170px;"></td>
													<td width="149">&nbsp;</td>
												</tr>
												<tr>
													<td height="40"><div align="right">年龄：</div></td>
													<td><input type="text" name="age"
														value="${requestScope.userMessage.age }" class="input"
														style="width:170px;"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="40"><div align="right">性别：</div></td>
													<td><input type="text" name="sex"
														value="${requestScope.userMessage.sex }" class="input"
														style="width:170px;"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="40"><div align="right">家庭地址：</div></td>
													<td><input type="text" name="address"
														value="${requestScope.userMessage.address }" class="input"
														style="width:170px;"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="38"><div align="right">手机/电话：</div></td>
													<td><input type="text" name="mobile"
														value="${requestScope.userMessage.mobile }" class="input"
														style="width:170px;"></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="38"><div align="right">电子邮件：</div></td>
													<td><input type="text" name="email"
														value="${requestScope.userMessage.email }" class="input"
														style="width:170px;"></td>
													<td>&nbsp;</td>

												</tr>
												<tr>
													<td><div align="right">喜欢菜品：</div></td>
													<td><textarea cols="20" rows="3" name="likefood">
									    ${requestScope.userMessage.likefood }
									</textarea></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td colspan="3"><div align="center">
															<input type="submit" name="Submit" value="保 存"> <input
																type="reset" value="重 置">
														</div></td>
												</tr>
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
				<TD background="../images/005.gif" height=8></TD>
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
								<td align=center><BR>
									<P align=center>
										<FONT color=#000000>Copyright &copy;
											2009&nbsp;&nbsp;&nbsp;&nbsp; 长沙牛耳所有</FONT>
									</P>
									<P align=center></P> <BR> <BR></td>
							</TR>
						</TBODY>
					</TABLE>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
</BODY>
</HTML>