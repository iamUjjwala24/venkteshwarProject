<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta charset="utf-8">
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- CSS-->
                <link rel="stylesheet" type="text/css" href="resources/css/main.css">
                <!-- Font-icon css-->
                <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
                <title>Dashboard</title>
            </head>

            <body class="sidebar-mini fixed">
                <div class="wrapper">

                    <jsp:include page="header.jsp"></jsp:include>

                    <jsp:include page="sidebar.jsp"></jsp:include>

                    <div class="content-wrapper">
                        <div class="page-title">
                            <div>
                                <h1>
									<i class="fa fa-edit"></i>Dashboard
								</h1>
                            </div>
							
                            <div>
                                <ul class="breadcrumb">
                                    <li><a href="dashboard"><i class="fa fa-home fa-lg"></i></a></li>
                                    <li><a href="#">Dashboard Page</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <form:form  action="user-details" modelAttribute="personalList"> 
                    <form:form  action="user-details" modelAttribute="personalFranchiseData"> 			
                    <div class="row">
						<div class="col-md-12">
							<div class="col-md-3">
							
							</div>
							<div class="col-md-8">
										<div class="card">
									
										     <div class="form-group"><lable style="font-size:25px"><b>Franchise User Personal Information </b></lable></div>
									
										 <br>
										 <div class="table-responsive">
                                           <table border="2" style="padding:15px 15px"  align="center">
										<tr><th style="padding:10px 10px; width:12%"> Birth Date </th><th style="padding:10px 10px"> Alternate Mobile Number </th><th style="padding:10px 10px"> PAN NO. </th><th style="padding:10px 10px"> Education </th><th style="padding:10px 10px"> Permanent Address </th><th style="padding:10px 10px">Current Address</th><th style="padding:10px 10px">Marital Status</th>
										</tr>
										 
									 
			                            <tr>
			                             <td style="text-align:center ; width:10%" ><c:out value="${personalList.birthDate}"/></td>  
			                             <td style="text-align:center"><c:out value="${personalList.altMobileNumber}"/></td>  
			                             <td style="text-align:center"><c:out value="${personalList.panNo}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.education}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.perAddress}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.currAddress}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.marritalStatus}"/></td>
			                            <!-- <td style="text-align:center"><a href="franchise-profile?id=${personalList.id}">Update</a></td>-->
			                            </tr>
			                                                        
                                       </table></div><br><br><br>
									
									
								  <div class="form-group">
			                         <label for="requiredCity">1. In Which City And Which Part Of The City Do You Want To Set Up Venkateshwara Amrutatulya Franchise ? </label>
			                         <input type="text" class="form-control" name="requiredCity" id="requiredCity" value="${personalFranchiseData.requiredCity}" readonly>
			                      </div>	
									    
					           <div class="form-group">
					              <label for=" haveAgrrement">2. In Case Of Leased Residence, Do You Have A Lenses  Agreement?</label>
					               <input type="text" class="form-control" name="haveAgreement" id="haveAgrrement"  value="${personalFranchiseData.haveAgreement}" readonly>
					           </div>
					            
					           <div class="form-group">
					               <label for="familyType">3. Do You Live In A Joint Family Or Nuclear?</label>
					               <input type="text" class="form-control" name="familyType" id="familyType" value="${personalFranchiseData.familyType}" readonly>            
					           </div>
					            
					          <!--<div class="form-group">
					               <label for="haveFamilyBusiness">11. Is Any Of Your Immediate Family Member is a Businessman Or Are In Service ? </label>
					               <input type="text" class="form-control" name="haveFamilyBusiness" id="haveFamilyBusiness">
					           </div>
					             
                               <div class="form-group">
               						<label for="businessType">12. If Your Family Member Are In Business, Then Which Business They Are Doing ?</label>
             					    <input type="text" class="form-control" name="businessType" id="businessType">
                               </div>-->
             
             
				             
				              <!--  -->
				             
				             
				              <div class="form-group">
				                  <label for="cityArea">4. In Which Part Of The Proposed City Are You Living And Since How Long ?</label>
				                  <input type="text" class="form-control" name="cityArea" id="cityArea"value="${personalFranchiseData.cityArea}" readonly>           
				              </div>
				              
				              <div class="form-group">
				                 <label for="clubAssociate ">5. Are You Associated With In Any Club Or Social Organization ? </label>
				                 <input type="text" class="form-control" name="socialClubAssociate" id="clubAssociate" value="${personalFranchiseData.socialClubAssociate}" readonly>
				              </div>
				            
				         <!-- <div class="form-group">
				                 <label for="associateDuration"> 15. Since How Many Years Are You Associated in Your Club Or Social Organization ? </label>
				                 <input type="text" class="form-control" name="associateDuration" id="associateDuration">
				              </div>-->
				            
				              <div class="form-group">
				                 <label for="estimatedPopulation">6. What Is The Estimated Population In Your Area ? </label>
				                 <input type="text" class="form-control" name="estimatePopulation" id="estimatedPopulation" value="${personalFranchiseData.estimatePopulation}" readonly>
				              </div>
				            
				          <!--<div class="form-group">
				                 <label for="knownPoeople"> 17. How Many People Know You In Your Area ? </label>
				                 <input type="text" class="form-control" name="peopleKnown" id="knownPoeople">
				              </div>    
				             
				             <div class="form-group">
				                 <label for=" userFame"> 18.How Are Your Relations In Your Neighborhood ? </label>
				                 <input type="text" class="form-control" name="userFame" id="userFame">
				             </div>
				             
				             
				             
             
				              
				             
				            <div class="form-group">
				               <label for="polyBackground"> 19.	Do You Or Any Of Your Relatives Have Political Background ? </label>
				               <input type="text" class="form-control" name="polyBackground" id="polyBackground">
				            </div>-->
				          
				            <div class="form-group">
				               <label for="fundSetting">7. How Will You Arrange Funds For Setting Up Venkateshwar Amrutatulya Franchise ? </label>
				               <input type="text" class="form-control" name="fundSetting" id="fundSetting" value="${personalFranchiseData.fundSetting}" readonly>
				            </div>
				            
				            <div class="form-group">
				               <label for="ownOrPartership">8. Are You Setting Up Venkateshwar Amrutatulya Franchise On Your Own Or In Partnership ? </label>
				               <input type="text" class="form-control" name="ownOrPartnership" id="ownOrPartership" value="${personalFranchiseData.ownOrPartnership}" readonly>
				            </div>
				             
				            <div class="form-group">
				               <label for="partners">9. If Partners How Many ? </label>
				               <input type="text" class="form-control" name="partners" id="partners" value="${personalFranchiseData.partners}" readonly>
				            </div>
				            
				            
				            
				            <div class="form-group">
				               <label for="knownWithIndustry">10. Do You Know Anything About Hotel/restaurant Industry ? </label>
				               <input type="text" class="form-control" name="knownWithIndustry" id="knownWithIndustry" value="${personalFranchiseData.knownWithIndustry}" readonly>
				            </div>
				            
				            <%-- <div class="form-group">
				               <label for="staffMembers"> 10. Can You Recruit 12 Staff For The Franchise ? </label>
				               <input type="text" class="form-control" name="staffMembers" id="staffMembers" value="${personalFranchiseData.staffMembers}" readonly>
				            </div> --%>
				             
				            <div class="form-group">
				               <label for="familyMembers">11. How Many Members Are There In Your Family ? </label>
				               <input type="text" class="form-control" name="familyMembers" id="familyMembers" value="${personalFranchiseData.familyMembers}" readonly>
				            </div>
				             
             
				             
				              <!--  
				             
				            <div class="form-group">
				               <label for="haveFriendsInBusiness">26. Do You Have A Friends Who Are Running Any Sort Of Businesses ? </label>
				               <input type="text" class="form-control" name="haveFriendsInBusiness" id="haveFriendsInBusiness">
				            </div>
				          
				            <div class="form-group">
				               <label for="dreams">27. What Are Your Dreams? </label>
				               <input type="text" class="form-control" name="dreams" id="dreams">
				            </div>  -->
				            
				           <%--  <div class="form-group">
				               <label for="earningFamilyMembers">12. How Many Of Your Family Members Are Earning ?  </label>
				               <input type="text" class="form-control" name="earningFamilyMembers" id="earningFamilyMembers" value="${personalFranchiseData.earningFamilyMembers}" readonly>
				             </div> --%>
				            
				            <div class="form-group">
				               <label for="dependsFamilyMembers">12. How Many Family Members Are Financially Depends Upon You ? </label>
				               <input type="text" class="form-control" name="dependsFamilyMembers" id="dependsFamilyMembers" value="${personalFranchiseData.dependsFamilyMembers}" readonly>
				             </div>
				     				          
				            <div class="form-group">
				               <label for="inncomeSource">13. If You Can't Get Profits From This Franchise For 3 Months, Do You Have Other Sources Of Income ?</label>
				               <input type="text" class="form-control" name="incomeSource" id="inncomeSource" value="${personalFranchiseData.incomeSource}" readonly>
				            </div>
				            
				            
				            
		                   <!--  -->  
            
                           <div class="row">
                                <div class="col-md-6">
                                      <div class="form-group">
                    					 <label for="altMobileNumber"> 14. Please Provide Contact Details Of 4 Friends / Relatives In Your City </label>
              							 <input type="number" class="form-control" name="frContact1" id="altMobileNumber" value="${personalFranchiseData.frContact1}" readonly>
              							 <input type="number" class="form-control" style="margin-top:3%" name="frContact2" id="altMobileNumber" value="${personalFranchiseData.frContact2}" readonly>
                                      </div>
                                </div>
                                <div class="col-md-6" style="margin-top:5%">
            						<div class="form-group">
              							<input type="number" class="form-control" name="frContact3" id="altMobileNumber" value="${personalFranchiseData.frContact3}" readonly>
              							<input type="number" class="form-control" style="margin-top:3%" name="frContact4" id="altMobileNumber" value="${personalFranchiseData.frContact4}" readonly>
            						</div> 
           						</div>
                           </div>
                    
             
			            
			            <!--  -->
			            <div class="form-group"><lable style="font-size:25px; text-align:center"><b> Occupation Service </b></lable></div>
			              
			            
			            <div class="form-group">
			               <label for="workingPlace">15. Company Name </label>
			               <input type="text" class="form-control" name="workingCompanyName" id="workingPlace" value="${personalFranchiseData.workingCompanyName}" readonly>
			            </div>
			            
			            <div class="form-group">
			               <label for="servedYear">16. Number Of Year Served In Present Company</label>
			               <input type="text" class="form-control" name="servedYear" id="servedYear" value="${personalFranchiseData.servedYear}" readonly>
			            </div>
			             
			            <div class="form-group">
			               <label for="designation">17. Your Current Designation</label>
			               <input type="text" class="form-control" name="designation" id="designation" value="${personalFranchiseData.designation}" readonly>
			            </div>
			             
             
             
			            <!--  -->
			          
			            <div class="form-group">
			               <label for="occupation"> 18. What Is Your Occupation ? </label>
			               <input type="text" class="form-control" name="occupation" id="occupation" value="${personalFranchiseData.occupation}" readonly>
			            </div>
			            
			            <div class="form-group">
			               <label for="companyName"> 19. Company Name ?</label>
			               <input type="text" class="form-control" name="yourCompanyName" id="companyName" value="${personalFranchiseData.yourCompanyName}" readonly>
			             </div>
			            
			            <div class="form-group">
			               <label for="companyType"> 20. Company Type ?</label>
			               <input type="text" class="form-control" name="companyType" id="companyType" value="${personalFranchiseData.companyType}" readonly>
			             </div>
			            
			             <div class="form-group">
			               <label for="businessNature"> 21. Nature Of Bussiness </label>
			               <input type="text" class="form-control" name="businessNature" id="businessNature" value="${personalFranchiseData.businessNature}" readonly>
			            </div>
			             
			             
			             
            
			             <!--  -->
			              
			            <div class="form-group">
			               <label for="businessAailableStaff">22. Number Of Staff Employed</label>
			               <input type="text" class="form-control" name="availableStaff" id="businessAailableStaff" value="${personalFranchiseData.availableStaff}" readonly>
			            </div>
			          
			            <div class="form-group">
			               <label for="lastTurnOver"> 23. Last Year's Turnover</label>
			               <input type="text" class="form-control" name="turnover" id="lastTurnOver" value="${personalFranchiseData.turnover}" readonly>
			            </div>
			            
			            
           
             
			              <!--  -->
			                                                     
			           <div class="form-group"><lable style="font-size:25px; text-align:center"><b>Franchise Related Questions</b></lable></div>
			             
			          
			            <div class="form-group">
			               <label for="manageFranchiseFullTime">24. Will You Manage The Franchise Store Full Time By Your Self ?</label>
			               <input type="text" class="form-control" name="manageFranchiseFullTime" id="manageFranchiseFullTime" value="${personalFranchiseData.manageFranchiseFullTime}" readonly>
			            </div>
			            
			            <div class="form-group">
			               <label for="commitment">25. If No. What Others Commitments Do You Have Along With This Franchise ?</label>
			               <input type="text" class="form-control" name="commitment" id="commitment" value="${personalFranchiseData.commitment}" readonly>
			             </div>
			            
			            <div class="form-group">
			               <label for="involveFamilyMemberInBusiness">26. Are You Or Any Of Your Family Member is Involved In The Restaurant/fast Food/cafe/ Tea Shop Business?</label>
			               <input type="text" class="form-control" name="involveFamilyMember" id="involveFamilyMemberInBusiness" value="${personalFranchiseData.involveFamilyMember}" readonly>
			             </div>
			            
			            <div class="form-group">
			               <label for="brandName">27. If Yes, Mention Brand Name</label>
			               <input type="text" class="form-control" name="brandName" id="brandName" value="${personalFranchiseData.brandName}" readonly>
			            </div>
			             
			             
			          
			             <!-- I agree with all terms and Conditions -->
			             
			           
           
                         <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab" ></div>
              </div>
									
									
									
									
									
									
									
								
                                               <!-- <td>"${birthDate}"</td>
                                               <td>"${altMobileNumber}"</td>
                                               <td>"${panNo}"</td>
                                               <td>"${education}"</td>
                                               <td>"${perAddress}"</td>
                                               <td>"${currAddress}"</td>
                                               <td>"${maritalStatus}"</td>
                                               <td> <a href="franchise-profile?id=${id}">View Franchise Details</a></td>
                                               <td> <a href="delete-user?id=${id }"> Delete</a></td> -->
                                                </tr>                             
                                             <!--  <td>
                                                  <div style="text-align: center">
                                                        <a href="franchise-profile?id=${personalList.id }">
                                                          <button class="btn btn-primary icon-btn" type="button">
                                                            <i class="fa fa-fw fa-lg fa-check-circle"></i>View More
                                                           </button>
                                                         </a> 
                                                  </div>
                                                </td>
                                                <td>
                                                   <div style="text-align: center">
                                                       <a class="btn btn-default icon-btn" href="delete-user?id=${personalList.id }">
                                                        <button class="btn btn-primary icon-btn" type="button">
                                                       <i class="fa fa-fw fa-lg fa-times-circle"></i>Delete
                                                        </button>
                                                       </a>
                                                    </div>
                                                  </td>  
                                              </tr> --> 
                                        
										
                                       <!--      <label class="control-label">Count of male user : ${userGenderListCount.maleCount}</label><br>
                                           
                                           <label class="control-label">Count of female user : ${userGenderListCount.femaleCount}</label><br>
                                           
                                           <label class="control-label">Count of total user : ${userGenderListCount.totalCount}</label><br>
                                           
                                           <label class="control-label">Count of User : ${userGenderListCount.deletedCount}</label>
                                        </div>
                                        
                                        <div style="text-align: center">
                                                
                                             <a href="getlist">
                                                  <button class="btn btn-primary icon-btn" type="button">
                                                       <i class="fa fa-fw fa-lg fa-check-circle"></i>View All User
                                                  </button>
                                             </a> 
                                        </div>-->
							</div>						
						</div>
                    </div>
             </div>
            </form:form>
            </form:form> 
                <jsp:include page="common.jsp"></jsp:include>
            </body>

            </html>