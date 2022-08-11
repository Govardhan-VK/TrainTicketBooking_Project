<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<title>Index</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="CSS/indexpage.css">
  
</head>
<%
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires", "0");
%>
<body>
<div class="title">
<h1>booking.io</h1>
<p>There is nothing like a train journey for reflection</p>
<div class="logo"><i class="fa-solid fa-train-subway"></i></div>
</div>
<div class="custom-btn btn-9">
<button id="open-btn1"><span>Login</span></button>
<button id="open-btn2"><span>Register</span></button></div>
<div class="wave-bottom">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M985.66,92.83C906.67,72,823.78,31,743.84,14.19c-82.26-17.34-168.06-16.33-250.45.39-57.84,11.73-114,31.07-172,41.86A600.21,600.21,0,0,1,0,27.35V120H1200V95.8C1132.19,118.92,1055.71,111.31,985.66,92.83Z" class="shape-fill"></path>
    </svg>
</div>

<!-- Login Container -->
<div id="modal-container1">
  <div class="gradient-border" id="box">

    <div class="login-box">
      <h2>Login</h2>
      <form id="log" action="login" method="post">
        <div class="user-box">
          <input id="lmail" type="email" name="email" required>
          <label>Email</label>
        </div>
        <div class="user-box">
          <input id="lpass" type="password" name="password" required>
          <label>Password</label>
        </div>
        <a href="#" onclick="lvalidate()">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          Login
        </a>
      </form>
    </div>

  </div>
</div>

<!-- Register container -->
<div id="modal-container2">
  <div class="gradient-border" id="box">

    <div class="login-box">
      <h2>Register</h2>
      <form id="reg" action="register" method="post">
        <div class="user-box">
          <input id="rmail" type="email" name="email" required>
          <label>Email</label>
        </div>
        <div class="user-box">
          <input id="rpass" type="password" name="password" required>
          <label>Password</label>
        </div>
        <a href="#" onclick="rvalidate()">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          Register
        </a>
      </form>
    </div>

  </div>
</div>
<script>

// LOGIN FORM
let openBtn1 = document.getElementById("open-btn1");
let modalContainer1 = document.getElementById("modal-container1");

openBtn1.addEventListener("click", function () {
 modalContainer1.style.display = "flex";
});

window.addEventListener("click", function (e) {
 if (e.target == modalContainer1) {
   modalContainer1.style.display = "none";
 }
});

function lvalidate() {
 var mail = document.getElementById("lmail").value;
 var pass = document.getElementById("lpass").value;
 if (mail != "" && pass != "") {
   document.getElementById("log").submit();
 } else {
   alert("Please fill the fields");
 }
}

//REGISTER FORM
let openBtn2 = document.getElementById("open-btn2");
let modalContainer2 = document.getElementById("modal-container2");

openBtn2.addEventListener("click", function () {
 modalContainer2.style.display = "flex";
});

window.addEventListener("click", function (e) {
 if (e.target == modalContainer2) {
   modalContainer2.style.display = "none";
 }
});

function rvalidate() {
 var mail = document.getElementById("rmail").value;
 var pass = document.getElementById("rpass").value;
 if (mail != "" && pass != "") {
   document.getElementById("reg").submit();
 } else {
   alert("Please fill the fields");
 }
}
</script>
</body>
</html>