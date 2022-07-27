<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="login" method="post">
<label for="email">Email</label>
<input type ="email" id="email" name="email" placeholder="abc@gmail.com" required>
<label for="password">Password</label>
<input type="password" id="password" name="password" placeholder="******" required>
<input type="submit" value="Login">
</form>
</body>
</html>