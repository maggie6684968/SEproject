<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="defult.NTUSTmodle"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<%	
	NTUSTmodle model = new NTUSTmodle();
	DBController dbc = model.getDBController();
	ArrayList<UserInfoBean> temp = dbc.getUserData();
%>

<html>
<head>
<title>Secrecy</title>
<style>
input[type="button"] {
	border: 1px #7878FF solid;
	cursor: pointer;
	font-family: Microsoft JhengHei;
	font-weight: bold;
}

input[type="submit"] {
	border: 1px #7878FF solid;
	cursor: pointer;
	font-family: Microsoft JhengHei;
	font-weight: bold;
}
input[type="text"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="password"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="date"] {
	padding: 1px #7878FF solid;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
input[type="email"] {
	padding: 1px #7878FF solid;
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
<body bgcolor="#FFFAF2">
	<table align="center" style="width: 1000px;">
			<b><font size="6" face="微軟正黑體">Privacy Settings</font></b>
			<table style="border: 2px #7878FF solid; width: 900px"
					cellpadding="10" border='0' BGCOLOR=#FFFAF2>
			<form method="post" action="main">
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
						<input type="password" name="oldPassword" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
									style="width: 175px;">
					</td>
					<td width="50%" align="left" >
						<b><font size="2" face="微軟正黑體">Old e-mail:</font></b>
						<%
 							UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
 							String mail = user.getMail();
 							out.println(mail);
 						%>
					</td>		
				</tr>
				<tr>
					<td width="10%" align="left" >
					</td>
					<td width="40%" align="left" >
						<b><font size="2" face="微軟正黑體">Enter new password:</font></b>
						<input type="password" name="newPassword" BGCOLOR="#F5F5F5"
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
						<input type="password" name="verifyPassword" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
									style="width: 175px;">
					</td>
					<td width="50%" align="left" >
					</td>
					
				</tr>
				<tr>
					<td width="10%" align="center" colspan=3>
						<input type=submit value="Cancel" name="action">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type=submit value="UpdatePrivacyData" name="action">
						
					</td>
					
				</tr>		
			</form>
		</table>
</body>
</html>
