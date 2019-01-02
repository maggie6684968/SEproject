<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.DBController"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<title>New Password</title>
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
							<b><font size="5" face="微軟正黑體">輸入新密碼及原本的信箱</font></b>
						</p>
						<div class="demo">
							<p align="center">
								<input type="text" name="new password" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15"
									placeholder="new password" style="width: 175px;">
							</p>
							<p align="center">
								<input type="text" name="email" BGCOLOR="#F5F5F5"
									HTML_CTL="Text" maxLength="10" size="15" placeholder="email"
									style="width: 175px;">
							</p>
							<p align="center">
								<!-- <input type=submit value="login"> -->
								<input type=submit name="action" value="Input">
							</p>
						</div>


					</td>
				</tr>
			</table>
		</center>
	</Form>
	
</body>
</html>