<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.PostDataBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<jsp:useBean id="postData" class="defult.PostDataBean" scope="session" />
<%	
	DBController dbc = new DBController();
	ArrayList<PostDataBean> temp = dbc.getPostData();
%>
<html>
<head>
<title>family</title>
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
		<b><font size="6" face="微軟正黑體">我的家族</font></b>
				<tr>
					<td width="40%" valign="bottom">
							<form method="post" action="main">
								<span style="float: right;">
								<input type="button" value="發布文章" name="post article">
								</span>
							</form>
					</td>
					<td width="60%" align="left" >
						<textarea name="Content"  style="width:400px;height:100px;"
							placeholder="發布動態"></textarea>
					</td>
				</tr>
				<tr>
					<td valign="bottom" colspan=2>
							<form method="post" action="main">
								<input type="button" value="軟骨小蛆" name="post article">
								<input type="button" value="pokemon" name="post AD">
								<input type="button" value="我想吃披薩" name="post AD">
								<input type="button" value="將資料庫的看板名稱填進來" name="post AD">
							</form>
					</td>
				</tr>
		</table>
		<table style="width: 750px;">
			<%				
				for (int i = 0; i < temp.size(); i++) {
					out.println("<tr>");
					out.print("<td width='20%' align='left'>");
					out.print("<b><font size='2' face='微軟正黑體'>");
					out.print(temp.get(i).author + "</font></b></td>");
					
					out.print("<td width='60%' align='left'>");
					out.print("<b><font size='2' face='微軟正黑體'>");
					out.print(temp.get(i).content + "</font></b></td>");
					
					out.print("<td width='20%' align='left'>");
					out.print("<b><font size='2' face='微軟正黑體'>");
					out.print(temp.get(i).priority + "</font></b><br>");
					out.print("<input type='button' value='heart");
					out.print(temp.get(i).heart+ "' name='Heart'>");
					out.print("<input type='button' value='comment' name='Comment'></td>");
					out.println("</tr>");
				}
			%>
		</table>
		
</body>
</html>