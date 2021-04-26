package com.venkteshwarProject.service;


import java.util.List;
import java.util.Optional;

import com.venkteshwarProject.dto.VenkteshDto;
import com.venkteshwarProject.model.UserOtps;
import com.venkteshwarProject.model.VenkteshFranchiseData;
import com.venkteshwarProject.model.VenkteshUserData;
import com.venkteshwarProject.model.VenkteshUserPersonalData;

public interface VenkteshService {
	
	
	// User Side Methods
	public void inserDataFromDtoToModel(VenkteshDto vDto);
	
	
	// Admin Side Methods
	public List<VenkteshUserData> getUserList();
	public VenkteshUserPersonalData viewDetails(String id);
	public VenkteshFranchiseData viewFranchiseDetails(String id);
	public void updateStatusDataFromDtoToModel(VenkteshDto vDto);


	public VenkteshUserData viewUserDetails(String id);


	public void delete(String id);
	
	
	//public void insertUserService(VenkteshUserData vData)throws Exception;
	//public void generatePrimaryKey()throws Exception;
	//public void insertUserPersonalInfoService(VenkteshUserPersonalData vpData)throws Exception;
	//public void insertUserFranchiseInfoService(VenkteshFranchiseData vfData)throws Exception;
//public char[] sendOtp(UserOtps userOtp);
//public void verifyOtp(String otp);
public Optional<UserOtps> sendOtp(String mobileNo);
public UserOtps otpForVerification(String mobileNumber);
//public List<Object> getRequestStatus();

}
