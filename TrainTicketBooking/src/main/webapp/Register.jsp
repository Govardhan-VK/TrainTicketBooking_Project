<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires", "0");
%>
<body>
 <form action="register" method="post">
 <label for="email">E-Mail</label>
 <input type="email" name="email" id="email" required placeholder="eg:abc@gmail.com">
 <label for="password">Password</label>
 <input type="password" name="password" id="password" required placeholder="******">
 <input type="submit" value="Register">
 
 </form>
 <script type="text/javascript">
 if(window.history.replaceState){
	 window.history.replaceState(null, null, window.location.href);
 }
 </script>


</body>
</html>