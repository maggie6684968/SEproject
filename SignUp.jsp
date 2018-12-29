<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="controller.DBController"%>
<%@ page import="controller.Data"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<title>SignUp</title>
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
				<center>
						<b><font size="6" face="微軟正黑體">SIGN UP</font></b>
				</center>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="微軟正黑體">Account name:</font></b>
						<input type="text" name="username" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15"
							placeholder="填入6-10位英文字母或數字" style="width: 175px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width: 400 align="left">
								
						<b><font size="2" face="微軟正黑體">Gender:</font></b>
						<input type="radio" id="male" name="gender" value="male" checked>
						<label for="male">Male</label>
						<input type="radio" id="female" name="gender" value="female">
						<label for="male">Female</label>						
					</td>		
				</tr>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="微軟正黑體">Password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15" placeholder="填入6-20位英文字母或數字"
							style="width: 175px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>			
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width: 400 align="left">			
						<b><font size="2" face="微軟正黑體">Birthday:</font></b>
						<input type="date" name="birthday">
					</td>		
				</tr>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="微軟正黑體">E-mail:</font></b>
								<input type="email" name="email"placeholder="XXX@gmail.com、XXX@yahoo.com.tw">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>				
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
								
					<td width: 400 align="left">			
								<b><font size="2" face="微軟正黑體">Department:</font></b>
								<select name="department">
　								<option value="CSIE">資訊工程系</option>
								<option value="ECE">電子工程系</option>
								<option value="EE">電機工程系</option>
								<option value="ECO">經濟系</option>
								</select>
					</td>		
				</tr>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="微軟正黑體">Real name:</font></b>
							<input type="text" name="RealName" BGCOLOR="#F5F5F5"
								HTML_CTL="Text" maxLength="10" size="15"
								placeholder="請填入你的真實姓名" style="width: 175px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>				
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width: 400 align="left">
						<b><font size="2" face="微軟正黑體">Grade:</font></b>
						<select name="YourLocation">
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
								<input type=submit value="Sign up">
					</td>		
				</tr>
						
			</table>
		</center>
	</Form>
</body>
</html>