<%@page import="com.gs.modal.View"%>
<%@page import="java.util.ArrayList"%>
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

if(session.getAttribute("user")==null)
{
	RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
	rd.forward(request, response);
}

ArrayList<View> ticket = (ArrayList<View>) session.getAttribute("ticket"); %>
<body>
<h2>Ticket details</h2>
<table border=1>
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
<% for(View v: ticket){ %>
<tr>
<td><%= v.getBookingId() %></td>
<td><%= v.getDeparture() %></td>
<td><%= v.getDestination() %></td>
<td><%= v.getDate() %></td>
<td><%= v.getClasses() %></td>
<td><%= v.getBerth() %></td>
<td><%= v.getPrice() %></td>
<td><%= v.getEmail() %></td>
</tr>
<% break; } %>
</table>
<h2>Passenger Details</h2><br>
<table border=1>
<tr>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
</tr>
<% for(View v: ticket){ %>
<tr>
<td><%= v.getPname() %></td>
<td><%= v.getAge() %></td>
<td><%= v.getGender() %></td>
</tr>
<% } %>
</table>
</body>
</html>