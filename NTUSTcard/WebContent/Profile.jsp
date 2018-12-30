<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<%	DBController dbc = new DBController();
	ArrayList<UserInfoBean> temp = dbc.getData();
%>

<html>
<head>
<meta charset="BIG5">
<title>Profile</title>
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
.demo1 {
	padding-top: 50px;
	text-align: center
}
</style>

</head>
<body bgcolor="#FFFAF2">
	<table style="width: 750px;">
					<tr>
						<td>
							<form method="post" action="main">
								<span style="float: left;"> <input type="button"
									value="抽卡" name="GetCardButton"> <input type="button"
									value="個人資料" name="Profile"> <input type="button"
									value="隱私設定" name="Secrecy">
								</span>
							</form>
						</td>
						<td>
							<form method="post" action="main">
								<span style="float: right;"> <input type="button"
									value="首頁" name="HomePage"> <input type="button"
									value="布告欄" name="Board"> <input type="button"
									value="家族頁" name="Family"><input type="hidden" name="action" value="logout"> <input
			type="submit" value="登出" name="logoutButton">
								</span>
							</form>
						</td>
					</tr>
				</table>
	<table align="center" style="width: 1000px;">
			<b><font size="6" face="微軟正黑體">Profile</font></b>
				
	<table style="border: 2px #7878FF solid; width: 900px"
					cellpadding="10" border='0' BGCOLOR=#FFFAF2>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="微軟正黑體">Your name:	</font></b>
						<%
 							UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
 							String name = user.getName();
 							out.println(name);
 						%>
					</td>
					<td width="40%" align="left" rowspan=4>
						<b><font size="2" face="微軟正黑體">Your interest or hobby:	</font></b>
						<br>
						<textarea name="Content" style="width:250px;height:300px;" width="50%" height="50%">hobby</textarea>	
					</td>
					<td width="30%" align="left" rowspan=2>
						<img src="http://localhost:8080/DBTest/src/haibao.jpg"/>		
					</td>		
				</tr>
				<tr>
					<td width="30%" align="left">				
							<b><font size="2" face="微軟正黑體">Gender:	</font></b>
							MALE
					</td>		
				</tr>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="微軟正黑體">Birthday:	</font></b>
						<%
 							String birthday = user.getBirthday();
 							out.println(birthday);
 						%>
					</td>		
					<td width="40%" align="left">
						<b><font size="2" face="微軟正黑體">update your new profile photo:	</font></b>
						<input type="file" name="photo">	
					</td>
				</tr>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="微軟正黑體">Department:		</font></b>
							<select name="department">
　							<option value="CSIE" selected>資訊工程系</option>
							<option value="ECE">電子工程系</option>
							<option value="EE">電機工程系</option>
							<option value="ECO">經濟系</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="微軟正黑體">Grade:	</font></b>
						<select name="Grade">
　							<option value="1">freshman</option>
							<option value="2">sophomore</option>
							<option value="3" selected>junior</option>
							<option value="4">senior</option>
							</select>
					</td>		
					<td width="40%" align="center" colspan=2>
						<input type=submit value="Cancel">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type=submit value="UpdateProfile">
					</td>
				</tr>
			</table>
</body>
</html>