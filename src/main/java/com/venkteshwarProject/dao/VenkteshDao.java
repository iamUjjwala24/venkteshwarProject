package com.venkteshwarProject.dao;



import java.util.List;

import com.venkteshwarProject.dto.VenkteshDto;
import com.venkteshwarProject.model.UserOtps;
import com.venkteshwarProject.model.VenkteshFranchiseData;
import com.venkteshwarProject.model.VenkteshUserData;
import com.venkteshwarProject.model.VenkteshUserPersonalData;

public interface VenkteshDao {
	
	
	// User Side Methods
	public int insertUserDao(VenkteshUserData vData)throws Exception;
	public int insertUserPersonalInfoDao(VenkteshUserPersonalData vpData)throws Exception;
	public int insertUserFranchiseInfoDao(VenkteshFranchiseData vfData)throws Exception;
	//public List<VenkteshUserPersonalData> getUserPersonalList();

	
	// Admin Side Methods
	public List<VenkteshUserData> getRegisteredUserList();
	public VenkteshUserPersonalData getUserPersonalData(String id);
	public VenkteshFranchiseData getUserFranchiseData(String id);
	//public List<VenkteshUserData> getUserList();
	public int updateStatus(VenkteshDto vData);
	public VenkteshUserData getUserRegistrationData(String id);
	public int deleteUser(String id);
	public int deleteUserPersonalData(String id);
	public int deleteUserFranchiseData(String id);
	
	public int insertOtpDetails(UserOtps userOtps);
	//public int verifyUserOtp(String otp);
	public UserOtps getOtpToverify(String mobileNumber);
	//public List<Object> getTotalRegisteredUserList();
}
