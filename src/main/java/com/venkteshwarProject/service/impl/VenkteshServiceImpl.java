package com.venkteshwarProject.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.venkteshwarProject.dao.VenkteshDao;
import com.venkteshwarProject.dto.VenkteshDto;
//import com.venkteshwarProject.model.ReturnObject;
import com.venkteshwarProject.model.UserOtps;
import com.venkteshwarProject.model.VenkteshFranchiseData;
import com.venkteshwarProject.model.VenkteshUserData;
import com.venkteshwarProject.model.VenkteshUserPersonalData;
import com.venkteshwarProject.service.VenkteshService;
import com.venkteshwarProject.utils.DateUtils;
import com.venkteshwarProject.utils.StringUtils;
import com.venkteshwarProject.uuid.UUIDDemo;

//import java.util.UUID;
import java.util.*;
/*import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;*/

@Service("VenkteshService")
public class VenkteshServiceImpl implements VenkteshService {

	//private static final long OTP_EXPIRE_TIME = 1;
	static int len;
	static char[] otp = new char[len];

	public static final long OTP_EXPIRE_TIME = 500000;

	@Autowired
	private VenkteshDao vDao;

	VenkteshDto vDto;

	VenkteshUserData vData = new VenkteshUserData();
	//List<VenkteshUserPersonalData> pData=new ArrayList<VenkteshUserPersonalData>();
	//List<VenkteshFranchiseData> vfranData=new ArrayList<VenkteshFranchiseData>();
	VenkteshUserPersonalData vpData = new VenkteshUserPersonalData();
	VenkteshFranchiseData vfData = new VenkteshFranchiseData();

	/*
	
	public void insertUserService(VenkteshUserData vData) throws Exception {
		        vData=new VenkteshUserData();
		        VenkteshUserPersonalData vpData=new VenkteshUserPersonalData();
		        VenkteshFranchiseData vfData=new VenkteshFranchiseData();
		
				vDao.insertUserDao(vData);	
				vDao.insertUserPersonalInfoDao(vpData);
				vDao.insertUserFranchiseInfoDao(vfData);
			
	}
	
	*/
	public void inserDataFromDtoToModel(VenkteshDto vDto) {

		String id = UUIDDemo.getId();

		//	VenkteshUserData POJO

		vData.setId(id);
		vData.setFullName(vDto.getFullName());
		vData.setEmail(vDto.getEmail());
		vData.setMobileNumber(vDto.getMobileNumber());
		vData.setStatus("New");

		try {
			vDao.insertUserDao(vData);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//	VenkteshUserPersonalData POJO

		vpData.setUserId(id);
		vpData.setBirthDate(vDto.getBirthDate());
		vpData.setAltMobileNumber(vDto.getAltMobileNumber());
		vpData.setPanNo(vDto.getPanNo());
		vpData.setEducation(vDto.getEducation());
		vpData.setPerAddress(vDto.getPerAddress());
		vpData.setCurrAddress(vDto.getCurrAddress());
		vpData.setMarritalStatus(vDto.getMarritalStatus());

		try {
			vDao.insertUserPersonalInfoDao(vpData);
		} catch (Exception e) {

			e.printStackTrace();
		}

		//  VenkteshFranchiseData POJO

		vfData.setUserId(id);
		vfData.setHaveAgreement(vDto.getHaveAgreement());
		vfData.setFamilyType(vDto.getFamilyType());
		//vfData.setHaveFamilyBusiness(vDto.getHaveFamilyBusiness());
		//vfData.setBusinessType(vDto.getBusinessType());
		vfData.setCityArea(vDto.getCityArea());
		vfData.setSocialClubAssociate(vDto.getSocialClubAssociate());
		//vfData.setAssociateDuration(vDto.getAssociateDuration());
		vfData.setEstimatePopulation(vDto.getEstimatePopulation());
		//vfData.setPeopleKnown(vDto.getPeopleKnown());
		//vfData.setUserFame(vDto.getUserFame());
		//vfData.setPolyBackground(vDto.getPolyBackground());
		vfData.setFundSetting(vDto.getFundSetting());
		vfData.setOwnOrPartnership(vDto.getOwnOrPartnership());
		vfData.setPartners(vDto.getPartners());
		vfData.setKnownWithIndustry(vDto.getKnownWithIndustry());
		//vfData.setStaffMembers(vDto.getStaffMembers());
		vfData.setFamilyMembers(vDto.getFamilyMembers());
		//vfData.setHaveFriendsInBusiness(vDto.getHaveFriendsInBusiness());
		//vfData.setDreams(vDto.getDreams());
		//vfData.setEarningFamilyMembers(vDto.getEarningFamilyMembers());
		vfData.setDependsFamilyMembers(vDto.getDependsFamilyMembers());
		vfData.setIncomeSource(vDto.getIncomeSource());
		vfData.setFrContact1(vDto.getFrContact1());
		vfData.setFrContact2(vDto.getFrContact2());
		vfData.setFrContact3(vDto.getFrContact3());
		vfData.setFrContact4(vDto.getFrContact4());
		vfData.setRequiredCity(vDto.getRequiredCity());
		vfData.setWorkingCompanyName(vDto.getWorkingCompanyName());
		vfData.setServedYear(vDto.getServedYear());
		vfData.setDesignation(vDto.getDesignation());
		vfData.setOccupation(vDto.getOccupation());
		vfData.setYourCompanyName(vDto.getYourCompanyName());
		vfData.setCompanyType(vDto.getCompanyType());
		vfData.setBusinessNature(vDto.getBusinessNature());
		vfData.setBusinessDuration(vDto.getBusinessDuration());
		vfData.setAvailableStaff(vDto.getAvailableStaff());
		vfData.setTurnover(vDto.getTurnover());
		vfData.setManageFranchiseFullTime(vDto.getManageFranchiseFullTime());
		vfData.setCommitment(vDto.getCommitment());
		vfData.setInvolveFamilyMember(vDto.getInvolveFamilyMember());
		vfData.setBrandName(vDto.getBrandName());

		try {
			vDao.insertUserFranchiseInfoDao(vfData);
		} catch (Exception e) {

			e.printStackTrace();
		}

		System.out.println("All Values are set.......");
	}

	//********************************************************************************

	public VenkteshUserPersonalData viewDetails(String id) {
		String myid = id;
		// ReturnObject object;
		// vpData=new VenkteshUserPersonalData();
		VenkteshUserPersonalData viewList = new VenkteshUserPersonalData();

		viewList = vDao.getUserPersonalData(myid);
		return viewList;
		//viewList.add(vpData);
		//vfData=vDao.getUserFranchiseData(myid);
		//viewList.addAll(vpData,vfData);
		//vfData=vDao.getUserFranchiseData();
		// return new List<ReturnObject>(vpData,vfData);	

	}

	//*********************************************************************************
	public List<VenkteshUserData> getUserList() {
		return vDao.getRegisteredUserList();
	}

	//*********************************************************************************
	public VenkteshFranchiseData viewFranchiseDetails(String id) {
		String myid = id;
		VenkteshFranchiseData viewList = new VenkteshFranchiseData();

		viewList = vDao.getUserFranchiseData(myid);
		// viewList.add(vfData);		
		return viewList;
	}

	//*********************************************************************************
	public void updateStatusDataFromDtoToModel(VenkteshDto vDto) {

		/*vData.setId(vDto.getId());
		vData.setStatus(vDto.getStatus());
		vData.setComment(vDto.getComment());*/

		vDao.updateStatus(vDto);
	}

	//********************************************************************
	public VenkteshUserData viewUserDetails(String id) {
		String myid = id;
		VenkteshUserData userList = new VenkteshUserData();

		userList = vDao.getUserRegistrationData(myid);
		return userList;
	}

	//********************************************************************************	
	public void delete(String id) {
		vDao.deleteUserFranchiseData(id);
		vDao.deleteUserPersonalData(id);
		vDao.deleteUser(id);
	}

	//********************************************************************************	

	public void verifyOtp(String otp) {
		//vDao.verifyUserOtp(otp);
		
	}

	//*******************************************************************************
	public Optional<UserOtps> sendOtp(String mobileNo) {
		int status = 0;

		try {
			//String otpId = UUID.getId();
			long currentTime = DateUtils.now();

			UserOtps userOtps = new UserOtps();
			//userOtps.setOtpId(otpId);
			userOtps.setOtp(StringUtils.getOTP());

			System.out.println(StringUtils.getOTP());

			userOtps.setMobileNumber(mobileNo);

			userOtps.setCreated(currentTime);
			userOtps.setVerified(false);

			long expireTime = currentTime + OTP_EXPIRE_TIME;
			userOtps.setExpiry(expireTime);

			// userOtps.setCCUUDA(userId, currentTime, false, false);
			// userOtps.setCommonPropsToDefaults();

			status = vDao.insertOtpDetails(userOtps);

			if (status > 0) {
				return Optional.of(userOtps);
			}

			return Optional.empty();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception in insertOtpDetails" + e);
			return Optional.empty();
		}

	}

	public UserOtps otpForVerification(String mobileNumber) {
		
		return vDao.getOtpToverify(mobileNumber);
	}

	
}
//*********************************************************************************
/*
	public void generatePrimaryKey()throws Exception {
		String id=null;
		id=uuid.getId();
		vDto.setId(id);
		vDto.setUserId(id);
	}
	
/*	public void insertUserPersonalInfoService(VenkteshUserPersonalData vpData) throws Exception {
		
		 vpData=new VenkteshUserPersonalData();
		 VenkteshFranchiseData vfData=new VenkteshFranchiseData();
		
		vDao.insertUserPersonalInfoDao(vpData);
		vDao.insertUserFranchiseInfoDao(vfData);
	}

*/
/*public void insertUserFranchiseInfoService(VenkteshFranchiseData vfData) throws Exception {}*/
/*
public char[] sendOtp(UserOtps userOtp) {

		
		System.out.println("Generating OTP using random() : ");
		System.out.print("You OTP is : ");

		// Using numeric values
		String numbers = "0123456789";

		// Using random method
		Random rndm_method = new Random();

		char[] otp = new char[len];

		for (int i = 0; i < len; i++)
		{
			// Use of charAt() method : to get character value
			// Use of nextInt() as it is scanning the value as int
			otp[i] =
			numbers.charAt(rndm_method.nextInt(numbers.length()));
		}
		return otp;
	}
	 static
	{
		int length = 4;
		System.out.println(otp.length);
	}
	public void verifyOtp(UserOtps userOtp) {
		
	}	
  }
*/

/*
try {
	// Construct data
	String apiKey = "apikey=" + "RBoEnW0J/0k-Uy60ZzsQnrM2y55eLBXw4ZhpgpQBXO";
	
	Random random=new Random();
	OTP=random.nextInt(999999);
	
	String message = "&message=" + "This is your message";
	String sender = "&sender=" + "TXTLCL";
	String numbers = "&numbers=" + "918123456789";
	
	// Send data
	HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
	String data = apiKey + numbers + message + sender;
	conn.setDoOutput(true);
	conn.setRequestMethod("POST");
	conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
	conn.getOutputStream().write(data.getBytes("UTF-8"));
	final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	final StringBuffer stringBuffer = new StringBuffer();
	String line;
	while ((line = rd.readLine()) != null) {
		stringBuffer.append(line);
	}
	rd.close();
	
	vDao.insertOtpDetails(userOtp);
	return stringBuffer.toString();
} catch (Exception e) {
	System.out.println("Error SMS "+e);
	return "Error "+e;
}

}

}


/*  int status = 0;
String message = null;
String to=null;


try {
String otpId = UUIDDemo.getId();
//long currentTime = DateUtils.now();

UserOtps userOtps = new UserOtps();

//userOtps.setOtp(StringUtils.getOTP());
userOtps.setOtpId(otpId);
userOtps.setMobileNo(userOtp.getMobileNo());
//long expireTime = currentTime + OTP_EXPIRE_TIME;
//userOtps.setExpiry(expireTime);
userOtps.setVerified(false);


// userOtps.setCCUUDA(userId, currentTime, false, false);
// userOtps.setCommonPropsToDefaults();

status = vDao.insertOtpDetails(userOtps);
//StringUtils.sendTextMessage(message,to);


if (status > 0) {
	return Optional.of(userOtps);
}

return Optional.empty();

} catch (Exception e) {
e.printStackTrace();
//LOG.error("Exception in insertOtpDetails", e);
return Optional.empty();
}*/
