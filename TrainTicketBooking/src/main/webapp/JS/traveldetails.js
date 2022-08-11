/**
 *  Script for Travel Details Page
 */
 
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

function validation() {
  var from = document.getElementById("from").value;
  var to = document.getElementById("to").value;
  var price;
  if (from === to) {
    alert("FROM and TO locations cannot be same");
    return false;
  } else {
    if (
      (from === "tambaram" && to === "trivandrum") ||
      (to === "tambaram" && from === "trivandrum")
    ) {
      price = 500;
    } else if (
      (from === "tambaram" && to === "mumbai") ||
      (to === "tambaram" && from === "mumbai")
    ) {
      price = 1000;
    } else if (
      (from === "tambaram" && to === "tirupati") ||
      (to === "tambaram" && from === "tirupati")
    ) {
      price = 200;
    } else if (
      (from === "tambaram" && to === "chennai") ||
      (to === "tambaram" && from === "chennai")
    ) {
      price = 10;
    } else if (
      (from === "tambaram" && to === "delhi") ||
      (to === "tambaram" && from === "delhi")
    ) {
      price = 1100;
    } else if (
      (from === "mumbai" && to === "tirupati") ||
      (to === "mumbai" && from === "tirupati")
    ) {
      price = 500;
    } else if (
      (from === "mumbai" && to === "trivandrum") ||
      (to === "mumbai" && from === "trivandrum")
    ) {
      price = 700;
    } else if (
      (from === "mumbai" && to === "chennai") ||
      (to === "mumbai" && from === "chennai")
    ) {
      price = 900;
    } else if (
      (from === "mumbai" && to === "delhi") ||
      (to === "mumbai" && from === "delhi")
    ) {
      price = 500;
    } else if (
      (from === "tirupati" && to === "trivandrum") ||
      (to === "tirupati" && from === "trivandrum")
    ) {
      price = 300;
    } else if (
      (from === "tirupati" && to === "chennai") ||
      (to === "tirupati" && from === "chennai")
    ) {
      price = 200;
    } else if (
      (from === "tirupati" && to === "delhi") ||
      (to === "tirupati" && from === "delhi")
    ) {
      price = 1000;
    } else if (
      (from === "trivandrum" && to === "chennai") ||
      (to === "trivandrum" && from === "chennai")
    ) {
      price = 500;
    } else if (
      (from === "trivandrum" && to === "delhi") ||
      (to === "trivandrum" && from === "delhi")
    ) {
      price = 1000;
    } else if (
      (from === "chennai" && to === "delhi") ||
      (to === "chennai" && from === "delhi")
    ) {
      price = 1000;
    } else {
      alert("FROM and TO locations cannot be same");
      price = 0;
    }
    var total = 0;
    if (document.getElementById("class").value === "acfirstclass") {
      document.getElementById("price").value = price + 100;
      total = price + 100;
    } else if (document.getElementById("class").value === "firstclass") {
      document.getElementById("price").value = price + 75;
      total = price + 75;
    } else if (document.getElementById("class").value === "sleeper") {
      document.getElementById("price").value = price + 50;
      total = price + 50;
    } else {
      document.getElementById("price").value = price;
      total = price;
    }
    alert(
      "Single person charge for selected Route + Class charge: " +
        document.getElementById("price").value
    );
    return true;
  }
}
