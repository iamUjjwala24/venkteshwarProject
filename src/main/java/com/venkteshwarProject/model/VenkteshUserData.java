package com.venkteshwarProject.model;

public class VenkteshUserData {

	private String id;
	private String fullName;
	private String email;
	private String mobileNumber;
	private String status;
	private String comment;
	
	
	//private VenkteshUserPersonalData vpData;
	//private VenkteshFranchiseData vfData;
	
	@Override
	public String toString() {
	return "VenkteshUserData [id=" + id + ", fullName=" + fullName + ", email=" + email + ", mobileNumber="
	+ mobileNumber + ", status=" + status + ", comment=" + comment + "]";
	}
	
	
	
	public String getId() {
		return id;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
