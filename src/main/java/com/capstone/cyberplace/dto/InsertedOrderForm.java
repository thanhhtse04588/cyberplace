package com.capstone.cyberplace.dto;

public class InsertedOrderForm {

	private int ordererID;
	private int placeID;
	private String dateTime;
	private String name;
	private String email;
	private String phoneNumber;

	public InsertedOrderForm() {
		// TODO Auto-generated constructor stub
	}

	public InsertedOrderForm(int ordererID, int placeID, String dateTime, String name, String email, String phoneNumber) {
		super();
		this.ordererID = ordererID;
		this.placeID = placeID;
		this.dateTime = dateTime;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}

	public int getOrdererID() {
		return ordererID;
	}

	public void setOrdererID(int ordererID) {
		this.ordererID = ordererID;
	}

	public int getPlaceID() {
		return placeID;
	}

	public void setPlaceID(int placeID) {
		this.placeID = placeID;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
