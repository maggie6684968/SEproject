<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="controller.DBController"%>
<%@ page import="controller.Data"%>
<%@ page import="java.util.ArrayList"%>
<%	DBController dbc = new DBController();
	ArrayList<Data> temp = dbc.getData();
	int id = 0;
	int money = 0;
%>

<html>
<head>
<title>Buy AD</title>
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
			<table border=2 BGCOLOR=#E8E8E8 BORDERCOLOR=##000000
				style="height: 540px; width: 960px">
						<b><font size="6" face="微軟正黑體">AD setting</font></b>
				<tr>
					<td width="30%" align="center">				
						<b><font size="2" face="微軟正黑體">台科幣:	</font></b>
						100
					</td>
					<td width="70%" align="center" valign="top" rowspan=3>
						<textarea name="Content"  style="width:700px;height:400px;"
							placeholder="你想要宣傳些甚麼呢?"></textarea>
						<br><br><br>
						<input type="file" name="photo">
						<br><br><br>
						<input type=submit value="post the AD">
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
			<br><input type=submit value="Home Page" >			
		</center>
	</Form>
</body>
</html>