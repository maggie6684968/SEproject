<%@ page contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<%@ page import="defult.PostDataBean"%>
<%@ page import="defult.DBController"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />
<jsp:useBean id="postData" class="defult.PostDataBean" scope="session" />
<%	DBController dbc = new DBController();
	ArrayList<UserInfoBean> temp = dbc.getUserData();
	ArrayList<PostDataBean> tmp = dbc.getPostData();
	
	UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
 	String name = user.getName();
 	
 	int post = tmp.size();
 	int post_count=0;
%>

<html>
<head>
<title>Welcome</title>
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
	<table style="width: 1000px;">
								<tr>
									<td valign="middle" width="20%"style="border: 2px #7878FF solid;">
										<!-- <img src="https://ppt.cc/fLreBx@.png"
											border="1" alt="PPT.cc縮圖服務" title="PPT.cc縮圖服務"
											style="width: 73px; height: 71px;"> -->
										<font size="4" face="微軟正黑體"><b>
										<%
										 	out.println(user.getName());
										%>
										</b></font>
									</td>
									<%	
										if(post > post_count)
										{
											out.print("<td width='10%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).author + "</font></b></td>");
					
											out.print("<td width='50%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).content + "</font></b></td>");
					
											out.print("<td width='20%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).priority + "</font></b><br>");
											out.print("<input type='submit' value='heart");
											out.print(tmp.get(post_count).heart+ "' name='Heart'>");
											out.print("<input type='submit' value='comment' name='Comment'></td>");
											post_count++;
										}
									%>
								</tr>
								<tr>
									<td valign="middle" width="20%" rowspan=2 style="border: 2px #7878FF solid;">	
										<font size="4" face="微軟正黑體"><b>
										<%
											String birthday = user.getBirthday();
											String mail = user.getMail();
											String institute = user.getInstitute();
											String depart = user.getDepart();
											out.println("生日 : " + birthday + "<br>");
											out.println("信箱 : " + mail + "<br>");
											out.println("學院 : " + institute + "<br>");
											out.println("系級 : " + depart + "<br>");
										%>
										</b></font>
									</td>
									<% 	if(post_count < post){
										
											out.print("<td width='10%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).author + "</font></b></td>");
					
											out.print("<td width='50%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).content + "</font></b></td>");
					
											out.print("<td width='20%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).priority + "</font></b><br>");
											out.print("<input type='submit' value='heart");
											out.print(tmp.get(post_count).heart+ "' name='Heart'>");
											out.print("<input type='submit' value='comment' name='Comment'></td>");
											post_count++;
										}
									%>
								</tr>
								<tr>
										<%	if(post_count < post){
											
											out.print("<td width='10%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).author + "</font></b></td>");
					
											out.print("<td width='50%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).content + "</font></b></td>");
					
											out.print("<td width='20%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).priority + "</font></b><br>");
											out.print("<input type='submit' value='heart");
											out.print(tmp.get(post_count).heart+ "' name='Heart'>");
											out.print("<input type='submit' value='comment' name='Comment'></td>");
											post_count++;
											}
									%>
								</tr>
								<%	
										for(;post_count < post;post_count++){
											out.print("<tr>");
											out.print("<td valign='middle' width='20%'>");
											out.print("</td>");
											
											out.print("<td width='10%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).author + "</font></b></td>");
					
											out.print("<td width='50%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).content + "</font></b></td>");
					
											out.print("<td width='20%' align='left'>");
											out.print("<b><font size='2' face='微軟正黑體'>");
											out.print(tmp.get(post_count).priority + "</font></b><br>");
											out.print("<input type='submit' value='heart'");
											out.print(tmp.get(post_count).heart+ "' name='Heart'>");
											out.print("<input type='submit' value='comment' name='Comment'></td>");
											out.print("</tr>");
										}
									post_count = 0;
									
								
								%>
							</table>
</body>
</html>
