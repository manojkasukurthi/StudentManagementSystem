<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sms</title>
</head>
<body>
	<h2>Student Management System</h2>
	<h3>Login</h3>
	<%
	if(session.getAttribute("msg")!=null){
		%>
		<span style="color:red">
		<%= session.getAttribute("msg") %>
		</span>
		<%
		session.removeAttribute("msg");
	}
	%>
	<%
	if(request.getAttribute("msg")!=null){
		%>
		<span style="color:orange">
		<%= session.getAttribute("msg") %>
		</span>
		<%
		request.removeAttribute("msg");
	}
	%>
	<form action="login" method="post">
		Username : <input type="text" name="username"><br><br>
		Password : <input type="password" name="password"><br><br>
		<input type="submit" value="Login">
		<input type="reset" value="Cancel">
	</form>
</body>
</html>