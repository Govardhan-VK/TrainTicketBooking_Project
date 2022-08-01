package com.gs.modal;

public class Travel {
	private String from;
	private String to;
	private String bookDate;
	private String classes;
	private String quota;
	private int price;
	private String email; 
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getBookDate() {
		return bookDate;
	}
	public void setBookDate(String bookDate) {
		this.bookDate = bookDate;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getQuota() {
		return quota;
	}
	public void setQuota(String quota) {
		this.quota = quota;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Travel [from=" + from + ", to=" + to + ", bookDate=" + bookDate + ", classes=" + classes + ", quota="
				+ quota + ", price=" + price + ", email=" + email + "]";
	}
	
	
	
	

}
