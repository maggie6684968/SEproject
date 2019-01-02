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
<title>Buy AD</title>
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
		<b><font size="6" face="微軟正黑體">AD setting</font></b>
				<tr>
					<td width="30%" align="center">				
						<b><font size="2" face="微軟正黑體">台科幣:	</font></b>
						100
					</td>
					<td width="70%" align="center" valign="top" rowspan=3>
						<textarea name="Content"  style="width:500px;height:400px;"
							placeholder="你想要宣傳些甚麼呢?"></textarea>
						<br><br><br>
						<input type="file" name="photo">
						<br><br><br>
						<input type=submit value="post the AD" name="action">
					</td>		
				</tr>
				<tr>
					<td width="30%" align="center">				
						<b><font size="2" face="微軟正黑體">AD的權限:		</font></b>
						<select id="level" name="Level" onchange="VALUE(this.id)">
　								<option value="1" selected>class 1</option>
								<option value="2">class 2</option>
								<option value="3">class 3</option>
						</select>
					</td>		
				</tr>
				<tr>
					<td width="30%" align="center">				
						<b><font size="2" face="微軟正黑體" id="money">AD的價格:		10</font></b>
						<script type="text/javascript">
							function VALUE(x)
							{
								var myselect = document.getElementById("level");
								var index = myselect.selectedIndex;
								money=(myselect.options[index].value)*10;
								document.getElementById("money").innerHTML = "AD的價格:		"+money;
							}
						</script>
					</td>		
				</tr>
			</table>
</body>
</html>