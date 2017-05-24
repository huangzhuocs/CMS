<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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

<script language="javascript">
	function checkUserInfo() {
	var name = document.getElementById("name").value;
	var addr = document.getElementById("addr").value;
	var tel = document.getElementById("tel").value;
	var payradio = document.getElementById("payradio").value;
		if (name == "") {
			alert("订餐名不能为空");
			return false;
		}
		if (addr == "") {
			alert("送餐地址不能为空");
			return false;
		}
		if (tel == "") {
			alert("联系电话不能为空");
			return false;
		}
		if (payradio == "") {
			alert("必须选择支付方式");
			return false;
		}
	}
</script>

</HEAD>
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<table cellSpacing=0 cellPadding=0 width=776 align=center border=0>
	<tr>
		<td width="220" rowspan="3"><img src="images/jb_logo.jpg"
			width="200"></td>
		<td width="556" height="36">　</td>
	</tr>
	<tr>
		<TD
			style="FONT-SIZE: 24pt; FILTER: blur(add=1, direction=120, strength=5); WIDTH: 100%; COLOR: #000000; FONT-FAMILY: arial; POSITION: relative"
			noWrap><B><span class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我学我会</span>
		网上订餐系统</B></TD>
	</tr>
	<tr>
		<td>　</td>
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
							language=javascript>tick('cn');</SCRIPT> </FONT></TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD>　</TD>
					</TR>
					<TR>
						<TD background="images/003.gif" height=4></TD>
					</TR>
					<TR>
						<TD>　</TD>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
				<TBODY>
					<TR>
						<TD>　</TD>
					</TR>
					<TR>
						<TD background="images/003.gif" height=4></TD>
					</TR>
					<TR>
						<TD align=center>
						<TABLE cellSpacing=0 cellPadding=0 width="94%" border=0>
							<TBODY>
								<TR>
									<TD>　</TD>
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
						<div class='cnt'><marquee
							style="FONT-SIZE: 13px; COLOR: #0000FF" scrollamount='5'
							direction='left'><IMG height=15 src="images/tp009.gif"
							width=15> 欢迎您使用我学我会网上订餐系统，祝您用餐愉快！</marquee></div>
						&nbsp;&nbsp;</TD>
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
			<TABLE cellSpacing=0 cellPadding=0 width="96%" align=center border=0>
				<TBODY>
					<TR>
						<TD><BR>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<table width="92%" border="0" align="CENTER" cellpadding="2"
					cellspacing="1" bgcolor="#c0c0c0">
					<tr bgcolor="#dadada">
						<td height="22" width="50">
						<div align="CENTER"><font color="#000000">编号</font></div>
						</td>
						<td width="610" height="22">
						<div align="CENTER"><font color="#000000">商品名称</font></div>
						</td>
						<td height="22" width="104">
						<div align="CENTER"><font color="#000000">单价</font></div>
						</td>
						<td height="22" width="100">
						<div align="CENTER"><font color="#000000">数量</font></div>
						</td>
						<td width="116" height="22">
						<div align="CENTER"><font color="#000000">金额</font></div>
						</td>
					</tr>
                   <c:forEach items="${sessionScope.order.items }" var="item">                                
					<tr bgcolor="#ffffff">
						<td width="50" align="center" height="22"><font
							color="#000000">${item.key }</font></td>
						<td align="center" height="22"><font color="#000000">${item.value.food.fname }</font>
						<input type="hidden" name="prodid" value="500047"></td>
						<td width="104" align="center" height="22"><font
							color="#000000">￥${item.value.food.fprice }</font></td>
						<td width="100" class="hh" align="center" height="22">${item.value.num }</td>
						<td width="116" class="bb" align="center" height="22"><font
							color="#000000">￥${item.value.sum }</font></td>
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
							color="#000000">￥${sessionScope.order.total } </font></td>
					</tr>
					
				</table><br><br>
			<form method="post" action="order?action=submit"  name="loginForm"
						onSubmit="return checkUserInfo()">
			    <input type="hidden" value = "${sessionScope.oid}" id = oid name="oid">			 
			    <table cellspacing=1 cellpadding=4 width="92%" border=0
				align="CENTER" bgcolor="#c0c0c0">
				<tr bgcolor="#dadada">
					<td colspan="5" height="25" align=center><font color="#000000">请确认支付和配送信息</font></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" align="RIGHT"><font color="#000000">订 餐
					人：</font></td>
					<td colspan=4 width="78%"><input type="text" name="name" id="name"
						size="46" maxlength="20"></td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" align="RIGHT"><font color="#000000">送货地址：</font></td>
					<td colspan=4 width="78%"><input type="text" name="addr" id="addr"
						size="46" maxlength="200"></td>
				</tr>
			
				<tr bgcolor="#ffffff">
					<td width="22%" height="31" align="RIGHT"><font
						color="#000000">联系电话：</font></td>
					<td colspan=4 width="78%" height="31"><input type="text"
					id = "tel"	name="tel" size="46" maxlength="13"></td>								
				</tr>				
				<tr bgcolor="#ffffff">
					<td width="22%" height="36" align="RIGHT"><font
						color="#000000">支付方式：</font></td>
					<td colspan=4 width="78%" height="36">
					<table width='100%' border='0' cellpadding='3' cellspacing='1'
						bgcolor='#c0c0c0'>
						<tr bgcolor='#ffffff'>
							<td align='center' width='20'><input type='radio'
							id ="payradio"	name='payradio' value='0' checked="checked"></td>
							<td nowrap><font color='#000000'>&nbsp;餐到付款&nbsp;</font></td>
							<td><font color='#000000'>仅限3环内</font></td>
							<td align='center' width='20'><input type='radio'
							id ="payradio"	name='payradio' value='1'></td>
							<td nowrap><font color='#000000'>&nbsp;在线支付&nbsp;</font></td>
							
						</tr>
					</table>

					</td>
				</tr>
				<tr bgcolor="#ffffff">
					<td width="22%" height="31" align="right"><font
						color="#000000">订单附言：</font></td>
					<td colspan=4 width="78%" height="31"><textarea name="bz" id="bz"
						cols="45" rows="6"></textarea></td>
				</tr>
				<tr bgcolor="#dadada">
					<td colspan="5" height="12" align="center">
					<input type="submit" value="确认以上信息无误,提交">
						</td>
				</tr>
			</table>
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
						<TD align=center><BR>
						<P align=center><FONT color=#000000>Copyright &copy;
						2009&nbsp;&nbsp;&nbsp;&nbsp; 长沙牛耳教育所有</FONT></P>
						<BR>
						<BR>
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
