<%@page import="com.gs.modal.View"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>Ticket Details</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap"
	rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="CSS/viewticket.css">
<script src="JS/viewticket.js"></script>
</head>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

if (session.getAttribute("user") == null) {
	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	rd.forward(request, response);
}

ArrayList<View> ticket = (ArrayList<View>) session.getAttribute("ticket");
%>
<body>
<a href="mainPage.jsp"><i class="fa-solid fa-house-chimney"></i></a>
<div id="tab">
	<h2>Ticket details</h2>
	<div class="container">
		<table class="rwd-table">
			<tbody>
				<tr>
					<th>Booking Id</th>
					<th>From</th>
					<th>To</th>
					<th>Date</th>
					<th>Class</th>
					<th>Quota</th>
					<th>Total Price</th>
					<th>Email Id</th>
				</tr>
				<%
				for (View v : ticket) {
				%>
				<tr>
					<td data-th="Booking Id"><%=v.getBookingId()%></td>
					<td data-th="From"><%=v.getDeparture()%></td>
					<td data-th="To"><%=v.getDestination()%></td>
					<td data-th="Date"><%=v.getDate()%></td>
					<td data-th="Class"><%=v.getClasses()%></td>
					<td data-th="Quota"><%=v.getBerth()%></td>
					<td data-th="Total Price"><%=v.getPrice()%></td>
					<td data-th="Email Id"><%=v.getEmail()%></td>
				</tr>
				<%
				break;
				}
				%>
			</tbody>
		</table>
	</div>
	<br>
	<h2>Passenger Details</h2>
	<br>
	<div class="container2">
		<table class="rwd-table">
			<tbody>
				<tr>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
				</tr>
				<%
				for (View v : ticket) {
				%>
				<tr>
					<td data-th="Name"><%=v.getPname()%></td>
					<td data-th="Age"><%=v.getAge()%></td>
					<td data-th="Gender"><%=v.getGender()%></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	</div>
	<input type="button" value="Print Ticket" 
            id="btn" onclick="createPDF()" />
</body>
</html>