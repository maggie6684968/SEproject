<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="controller.DBController"%>
<%@ page import="controller.Data"%>
<%@ page import="java.util.ArrayList"%>

<%	DBController dbc = new DBController();
	ArrayList<Data> temp = dbc.getData();
	int id = 0;
%>
<html>
<head>
<title>Secrecy</title>
<style>
input[type="submit"] {
	border: 2px black solid;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="text"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="password"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="date"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
input[type="email"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
.demo1 {
	padding-top: 50px;
	text-align: center
}
</style>

</head>
<body bgcolor="#81F781" style="height: 960px;">
	<Form method="post" action="main" style="height: 960px;">
		<input type="hidden" name="action" value="authenticate">
		<center>
			<br> <br>
			<table BGCOLOR=#E8E8E8 BORDERCOLOR=##000000
				style="height: 540px; width: 960px">
					<b><font size="6" face="微軟正黑體">Privacy Settings</font></b>
				<tr>
					<td width="10%" align="left" >
					</td>
					<td width="40%" align="left" >
						<b><font size="2" face="微軟正黑體">Modify your password:</font></b>
					</td>
					<td width="50%" align="left" >
						<b><font size="2" face="微軟正黑體">Modify your e-mail address:</font></b>	
					</td>		
				</tr>	
				<tr>
					<td width="10%" align="left" >
					</td>
					<td width="40%" align="left" >
						<b><font size="2" face="微軟正黑體">Old password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
									style="width: 175px;">
					</td>
					<td width="50%" align="left" >
						<b><font size="2" face="微軟正黑體">Old e-mail:</font></b>
						<%out.println(temp.get(id).mail);%>	
					</td>		
				</tr>
				<tr>
					<td width="10%" align="left" >
					</td>
					<td width="40%" align="left" >
						<b><font size="2" face="微軟正黑體">Enter new password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
									style="width: 175px;">
					</td>
					<td width="50%" align="left" >
						<b><font size="2" face="微軟正黑體">Enter new e-mail:</font></b>	
						<input type="email" name="email"placeholder="XXX@gmail.com、XXX@yahoo.com.tw">
					</td>		
				</tr>
				
				<tr>
					<td width="10%" align="left" >
					</td>
					<td width="40%" align="left" >
						<b><font size="2" face="微軟正黑體">Verify new password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
									style="width: 175px;">
					</td>
					<td width="50%" align="left" >
					</td>
					
				</tr>
				<tr>
					<td width="10%" align="center" colspan=3>
						<input type=submit value="Cancel">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type=submit value="UpdatePrivacyData">
					</td>
					
				</tr>		
			</table>
		</center>
	</Form>
</body>
</html>