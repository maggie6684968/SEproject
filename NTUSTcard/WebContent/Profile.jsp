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
									value="��d" name="GetCardButton"> <input type="button"
									value="�ӤH���" name="Profile"> <input type="button"
									value="���p�]�w" name="Secrecy">
								</span>
							</form>
						</td>
						<td>
							<form method="post" action="main">
								<span style="float: right;"> <input type="button"
									value="����" name="HomePage"> <input type="button"
									value="���i��" name="Board"> <input type="button"
									value="�a�ڭ�" name="Family"><input type="hidden" name="action" value="logout"> <input
			type="submit" value="�n�X" name="logoutButton">
								</span>
							</form>
						</td>
					</tr>
				</table>
	<table align="center" style="width: 1000px;">
			<b><font size="6" face="�L�n������">Profile</font></b>
				
	<table style="border: 2px #7878FF solid; width: 900px"
					cellpadding="10" border='0' BGCOLOR=#FFFAF2>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="�L�n������">Your name:	</font></b>
						<%
 							UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
 							String name = user.getName();
 							out.println(name);
 						%>
					</td>
					<td width="40%" align="left" rowspan=4>
						<b><font size="2" face="�L�n������">Your interest or hobby:	</font></b>
						<br>
						<textarea name="Content" style="width:250px;height:300px;" width="50%" height="50%">hobby</textarea>	
					</td>
					<td width="30%" align="left" rowspan=2>
						<img src="http://localhost:8080/DBTest/src/haibao.jpg"/>		
					</td>		
				</tr>
				<tr>
					<td width="30%" align="left">				
							<b><font size="2" face="�L�n������">Gender:	</font></b>
							MALE
					</td>		
				</tr>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="�L�n������">Birthday:	</font></b>
						<%
 							String birthday = user.getBirthday();
 							out.println(birthday);
 						%>
					</td>		
					<td width="40%" align="left">
						<b><font size="2" face="�L�n������">update your new profile photo:	</font></b>
						<input type="file" name="photo">	
					</td>
				</tr>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="�L�n������">Department:		</font></b>
							<select name="department">
�@							<option value="CSIE" selected>��T�u�{�t</option>
							<option value="ECE">�q�l�u�{�t</option>
							<option value="EE">�q���u�{�t</option>
							<option value="ECO">�g�٨t</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td width="30%" align="left">				
						<b><font size="2" face="�L�n������">Grade:	</font></b>
						<select name="Grade">
�@							<option value="1">freshman</option>
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