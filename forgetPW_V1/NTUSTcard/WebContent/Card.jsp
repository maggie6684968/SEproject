<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<%	DBController dbc = new DBController();
	ArrayList<UserInfoBean> temp = dbc.getUserData();
%>
<html>
<head>
<title>card</title>
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
	<table style="width: 750px;">
					<tr>
						<td>
							<form method="post" action="main">
								<span style="float: left;">
									<input type="submit" value="Card" name="action">
									<input type="submit" value="Profile Setting" name="action">
									<input type="submit" value="Secrecy Setting" name="action">
								</span>
							</form>
						</td>
						<td>
							<form method="post" action="main">
								<span style="float: right;">
									<input type="submit" value="Home Page" name="action">
									<input type="submit" value="Board" name="action">
									<input type="submit" value="Family" name="action">
									<input type="submit" value="logout" name="action">
								</span>
							</form>
						</td>
					</tr>
				</table>
	<table style="width: 750px;">
		<b><font size="6" face="微軟正黑體">台科卡</font></b>
				<tr>
					<td width="60%" valign="bottom"><br><br>
							<form method="post" action="main">
								<input type="submit" value="抽卡" name="doro">
							</form><br><br>
					</td>
					<td width="40%" align="center" rowspan=2>
						<img src="https://ppt.cc/fLreBx@.png"
										border="1" alt="PPT.cc縮圖服務" title="PPT.cc縮圖服務"
										style="width: 73px; height: 71px;">
						<br>				
						<font size="6" face="微軟正黑體">
						<b><%
 							UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
 							String name = user.getName();
 							out.println(name);
						%></b>
						</font>
						<br><br><br>				
						<font size="3" face="微軟正黑體">
						<b>
							Gender:	male
						</b>
						<b><%
 							
						%></b>
						</font>
						<br><br>				
						<font size="3" face="微軟正黑體">
						<b>
							birthday:	
						</b>
						<b><%
 							String birthday = user.getBirthday();
 							out.println(birthday);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="微軟正黑體">
						<b>
							Institute:	
						</b>
						<b><%
 							String institute = user.getInstitute();
 							out.println(institute);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="微軟正黑體">
						<b>
							Depart:	
						</b>
						<b><%
 							String depart = user.getDepart();
 							out.println(depart);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="微軟正黑體">
						<b>hobby:</b><br>
						<b><%
 							
						%></b>
						<b>2 3 5 7 11 13 17</b>
						</font>
					</td>
					
				</tr>
				<tr>
					<td width="60%" align="left">
						<b><font size="2" face="微軟正黑體">隱藏卡片上的message:</font></b>
						<br>
						<input type="checkbox" name="hideInfo" value="gender">
						<label for="gender">Gender</label><br>
  						<input type="checkbox" name="hideInfo" value="birthday">
 						<label for="birthday">Birthday</label><br>
  						<input type="checkbox" name="hideInfo" value="photo">
						<label for="photo">Photo</label><br>
						<input type="checkbox" name="hideInfo" value="hobby">
						<label for="hobby">Hobby</label><br>
  					</td>
				</tr>
	</table>
</body>
</html>