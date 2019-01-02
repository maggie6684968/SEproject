<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.PostDataBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<jsp:useBean id="postData" class="defult.PostDataBean" scope="session" />
<%	
	DBController dbc = new DBController();
	int postID;
	String str = request.getParameter("articleID");
	try{
   			postID= Integer.valueOf(str).intValue();
		}catch(NumberFormatException e){
   			postID = 0;
	}
	String output = request.getParameter("output");
	ArrayList<String> tmp = dbc.getCommentData(postID);
	ArrayList<PostDataBean> temp = dbc.getPostData();
%>
<html>
<head>
<title>board</title>
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
		<b><font size="6" face="微軟正黑體">文章內容</font></b>
				<tr>
					<td width="100%" align="middle" bgcolor="#eeeeee" >
					<b><font size='2' face='微軟正黑體'><%=output%></font></b>
					</td>
				</tr>
				<form method="post" action="main">
					<tr>
					
					<td width="60%" align="left" >
						<textarea name="Content" id=id style="width:600px;height:100px;"
							placeholder="發布留言"></textarea>
					</td>
					<td width="40%" valign="bottom">
							<span style="float: right;">
								<input type="submit" value="確認留言" name="action">
							</span>							
					</td>
					</tr>
				</form>
				<tr>
					<td valign="bottom">
							<form method="post" action="main">
								<input type="submit" value="回到看板" name="action">
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
					out.print(i + "</font></b></td>");
					
					out.print("<td width='80%' align='left'>");
					out.print("<b><font size='2' face='微軟正黑體'>");
					out.print(temp.get(i) + "</font></b></td>");				

				}
			%>
		</table>
</body>
</html>
