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


if(session.getAttribute("user")==null)
{
	RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
	rd.forward(request, response);
}
%>

<body>
<a href="TravelDetails.jsp"><button>Book Ticket</button></a>
<a href="logout"><button>Logout</button></a>


</body>
<script type="text/javascript">
 if(window.history.replaceState){
	 window.history.replaceState(null, null, window.location.href);
 }
 </script>
</html>