<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>Book Ticket</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="CSS/traveldetails.css">
<script src="JS/traveldetails.js"></script>
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
<form action="travel" method="post" onsubmit="return validation();">
  <div class="grid-container">
    <div class="grid-item">
      <div class="select from">
        <select name="from" id="from">
          <option value="tambaram">Tambaram</option>
          <option value="mumbai">Mumbai Central</option>
          <option value="tirupati">Tirupati</option>
          <option value="trivandrum">Trivandrum</option>
          <option value="chennai">Chennai Egmore</option>
          <option value="delhi">NewDelhi</option>
        </select>
      </div>
    </div>
    <div class="grid-item inner"><i class="fa-solid fa-arrow-right-arrow-left"></i></div>
    <div class="grid-item">
      <div class="select to">
        <select name="to" id="to">
          <option value="trivandrum">Trivandrum</option>
          <option value="tambaram">Tambaram</option>
          <option value="mumbai">Mumbai Central</option>
          <option value="tirupati">Tirupati</option>
          <option value="chennai">Chennai Egmore</option>
          <option value="delhi">NewDelhi</option>
        </select>
      </div>
    </div>
  </div>
  <div class="grid-item2">
    <div class="select date">
      <input type="date" id="bookdate" name="bookdate" min="" required>
    </div>
  </div>
  <div class="grid-item2">
    <div class="select class">
      <select name="class" id="class">
        <option value="acfirstclass">AC First Class</option>
        <option value="sleeper">Sleeper</option>
        <option value="firstclass">First Class</option>
        <option value="secondsitting">Second Sitting</option>
      </select>
    </div>
  </div>
  <div class="grid-item2">
    <div class="select quota">
      <select name="quota" id="quota">
        <option value="general">General</option>
        <option value="ladies">Ladies</option>
        <option value="lowerberth">Lower Berth</option>
        <option value="disability">Disabled Person</option>
      </select>
    </div>
  </div>
  <input type="hidden" id="price" name="price">
  <input type="submit" id="submitform" value="Next">
</form>

<div class="wave-bottom">
  <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
    <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
  </svg>
</div>

<script type="text/javascript">
var currentDate = new Date();
var date = currentDate.getDate() + 1;
var month = currentDate.getMonth() + 1;
if (date < 10) {
  date = "0" + date;
}
if (month < 10) {
  month = "0" + month;
}
var year = currentDate.getUTCFullYear();
var minDate = year + "-" + month + "-" + date;
document.getElementById("bookdate").setAttribute("min", minDate);

</script>
</body>
</html>