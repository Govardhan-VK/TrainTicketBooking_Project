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
	<h3>Payment</h3>
	<form action="book" method="post">
		<label for="cname">Name on Card</label> <input type="text" id="cname"
			name="cardname" placeholder="John More Doe" required> <label
			for="ccnum">Credit/Debit card number</label> <input type="text" id="ccnum"
			name="cardnumber" placeholder="1111-2222-3333-4444" required>
			<label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352" required>
                <label for="expiry">Expiry Date</label>
                <input type="month" name="expiry" required>
                
                <input type ="submit" value="book">
	</form>
</body>
<script type="text/javascript">
 if(window.history.replaceState){
	 window.history.replaceState(null, null, window.location.href);
 }
 </script>

</html>