<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="CSS/passengerdetails.css">
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
<form action="passenger" method="post">

  <div id="box">
    <div class="grid-container">
      <label class="grid-item" id="lname">Name</label>
      <label class="grid-item" id="lage">Age</label>
      <label class="grid-item" id="lgender">Gender</label>
      <label class="grid-item" id="llable"></label>
    </div>
    <div class="grid-container">
      <input type="text" name="name[]" class="grid-item" required>
      <input type="number" name="age[]" class="grid-item" min="1" max="110" required>
      <select name="gender[]" class="grid-item">
        <option value="male">Male</option>
        <option value="female">Female</option>
        <option value='trans'>Transgender</option>
      </select>
      <label class="grid-item" id="llable"></label>
    </div>
  </div>

  <button id="btn" type="button"><i class="fa-solid fa-plus"></i></button>
  <input type="submit" value="Book Now">
</form>

<div class="wave-bottom">
  <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
    <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
  </svg>
</div>
<script type="text/javascript">
var btn = document.querySelector("#btn");
btn.onclick = function () {
  var div = document.createElement("div");
  div.setAttribute("class", "grid-container");
  div.innerHTML = generateit();
  document.getElementById("box").appendChild(div);
};

function generateit() {
  return "<input type='text' name='name[]' class='grid-item' required><input type='number' name='age[]' class='grid-item' required><select name='gender[]' class='grid-item'><option value='male'>Male</option><option value='female'>Female</option><option value='trans'>Transgender</option></select><button type='button' onclick='removeit(this)' class='grid-item' id='lbutton'><i class='fa-solid fa-xmark'></i></button>";
}

function removeit(btn) {
  document.getElementById("box").removeChild(btn.parentNode);
}


</script>
</body>
</html>