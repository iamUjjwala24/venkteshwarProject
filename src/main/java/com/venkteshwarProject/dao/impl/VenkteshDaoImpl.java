package com.venkteshwarProject.dao.impl;
//import java.text.SimpleDateFormat;
//import java.util.Date;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.venkteshwarProject.dao.VenkteshDao;
import com.venkteshwarProject.dto.VenkteshDto;
import com.venkteshwarProject.model.UserOtps;
import com.venkteshwarProject.model.VenkteshFranchiseData;
import com.venkteshwarProject.model.VenkteshUserData;
import com.venkteshwarProject.model.VenkteshUserPersonalData;


@Repository("VenkteshDao")
public class VenkteshDaoImpl implements VenkteshDao {
	
	//private static final Logger LOG = LoggerFactory.getLogger(VenkteshDaoImpl.class);
	
	@Autowired
	private JdbcTemplate jdbcTemplate;  
		  
		public VenkteshDaoImpl(javax.sql.DataSource dataSoruce) {  
			jdbcTemplate = new JdbcTemplate(dataSoruce); 
		}  
		  

  public int insertOtpDetails(UserOtps userOtps) {
	  
	   try {
				String query = "INSERT INTO  vyankateshwaradb.user_otps(id,otp,mobile_number,created_at,verified_at, expired_at)"
						+ "VALUES(?,?,?,?,?,?)";
				return jdbcTemplate.update(query, new Object[] { userOtps.getOtpId(), userOtps.getOtp(), userOtps.getMobileNumber(),userOtps.getCreated(), userOtps.isVerified(), userOtps.getExpiry()});
				
			} catch (Exception e) {
				return 0;
			}
		}
		

//**************************************************************************************			
	public int insertUserDao(VenkteshUserData eData) throws Exception {
		  String query="insert into vyankateshwaradb.user_registration_data(id, full_name, email, mobile_number, status, comment) values('"+eData.getId()+"','"+eData.getFullName()+"',"
					 +"'"+eData.getEmail()+"','"+eData.getMobileNumber()+"'"
					 +",'"+eData.getStatus()+"','"+eData.getComment()+"')";    
							
					 return jdbcTemplate.update(query);				 	
	}
//**************************************************************************************	
	
//**********************************************************************************************************
	public int insertUserPersonalInfoDao(VenkteshUserPersonalData vpData) throws Exception {
		
		/*Date birth = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-mm-yyyy");
		String birthDateFormat = dateFormat.format(birth);*/
		
		
		String query="insert into vyankateshwaradb.user_personal_data(id, user_id, birth_date, alt_mobile_number, pan_no, education, per_address, curr_address, marrital_status) values('"+vpData.getId()+"','"+vpData.getUserId()+"',"
				 +"'"+ vpData.getBirthDate() +"','"+vpData.getAltMobileNumber()+"'"
				 +",'"+vpData.getPanNo()+"','"+vpData.getEducation()+"'"
				  +",'"+vpData.getPerAddress()+"','"+vpData.getCurrAddress()+"','"+vpData.getMarritalStatus()+"')";    
						
					 return jdbcTemplate.update(query);
		
	}


//******************************************************************************************************************

	public int insertUserFranchiseInfoDao(VenkteshFranchiseData vfData) throws Exception {
			
		String query="insert into vyankateshwaradb.user_franchise_data(id, user_id, have_agreement, family_type, city_area, social_club_associate,"
+" estimate_population, fund_setting, own_or_partnership, partners, known_with_industry, family_members, depends_family_members, income_source, fr_contact1,"
+"fr_contact2, fr_contact3, fr_contact4, required_city," 
+"working_company_name, served_year, designation," 
+"occupation, your_company_name, company_type, business_nature,"
+"business_duration, available_staff, turnover,"
+"manage_franchise_full_time, commitment, involve_family_member,brand_name) values('"+vfData.getId()+"','"+vfData.getUserId()+"',"
				 +"'"+vfData.getHaveAgreement()+"','"+vfData.getFamilyType()+"'"
				 +",'"+vfData.getCityArea()+"','"+vfData.getSocialClubAssociate()+"'"
				 +",'"+vfData.getEstimatePopulation()+"'"+",'"+vfData.getFundSetting()+"'"
				 +",'"+vfData.getOwnOrPartnership()+"','"+vfData.getPartners()+"'"
				 +",'"+vfData.getKnownWithIndustry()+"','"+vfData.getFamilyMembers()+"'"
	            				 +",'"+vfData.getDependsFamilyMembers()+"','"+vfData.getIncomeSource()+"'"
						 +",'"+vfData.getFrContact1()+"','"+vfData.getFrContact2()+"'"
						 +",'"+vfData.getFrContact3()+"','"+vfData.getFrContact4()+"'"
						 +",'"+vfData.getRequiredCity()+"','"+vfData.getWorkingCompanyName()+"'"
						 +",'"+vfData.getServedYear()+"','"+vfData.getDesignation()+"'"	
						 +",'"+vfData.getOccupation()+"','"+vfData.getYourCompanyName()+"'"
						 +",'"+vfData.getCompanyType()+"','"+vfData.getBusinessNature()+"'"
						 +",'"+vfData.getBusinessDuration()+"','"+vfData.getAvailableStaff()+"'"
						 +",'"+vfData.getTurnover()+"','"+vfData.getManageFranchiseFullTime()+"'"
						 +",'"+vfData.getCommitment()+"','"+vfData.getInvolveFamilyMember()+"'"
						 +",'"+vfData.getBrandName()+"')";    
						
					 return jdbcTemplate.update(query);
	}

//************************************************************************************************************
	public List<VenkteshUserData> getUserList() {
		List<VenkteshUserData> userList = jdbcTemplate.query("SELECT * FROM vyankateshwaradb.user_registration_data", new RowMapper<VenkteshUserData>(){

			public VenkteshUserData mapRow(ResultSet rs, int rowNum) {
				VenkteshUserData userData = new VenkteshUserData();   

				try {
					userData.setId(rs.getString("id"));
					userData.setFullName(rs.getString("full_name"));
					userData.setEmail(rs.getString("email"));
					userData.setMobileNumber(rs.getString("mobile_number"));
					userData.setStatus(rs.getString("status"));
					userData.setComment(rs.getString("comment"));
					
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				return userData;
			}
		
		});
		
		System.out.println("UserList : "+userList.get(0));
		return userList;

	}

//***************************************************************************************

	

//**************************************************************************************	
	/*
	 public List<VenkteshUserPersonalData> getUserById(String id) {

			List<VenkteshUserPersonalData> personalList = jdbcTemplate.query("SELECT * FROM user_personal_data where id=?",
					new Object[] { id }, new RowMapper<VenkteshUserPersonalData>() {

				       
						public VenkteshUserPersonalData mapRow(ResultSet rs, int rowNum) {
							VenkteshUserPersonalData personalData = new VenkteshUserPersonalData();

							 System.out.println("Inside getUserById");
							try {
								personalData.setUserId(rs.getString("user_id"));
								personalData.setBirthDate(rs.getString("birth_date"));
								personalData.setAltMobileNumber(rs.getString("alt_mobile_number"));
								personalData.setPanNo(rs.getString("pan_no"));
								personalData.setEducation(rs.getString("education"));
								personalData.setPerAddress(rs.getString("per_address"));
								personalData.setCurruntAddress(rs.getString("curr_address"));
								personalData.setMaritalStatus(rs.getString("marital_status"));
								
							} catch (SQLException e) {
								e.printStackTrace();
							}
							
							return personalData;
						}

					});
			System.out.println("Outside getUserById");

			return personalList;
		}


*/
//**************************************************************************************	
	public List<VenkteshUserData> getRegisteredUserList(){
		
		String sql = "select * from vyankateshwaradb.user_registration_data";

        @SuppressWarnings("unchecked")
		List<VenkteshUserData> userData = jdbcTemplate.query(sql, new BeanPropertyRowMapper(VenkteshUserData.class));

        return userData;
		
	}

//**************************************************************************************	
	 public VenkteshUserPersonalData getUserPersonalData(String id) {
			
		    String sql="select * from vyankateshwaradb.user_personal_data where user_id=?";  
		    return  jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<VenkteshUserPersonalData>(VenkteshUserPersonalData.class));         
}       
	
	
//**************************************************************************************		
	
	public VenkteshFranchiseData getUserFranchiseData(String id) {
		  
	    String sql="select * from vyankateshwaradb.user_franchise_data where user_id=?";  
	    return jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<VenkteshFranchiseData>(VenkteshFranchiseData.class));  
	}


//**************************************************************************************	

	public int updateStatus(VenkteshDto vData) {
    
		String query="update vyankateshwaradb.user_registration_data set status='"+vData.getStatus()+"', comment='"+vData.getComment()+"' where id='"+vData.getId()+"' ";  

				//System.out.println("Status Updated Suceesfuly");
				 return jdbcTemplate.update(query);
	}


//**************************************************************************************	

	public VenkteshUserData getUserRegistrationData(String id) {
		  String sql="select * from vyankateshwaradb.user_registration_data where id=?";  
		    return  jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<VenkteshUserData>(VenkteshUserData.class));         
	}


//**************************************************************************************	

	public int deleteUser(String id) {
		 String sql="delete from vyankateshwaradb.user_registration_data where id='"+id+"'";  
		    return jdbcTemplate.update(sql);  
		
	}


//**************************************************************************************	

	public int deleteUserPersonalData(String id) {
		 String sql="delete from vyankateshwaradb.user_personal_data where user_id='"+id+"'";  
		    return jdbcTemplate.update(sql);  
	}


//**************************************************************************************	

	public int deleteUserFranchiseData(String id) {
		 String sql="delete from vyankateshwaradb.user_franchise_data where user_id='"+id+"'";  
		    return jdbcTemplate.update(sql);  
	}


	public UserOtps getOtpToverify(String mobileNumber) {
                   
		String sql= "select otp from vyankateshwaradb.user_otps where mobile_number=? order by created_at desc limit 1";
		return  jdbcTemplate.queryForObject(sql, new Object[]{mobileNumber},new BeanPropertyRowMapper<UserOtps>(UserOtps.class));
	}

	
}		
		
//**************************************************************************************	
/*	public VenkteshUserPersonalData getUserPersonalData(String id) {
		 String sql="select * from user_personal_data where id=?";  
		 return jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper(VenkteshUserPersonalData.class));  
		}  
	

*/
	
	
		/*	List<VenkteshUserPersonalData>userList = jdbcTemplate.query("SELECT * FROM user_personal_data where id=? ",
					new Object[] {id}, new RowMapper<VenkteshUserPersonalData>() {

				       
						public VenkteshUserPersonalData mapRow(ResultSet rs, int rowNum) {
							VenkteshUserPersonalData vpData = new VenkteshUserPersonalData();

							 System.out.println("Inside getUserById");
							try {
								
								vpData.setUserId(rs.getString("user_id"));
								vpData.setBirthDate(rs.getString("birth_date"));
								vpData.setAltMobileNumber(rs.getString("alt_mobile_number"));
								vpData.setPanNo(rs.getString("pan_no"));
								vpData.setEducation(rs.getString("education"));
								vpData.setPerAddress(rs.getString("per_address"));
								vpData.setCurruntAddress(rs.getString("curr_address"));
								vpData.setMaritalStatus(rs.getString("marrital_status"));
								
							} catch (SQLException e) {
								e.printStackTrace();
							}
							//System.out.println(vpData.toString());
							return vpData;
						}

					});
		*/

		


		/*VenkteshFranchiseData franchiseList = jdbcTemplate.query("SELECT * FROM user_franchise_data where id=?",
				new Object[] { id }, new RowMapper<VenkteshFranchiseData>() {

			       
					public VenkteshFranchiseData mapRow(ResultSet rs, int rowNum) {
						VenkteshFranchiseData vfData = new VenkteshFranchiseData();

						 System.out.println("Inside getUserFranchiseDataById");
						 try {
							vfData.setUserId(rs.getString("user_id"));
							vfData.setHaveAgreement(rs.getString("have_agrrement"));
							vfData.setFamilyType(rs.getString("family_type"));
							vfData.setCityArea(rs.getString("city_area"));
							vfData.setSocialClubAssociate(rs.getString("social_club_associate"));
							vfData.setEstimatePopulation(rs.getString("estimate_population"));
							vfData.setFundSetting(rs.getString("fund_setting"));
							vfData.setOwnOrPartnership(rs.getString("own_or_partnership"));
							
							vfData.setPartners(rs.getString("partners"));
							vfData.setKnownWithIndustry(rs.getString("known_with_industry"));
							vfData.setStaffMembers(rs.getString("staff_members"));
							vfData.setFamilyMembers(rs.getString("family_members"));
							vfData.setEarningFamilyMembers(rs.getString("earning_family_members"));
							vfData.setDependsFamilyMembers(rs.getString("depends_family_members"));
							vfData.setOtherIncomeSource(rs.getString("income_source"));
							vfData.setOwnOrPartnership(rs.getString("fr_contact1"));
							
							//
							vfData.setFrContact1(rs.getString("fr_contact2"));
							vfData.setFrContact2(rs.getString("fr_contact3"));
							vfData.setFrContact3(rs.getString("fr_contact4"));
							vfData.setFrContact4(rs.getString("required_city"));
							vfData.setWorkingCompanyName(rs.getString("working_company_name"));
							vfData.setServedYear(rs.getString("served_year"));
							vfData.setCurrentDesignation(rs.getString("designation"));
							vfData.setOccupation(rs.getString("occupation"));
						 
                        
							vfData.setYourCompanyName(rs.getString("your_company_name"));
							vfData.setCompanyType(rs.getString("company_type"));
							
							
							vfData.setBusinessNature(rs.getString("business_nature"));
							vfData.setBusinessDuration(rs.getString("business_duration"));
							vfData.setAvailableStaff(rs.getString("available_staff"));
							vfData.setLastTurnover(rs.getString("turnover"));
							vfData.setManageFranchiseFulltime(rs.getString("manage_franchise_full_time"));
							vfData.setCommitment(rs.getString("commitment"));
							vfData.setInvolvedFamilyMemberInindustry(rs.getString("involve_family_member"));
							vfData.setBrandName(rs.getString("brand_name"));
						 
                    
                        
						} catch (SQLException e) {
							e.printStackTrace();
						}
						
						return vfData;
					}

				});
		System.out.println("Outside getUserFranchiseDataById");

		return franchiseList;*/
	
	
		/*
		 * List<VenkteshUserData>
		 * userList=jdbcTemplate.query("select * from user_registration_data", new
		 * RowMapper<VenkteshUserData>(){ public VenkteshUserData mapRow(ResultSet rs,
		 * int rowNum) {
		 * 
		 * VenkteshUserData userData=new VenkteshUserData();
		 * 
		 * try { userData.setId(rs.getString("id"));
		 * userData.setFullName(rs.getString("full_name"));
		 * userData.setEmail(rs.getString("email"));
		 * userData.setMobileNumber(rs.getString("mobile_number"));
		 * userData.setStatus(rs.getString("status"));
		 * userData.setComment(rs.getString("comment"));
		 * 
		 * }catch(Exception e) { System.out.println(e); }
		 * 
		 * System.out.println(userData); return userData; } });
		 * 
		 * System.out.println(userList); return userList;
		 */	

