<%@ page language="java" contentType="text/html;charset=big5" %>
<html>
<head>
<title>登入失敗</title>
</head>
<body>
<p>密碼錯誤！</p>
<p>
<% out.println("<a href=\"" + request.getContextPath() + "/main\">重新輸入</a>"); %>
</p>
</body>
</html>
