<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>DashBoard</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="CSS/mainpage.css">
</head>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires", "0");


if(session.getAttribute("user")==null)
{
	RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
	rd.forward(request, response);
}
%>

<body>
<div class="grid-container">
  <div class="grid-item1" onclick="location.href='TravelDetails.jsp'"><i class="fa-solid fa-plus"></i></div>
  <div class="grid-item2" onclick="location.href='#'"><i class="fa-solid fa-clock-rotate-left"></i></div>
  <div class="grid-item3" onclick="location.href='#'"><i class="fa-solid fa-xmark"></i></div>
  <div class="grid-item4" onclick="location.href='logout'"><i class="fa-solid fa-right-from-bracket"></i></div>
  <div class="grid-item1 behind1">
    <div class="content">Book Ticket</div>
  </div>
  <div class="grid-item2 behind2">
    <div class="content">History</div>
  </div>
  <div class="grid-item3 behind3">
    <div class="content">Cancel</div>
  </div>
  <div class="grid-item4 behind4">
    <div class="content">Logout</div>
  </div>

</div>
<div class="logo"><i class="fa-solid fa-train-subway"></i></div>
<div class="wave-bottom">
  <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
    <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
  </svg>
</div>


</body>
</html>