<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ page import="controller.DBController"%>
<%@ page import="controller.Data"%>
<%@ page import="java.util.ArrayList"%>

<%	DBController dbc = new DBController();
	ArrayList<Data> temp = dbc.getData();
	int id = 0;
%>
						
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Profile</title>
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
				<b><font size="6" face="微軟正黑體">Profile</font></b>
				<tr>
					<td width: 100 align="left">				
						<b><font size="2" face="微軟正黑體">Your name:	</font></b>
						<%out.println(temp.get(id).name);%>
					</td>
					<td width: 220 align="left" rowspan=4>
						<b><font size="2" face="微軟正黑體">Your interest or hobby:	</font></b>
						<br>
						<textarea name="Content" style="width:250px;height:300px;" width="50%" height="50%">hobby</textarea>	
					</td>
					<td width: 220 align="left" rowspan=2>
						<img src="http://localhost:8080/DBTest/src/haibao.jpg"/>		
					</td>		
				</tr>
				<tr>
					<td width: 100 align="left">				
							<b><font size="2" face="微軟正黑體">Gender:	</font></b>
							MALE
					</td>		
				</tr>
				<tr>
					<td width: 220 align="left">				
						<b><font size="2" face="微軟正黑體">Birthday:	</font></b>
						<%out.println(temp.get(id).birthday);%>
					</td>		
					<td width: 220 align="left">
						<b><font size="2" face="微軟正黑體">update your new profile photo:	</font></b>
						<input type="file" name="photo">	
					</td>
				</tr>
				<tr>
					<td width: 100 align="left">				
						<b><font size="2" face="微軟正黑體">Department:		</font></b>
							<select name="department">
　							<option value="CSIE" selected>資訊工程系</option>
							<option value="ECE">電子工程系</option>
							<option value="EE">電機工程系</option>
							<option value="ECO">經濟系</option>
							</select>
					</td>		
				</tr>
				<tr>
					<td width: 220 align="left">				
						<b><font size="2" face="微軟正黑體">Grade:	</font></b>
						<select name="Grade">
　							<option value="1">freshman</option>
							<option value="2">sophomore</option>
							<option value="3" selected>junior</option>
							<option value="4">senior</option>
							</select>
					</td>		
					<td width: 400 align="center" colspan=2>
					<input type=submit value="UpdateProfile">
					</td>
					
				</tr>
				
						
			</table>
		</center>
	</Form>
</body>
</html>