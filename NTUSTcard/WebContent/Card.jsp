<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<%
DBController dbc = new DBController();
ArrayList<UserInfoBean> temp = dbc.getUserData();
Random rand = new Random();
int randUser = rand.nextInt(temp.size());
System.out.println(randUser);
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
		<b><font size="6" face="�L�n������">�x��d</font></b>
				<tr>
					<td width="40%" align="center" rowspan=2>
						<img src="https://ppt.cc/fLreBx@.png"
										border="1" alt="PPT.cc�Y�ϪA��" title="PPT.cc�Y�ϪA��"
										style="width: 73px; height: 71px;">
						<br>				
						<font size="6" face="�L�n������">
						<b><%
						UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
							String name = user.getName();
							out.println(name);
						%></b>
						</font>
						<br><br><br>			
						<font size="3" face="�L�n������">
						<b>
							Birthday:	
						</b>
						<b><%
 							String birthday1 = user.getBirthday();
 							out.println(birthday1);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="�L�n������">
						<b>
							Institute:	
						</b>
						<b><%
 							String institute1 = user.getInstitute();
 							out.println(institute1);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="�L�n������">
						<b>
							Depart:	
						</b>
						<b><%
 							String depart1 = user.getDepart();
 							out.println(depart1);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="�L�n������">
						<b>Hobby:</b><br>
						<b><%
							String hobby1 = user.getHobby();
							out.println(hobby1);
						%></b>
						</font>
					</td>					
				</tr>
				
				<tr>
					<td width="40%" align="center" rowspan=2>
						<img src="https://ppt.cc/fLreBx@.png"
										border="1" alt="PPT.cc�Y�ϪA��" title="PPT.cc�Y�ϪA��"
										style="width: 73px; height: 71px;">
						<br>				
						<font size="6" face="�L�n������">
						<b><%
 							UserInfoBean randuser = temp.get(randUser);
 							String UserName2 = randuser.getName();
 							out.println(UserName2);
						%></b>
						</font>
						<br><br><br>			
						<font size="3" face="�L�n������">
						<b>
							Birthday:	
						</b>
						<b><%
 							String birthday2 = randuser.getBirthday();
 							out.println(birthday2);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="�L�n������">
						<b>
							Institute:	
						</b>
						<b><%
 							String institute2 = randuser.getInstitute();
 							out.println(institute2);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="�L�n������">
						<b>
							Depart:	
						</b>
						<b><%
 							String depart2 = randuser.getDepart();
 							out.println(depart2);
						%></b>
						</font>
						<br><br>				
						<font size="3" face="�L�n������">
						<b>Hobby:</b><br>
						<b><%
							String hobby2 = randuser.getHobby();
							out.println(hobby2);
						%></b>
						</font>
					</td>					
				</tr>
	</table>
</body>
</html>