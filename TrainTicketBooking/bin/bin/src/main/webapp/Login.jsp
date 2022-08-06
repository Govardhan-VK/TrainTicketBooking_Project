<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires", "0");
%>
<body>
<form action="login" method="post">
<label for="email">Email</label>
<input type ="email" id="email" name="email" placeholder="abc@gmail.com" required>
<label for="password">Password</label>
<input type="password" id="password" name="password" placeholder="******" required>
<input type="submit" value="Login">
</form>
</body>
<script type="text/javascript">
 if(window.history.replaceState){
	 window.history.replaceState(null, null, window.location.href);
 }
 </script>

</html>