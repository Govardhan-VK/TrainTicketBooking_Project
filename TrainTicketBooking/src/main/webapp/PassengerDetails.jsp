<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="passenger" method="post">
<div id="box">
<div id="header">
<label>Name</label>
<label>Age</label>
<label>Gender</label>
</div>
<div id="i1">
<input type="text" name="name[]">
<input type="number" name="age[]">
<select name="gender[]"><option value="male">Male</option><option value="female">Female</option></select>

</div>
</div>
<button id="btn" type="button">Add More</button>
<input type="submit">
</form>

<script>

var btn=document.querySelector("#btn");
btn.onclick=function(){
var div=document.createElement("div");
div.innerHTML=generateit();
document.getElementById("box").appendChild(div);
}

function generateit()
{
return "<input type='text' name='name[]'><input type='number' name='age[]'><select name='gender[]'><option value='male'>Male</option><option value='female'>Female</option></select><button type='button' onclick='removeit(this)'>Remove</button>";
}

function removeit(btn)
{
 document.getElementById("box").removeChild(btn.parentNode);
}

</script>

</body>
</html>