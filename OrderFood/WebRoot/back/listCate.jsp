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

<title>菜品展示</title>

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
		<tr>
			<td></td>
		</tr>
	</table>
	<div id=div2 style="position: absolute;left: 900px;top: 58px">
		<span style="font-size: 14px">欢迎<a
			href="userMessage?action=person&uid=${sessionScope.user.uid }"><span
				style="color: red;font-size: 14px">${sessionScope.user.uname }</span></a>管理员登陆后台
		</span> &nbsp;&nbsp; <a href="user?action=quit"><span
			style="font-size: 14px;text-decoration: none;color: red">退出</span></a>
	</div>
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
										<form name="form1" method="post"
											action="/OrderFood/listFoodServlet?action=advSelect">
											编号：<input name="seFood_id" type="text" class="input"
												value="${foodPojo.seFood_id==0?'':foodPojo.seFood_id }" />
											&nbsp; <input type="submit" name="Submit" value="搜索">&nbsp;&nbsp;
											<a onClick="showAdvanceDiv()">高级查询</a>
											<div id="advanceDiv" style="display:none; margin-top:5px;">
												<table width="533" height="57" border="0" cellpadding="0"
													cellspacing="0">
													<tr>
														<td>菜式名称：<input type="text" name="seFood_name"
															value="${foodPojo.seFood_name  }" class="input" />
															&nbsp;&nbsp;&nbsp; 菜式描述：<input type="text"
															name="seDescript" value="${foodPojo.seDescript }"
															class="input" /></td>
													</tr>
													<tr>
														<td>价格范围：<input type="text" name="seFood_price1"
															value="${foodPojo.seFood_price1==0?'':foodPojo.seFood_price1 }"
															class="input" />&nbsp;至 <input type="text"
															name="seFood_price2"
															value="${foodPojo.seFood_price2==0?'':foodPojo.seFood_price2 }"
															class="input" /></td>
													</tr>
												</table>

											</div>
										</form>
									</div>
									<div>
										<table id="cateTable" width="567" height="206" border="1"
											cellpadding="0" cellspacing="0"
											style="border:1px solid black; border-collapse:collapse;">
											<tr>
												<td width="94"><div align="center">菜式编号</div></td>
												<td width="150"><div align="center">菜式名称</div></td>
												<td width="80"><div align="center">价格</div></td>
												<td width="150"><div align="center">描述</div></td>
												<td width="151"><div align="center">操作</div></td>
											</tr>
											<c:forEach items="${pb.data }" var="f">
												<tr>
													<td>${f.fid }</td>
													<td>${f.fname }</td>
													<td>${f.fprice }</td>
													<td>${f.fdescript }</td>
													<td>
														<div align="center">
															<a
																style="color: red;"
																href="/OrderFood/listFoodServlet?action=seefood&food_id=${f.fid }">查看详情</a>&nbsp;&nbsp;
															<a
																style="color: red;"
																href="/OrderFood/listFoodServlet?action=updatefood1&food_id=${f.fid }">修改</a>&nbsp;&nbsp;
															<a
																style="color: red;"
																href="/OrderFood/listFoodServlet?action=downfood&food_id=${f.fid }"
																onclick="confirm('确定将该商品下架吗？')">下架</a>

														</div>
													</td>
												</tr>
											</c:forEach>








										</table>
									</div> <br />
									<center>
										<table>
											<tr>

												<td><a>共${pb.totalPage }页</a></td>
												<td><form method="post"
														action="/OrderFood/listFoodServlet?action=advSelect">
														<input type="hidden" name="seFood_name"
															value="${foodPojo.seFood_name  }" /> <input
															type="hidden" name="seDescript"
															value="${foodPojo.seDescript }" class="input" /> <input
															type="hidden" name="seFood_price1"
															value="${foodPojo.seFood_price1==0?'':foodPojo.seFood_price1 }" />
														<input type="hidden" name="seFood_price2"
															value="${foodPojo.seFood_price2==0?'':foodPojo.seFood_price2 }" />
														<input type="hidden" name="pageNo"
															value="${pb.firstPage }" /> <input type="submit"
															value="首页" />
													</form></td>
												<td><form method="post"
														action="/OrderFood/listFoodServlet?action=advSelect">
														<input type="hidden" name="seFood_name"
															value="${foodPojo.seFood_name  }" /> <input
															type="hidden" name="seDescript"
															value="${foodPojo.seDescript }" class="input" /> <input
															type="hidden" name="seFood_price1"
															value="${foodPojo.seFood_price1==0?'':foodPojo.seFood_price1 }" />
														<input type="hidden" name="seFood_price2"
															value="${foodPojo.seFood_price2==0?'':foodPojo.seFood_price2 }" />
														<input type="hidden" name="pageNo" value="${pb.upPage }" />
														<input type="submit" value="上一页" />
													</form></td>
												<td><form method="post"
														action="/OrderFood/listFoodServlet?action=advSelect">
														<input type="hidden" name="seFood_name"
															value="${foodPojo.seFood_name  }" /> <input
															type="hidden" name="seDescript"
															value="${foodPojo.seDescript }" class="input" /> <input
															type="hidden" name="seFood_price1"
															value="${foodPojo.seFood_price1==0?'':foodPojo.seFood_price1 }" />
														<input type="hidden" name="seFood_price2"
															value="${foodPojo.seFood_price2==0?'':foodPojo.seFood_price2 }" />
														<input type="hidden" name="pageNo" value="${pb.downPage }" />
														<input type="submit" value="下一页" />
													</form></td>
												<td><form method="post"
														action="/OrderFood/listFoodServlet?action=advSelect">
														<input type="hidden" name="seFood_name"
															value="${foodPojo.seFood_name  }" /> <input
															type="hidden" name="seDescript"
															value="${foodPojo.seDescript }" class="input" /> <input
															type="hidden" name="seFood_price1"
															value="${foodPojo.seFood_price1==0?'':foodPojo.seFood_price1 }" />
														<input type="hidden" name="seFood_price2"
															value="${foodPojo.seFood_price2==0?'':foodPojo.seFood_price2 }" />
														<input type="hidden" name="pageNo" value="${pb.lastPage }" />
														<input type="submit" value="末页" />
													</form></td>

												<td><a>第${pb.pageNo }页</a></td>
												<td><a>共${pb.totalRows }条记录</a></td>

											</tr>
										</table>
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
