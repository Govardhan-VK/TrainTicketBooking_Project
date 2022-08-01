package com.gs.modal;

public class View {
	private String bookingId;
	private String departure;
	private String destination;
	private String date;
	private int passengers;
	private String classes;
	private String berth;
	private int price;
	private String email;
	private String pname;
	private String age;
	private String gender;
	
	@Override
	public String toString() {
		return "View [bookingId=" + bookingId + ", departure=" + departure + ", destination=" + destination + ", date="
				+ date + ", passengers=" + passengers + ", classes=" + classes + ", berth=" + berth + ", price=" + price
				+ ", email=" + email + ", pname=" + pname + ", age=" + age + ", gender=" + gender + "]";
	}
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getPassengers() {
		return passengers;
	}
	public void setPassengers(int passengers) {
		this.passengers = passengers;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getBerth() {
		return berth;
	}
	public void setBerth(String berth) {
		this.berth = berth;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	

}
