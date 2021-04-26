package com.venkteshwarProject.model;

//import java.sql.Date;

public class VenkteshUserPersonalData {
	
	private int id;
	private String userId;
	private String birthDate;
	private String altMobileNumber;
	private String panNo;
	private String education;
	private String perAddress;
	private String currAddress;
	private String marritalStatus;
	
	//private VenkteshFranchiseData vfData;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getAltMobileNumber() {
		return altMobileNumber;
	}
	public void setAltMobileNumber(String altMobileNumber) {
		this.altMobileNumber = altMobileNumber;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getPerAddress() {
		return perAddress;
	}
	public void setPerAddress(String perAddress) {
		this.perAddress = perAddress;
	}
	
	public String getCurrAddress() {
		return currAddress;
	}
	public void setCurrAddress(String currAddress) {
		this.currAddress = currAddress;
	}
	public String getMarritalStatus() {
		return marritalStatus;
	}
	public void setMarritalStatus(String marritalStatus) {
		this.marritalStatus = marritalStatus;
	}
	
	
	@Override
	public String toString() {
		return "[id=" + id + ", userId=" + userId + ", birthDate=" + birthDate
				+ ", altMobileNumber=" + altMobileNumber + ", panNo=" + panNo + ", education=" + education
				+ ", perAddress=" + perAddress + ", currAddress=" + currAddress + ", maritalStatus="
				+ marritalStatus +"]";
	}	
	
}
