<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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
</html>