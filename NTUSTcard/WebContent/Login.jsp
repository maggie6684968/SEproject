<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.DBController"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<title>Login</title>
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

.demo {
	padding-top: 50px;
	text-align: center
}
</style>

</head>
<body bgcolor="D9D9D9" style="height: 457px;">
	<Form method="post" action="main">
		<!--<input type="hidden" name="action" value="authenticate">-->
		<center>
			<br> <br>
			<table border=2 BGCOLOR=#E8E8E8 BORDERCOLOR=##000000
				style="width: 297px;">
				<tr>
					<td style="height: 346px; width: 333px">
						<p align="center">
							<b><font size="6" face="微軟正黑體">SIGN IN</font></b>
						</p>
						<div class="demo">
							<p align="center">
								<input type="text" name="username" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15"
									placeholder="user name" style="width: 175px;">
							</p>
							<p align="center">
								<input type="password" name="password" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="password"
									style="width: 175px;">
							</p>
							<p align="center">
								<!-- <input type=submit value="login"> -->
								<input type=submit name="action" value="login">
							</p>
							<p align="center">
								<input type=submit name="action" value="Sign Up">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<input type=submit name="action" value="Forget">
							</p>
						</div>
					</td>
				</tr>
			</table>
		</center>
	</Form>
</body>
</html>
