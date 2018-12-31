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
				<b><font size="6" face="微軟正黑體">SIGN UP</font></b>
			<table style="border: 2px #7878FF solid; width: 900px"
					cellpadding="10" border='0' BGCOLOR=#FFFAF2>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="微軟正黑體">Account name:</font></b>
						<input type="text" name="username" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15"
							placeholder="填入6-10位英文字母或數字" style="width: 175px;">
					</td>
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width="40%" align="left">
								
						<b><font size="2" face="微軟正黑體">Gender:</font></b>
						<input type="radio" id="male" name="gender" value="male" checked>
						<label for="male">Male</label>
						<input type="radio" id="female" name="gender" value="female">
						<label for="male">Female</label>						
					</td>		
				</tr>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="微軟正黑體">Password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
							style="width: 175px;">
					</td>			
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width="40%" align="left">			
						<b><font size="2" face="微軟正黑體">Birthday:</font></b>
						<input type="date" name="birthday">
					</td>		
				</tr>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="微軟正黑體">E-mail:</font></b>
								<input type="email" name="email" placeholder="XXX@gmail.com、XXX@yahoo.com.tw">
					</td>				
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
								
					<td width="40%" align="left">			
								<b><font size="2" face="微軟正黑體">Institute:	</font></b>
								<select name="institute">
　							<option value="CSIE" selected>電資學院</option>
							<option value="ECO">財經學院</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td width="40%" align="right">				
						<b><font size="2" face="微軟正黑體">Real name:</font></b>
							<input type="text" name="realName" BGCOLOR="#F5F5F5"
								HTML_CTL="Text" maxLength="10" size="15"
								placeholder="請填入你的真實姓名" style="width: 175px;">
					</td>				
					<td width="20%">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width="40%" align="left">
						<b><font size="2" face="微軟正黑體">Department:</font></b>
							<select name="department">
　							<option value="CSIE">資訊工程系</option>
							<option value="ECE">電子工程系</option>
							<option value="EE">電機工程系</option>
							<option value="ECO">經濟系</option>
							</select>
						<b><font size="2" face="微軟正黑體">Grade:</font></b>
							<select name="Grade">
　							<option value="1">freshman</option>
							<option value="2">sophomore</option>
							<option value="3">junior</option>
							<option value="4">senior</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td align="center" colspan=3>				
							<b><font size="2" face="微軟正黑體">Select your profile photo:</font></b>
								<input type="file" name="photo">
					</td>		
				</tr>			
				<tr>
					<td  align="center" colspan=3>				
						<input type=submit name="action" value="signUp">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<b><font size="2" face="微軟正黑體">有帳號了?<a href="Login.jsp">直接登入</a></font></b>
					</td>		
				</tr>
			</table>			
			</table>
		
	</Form>
</body>
</html>