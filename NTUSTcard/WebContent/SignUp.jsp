<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />

<html>
<head>
<title>SignUp</title>
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
<body bgcolor="#FFFAF2">
	<Form method="post" action="main" style="height: 432px;">
		<table align="center" style="width: 1000px;">
				<b><font size="6" face="�L�n������">SIGN UP</font></b>
			<table style="border: 2px #7878FF solid; width: 900px"
					cellpadding="10" border='0' BGCOLOR=#FFFAF2>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="�L�n������">Account name:</font></b>
						<input type="text" name="username" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15"
							placeholder="��J6-10��^��r���μƦr" style="width: 175px;">
					</td>
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width="40%" align="left">
								
						<b><font size="2" face="�L�n������">Gender:</font></b>
						<input type="radio" id="male" name="gender" value="male" checked>
						<label for="male">Male</label>
						<input type="radio" id="female" name="gender" value="female">
						<label for="male">Female</label>						
					</td>		
				</tr>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="�L�n������">Password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15" placeholder="��J6-20��^��r���μƦr"
							style="width: 175px;">
					</td>			
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width="40%" align="left">			
						<b><font size="2" face="�L�n������">Birthday:</font></b>
						<input type="date" name="birthday">
					</td>		
				</tr>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="�L�n������">E-mail:</font></b>
								<input type="email" name="email" placeholder="XXX@gmail.com�BXXX@yahoo.com.tw">
					</td>				
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
								
					<td width="40%" align="left">			
								<b><font size="2" face="�L�n������">Institute:	</font></b>
								<select name="institute">
�@							<option value="CSIE" selected>�q��ǰ|</option>
							<option value="ECO">�]�g�ǰ|</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="�L�n������">Real name:</font></b>
							<input type="text" name="realName" BGCOLOR="#F5F5F5"
								HTML_CTL="Text" maxLength="10" size="15"
								placeholder="�ж�J�A���u��m�W" style="width: 175px;">
					</td>				
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width="40%" align="left">
						<b><font size="2" face="�L�n������">Department:</font></b>
							<select name="department">
�@							<option value="CSIE">��T�u�{�t</option>
							<option value="ECE">�q�l�u�{�t</option>
							<option value="EE">�q���u�{�t</option>
							<option value="ECO">�g�٨t</option>
							</select>
						<b><font size="2" face="�L�n������">Grade:</font></b>
							<select name="Grade">
�@							<option value="1">freshman</option>
							<option value="2">sophomore</option>
							<option value="3">junior</option>
							<option value="4">senior</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td align="center" colspan=3>				
							<b><font size="2" face="�L�n������">Select your profile photo:</font></b>
								<input type="file" name="photo">
					</td>		
				</tr>			
				<tr>
					<td  align="center" colspan=3>				
						<input type=submit name="action" value="signUp">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<b><font size="2" face="�L�n������">���b���F?<a href="Login.jsp">�����n�J</a></font></b>
					</td>		
				</tr>
			</table>			
			</table>
		
	</Form>
</body>
</html>