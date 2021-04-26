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
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    			
                    <div class="row">
						<div class="col-md-12">
							<div class="col-md-3">
							
							</div>
							<div class="col-md-8">
										<div class="card">
                 

							         
							      <%--    <%  
							         public void mobileNoValidation(altMobileNumber)
							         {
							            String altMobileNumber="/^\d{10}$/";
							            
							            if(textMobileNo.value=="")
							            {
							             alert("Mobile No Should Not Be Empty");
							            }
							            else if(!textMobileNo.value.match(phno))
							            {
							             alert("Mobile no must be ten digit");
							            }
							            else
							            {
							             alert("valid Mobile No");
							            }
							         }
							      %>--> 
							         
							         
							                <%-- <input type="hidden" name="fullName" value="${fullName}"> 
							                <input type="hidden" name="mobileNumber" value="${status}">
							                --%>
							            
							                
							   <form:form  modelAttribute="personalFranchiseData">            
             
					            
					           <div class="form-group">
					              <label for=" haveAgrrement">1. In Case Of Leased Residence, Do You Have A Lenses  Agreement?</label>
					               <input type="text" class="form-control" name="haveAgreement" id="haveAgrrement"  value="${personalFranchiseData.haveAgreement}">
					           </div>
					            
					           <div class="form-group">
					               <label for="familyType">2. Do You Live In A Joint Family Or Nuclear?</label>
					               <input type="text" class="form-control" name="familyType" id="familyType" value="${familyType}">            
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
				                  <label for="cityArea">3. In Which Part Of The Proposed City Are You Living And Since How Long ?</label>
				                  <input type="text" class="form-control" name="cityArea" id="cityArea"value="${cityArea}">           
				              </div>
				              
				              <div class="form-group">
				                 <label for="clubAssociate ">4. Are You Associated With In Any Club Or Social Organization ? </label>
				                 <input type="text" class="form-control" name="socialClubAssociate" id="clubAssociate" value="${socialClubAssociate}">
				              </div>
				            
				         <!-- <div class="form-group">
				                 <label for="associateDuration"> 15. Since How Many Years Are You Associated in Your Club Or Social Organization ? </label>
				                 <input type="text" class="form-control" name="associateDuration" id="associateDuration">
				              </div>-->
				            
				              <div class="form-group">
				                 <label for="estimatedPopulation">5. What Is The Estimated Population In Your Area ? </label>
				                 <input type="text" class="form-control" name="estimatePopulation" id="estimatedPopulation" value="${estimatedPopulation}">
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
				               <label for="fundSetting">6. How Will You Arrange Funds For Setting Up Venkateshwar Amrutatulya Franchise ? </label>
				               <input type="text" class="form-control" name="fundSetting" id="fundSetting" value="${fundSetting}">
				            </div>
				            
				            <div class="form-group">
				               <label for="ownOrPartership">7. Are You Setting Up Venkateshwar Amrutatulya Franchise On Your Own Or In Partnership ? </label>
				               <input type="text" class="form-control" name="ownOrPartnership" id="ownOrPartership" value="${ownOrPartership}">
				            </div>
				             
				            <div class="form-group">
				               <label for="partners">8. If Partners How Many ? </label>
				               <input type="text" class="form-control" name="partners" id="partners" value="${partners}">
				            </div>
				            
				            <div class="form-group">
				               <label for="knownWithIndustry">9. Do You Know Anything About Hotel/restaurant Industry ? </label>
				               <input type="text" class="form-control" name="knownWithIndustry" id="knownWithIndustry" value="${knownWithIndustry}">
				            </div>
				            
				            <div class="form-group">
				               <label for="staffMembers"> 10. Can You Recruit 12 Staff For The Franchise ? </label>
				               <input type="text" class="form-control" name="staffMembers" id="staffMembers" value="${staffMembers}">
				            </div>
				             
				            <div class="form-group">
				               <label for="familyMembers">11. How Many Members Are There In Your Family ? </label>
				               <input type="text" class="form-control" name="familyMembers" id="familyMembers" value="${familyMembers}">
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
				            
				            <div class="form-group">
				               <label for="earningFamilyMembers">12. How Many Of Your Family Members Are Earning ?  </label>
				               <input type="text" class="form-control" name="earningFamilyMembers" id="earningFamilyMembers" value="${earningFamilyMembers}">
				             </div>
				            
				            <div class="form-group">
				               <label for="dependsFamilyMembers">13. How Many Family Members Are Financially Depends Upon You ? </label>
				               <input type="text" class="form-control" name="dependsFamilyMembers" id="dependsFamilyMembers" value="${dependsFamilyMembers}">
				             </div>
				     				          
				            <div class="form-group">
				               <label for="inncomeSource">14. If You Can't Get Profits From This Franchise For 3 Months, Do You Have Other Sources Of Income ?</label>
				               <input type="text" class="form-control" name="otherIncomeSource" id="inncomeSource" value="${inncomeSource}">
				            </div>
				            
				            
				            
		                   <!--  -->  
            
                           <div class="row">
                                <div class="col-md-6">
                                      <div class="form-group">
                    					 <label for="altMobileNumber"> 15. Please Provide Contact Details Of 4 Friends / Relatives In Your City </label>
              							 <input type="number" class="form-control" name="frContact1" id="altMobileNumber"value=" ${frContact1}">
              							 <input type="number" class="form-control" style="margin-top:3%" name="frContact2" id="altMobileNumber" value="${frContact2}">
                                      </div>
                                </div>
                                <div class="col-md-6" style="margin-top:5%">
            						<div class="form-group">
              							<input type="number" class="form-control" name="frContact3" id="altMobileNumber" value="${frContact3}">
              							<input type="number" class="form-control" style="margin-top:3%" name="frContact4" id="altMobileNumber" value="${frContact4}">
            						</div> 
           						</div>
                           </div>
            
            
			              <div class="form-group">
			                <label for="requiredCity">16. In Which City And Which Part Of The City Do You Want To Set Up Venkateshwara Amrutatulya Franchise ? </label>
			                <input type="text" class="form-control" name="requiredCity" id="requiredCity" value="${requiredCity}">
			              </div>
			             
             
			            
			            <!--  -->
			            
			            Occupation Service
			              
			            
			            <div class="form-group">
			               <label for="workingPlace">17. Company Name </label>
			               <input type="text" class="form-control" name="workingCompanyName" id="workingPlace" value="${workingCompanyName}">
			            </div>
			            
			            <div class="form-group">
			               <label for="servedYear">18. Number Of Year Served In Present Company</label>
			               <input type="text" class="form-control" name="servedYear" id="servedYear" value="${servedYear}">
			            </div>
			             
			            <div class="form-group">
			               <label for="designation">19. Your Current Designation</label>
			               <input type="text" class="form-control" name="currentDesignation" id="designation" value="${currentDesignation}">
			            </div>
			             
             
             
			            <!--  -->
			          
			            <div class="form-group">
			               <label for="occupation"> 20. What Is Your Occupation ? </label>
			               <input type="text" class="form-control" name="occupation" id="occupation" value="${occupation}">
			            </div>
			            
			            <div class="form-group">
			               <label for="companyName"> 21. Company Name ?</label>
			               <input type="text" class="form-control" name="yourCompanyName" id="companyName" value="${yourCompanyName}">
			             </div>
			            
			            <div class="form-group">
			               <label for="companyType"> 22. Company Type ?</label>
			               <input type="text" class="form-control" name="companyType" id="companyType" value="${companyType}">
			             </div>
			            
			             <div class="form-group">
			               <label for="businessNature"> 23. Nature Of Bussiness </label>
			               <input type="text" class="form-control" name="businessNature" id="businessNature" value="${businessNature}">
			            </div>
			             
			             <div class="form-group">
			               <label for="businessDuration">24. Number Of Year in Current Business?</label>
			               <input type="text" class="form-control" name="businessDuration" id="businessDuration" value="${businessDuration}">
			             </div>
			             
			             
            
			             <!--  -->
			              
			            <div class="form-group">
			               <label for="businessAailableStaff">25. Number Of Staff Employed</label>
			               <input type="text" class="form-control" name="availableStaff" id="businessAailableStaff" value="${availableStaff}">
			            </div>
			          
			            <div class="form-group">
			               <label for="lastTurnOver"> 26. Last Year's Turnover</label>
			               <input type="text" class="form-control" name="lastTurnover" id="lastTurnOver" value="${lastTurnover}">
			            </div>
			            
			            
           
             
			              <!--  -->
			                                                     
			            Franchise Related Questions
			             
			          
			            <div class="form-group">
			               <label for="manageFranchiseFullTime">27. Will You Manage The Franchise Store Full Time By Your Self ?</label>
			               <input type="text" class="form-control" name="manageFranchiseFulltime" id="manageFranchiseFullTime" value="${manageFranchiseFulltime}">
			            </div>
			            
			            <div class="form-group">
			               <label for="commitment">28. If No. What Others Commitments Do You Have Along With This Franchise ?</label>
			               <input type="text" class="form-control" name="commitment" id="commitment" value="${commitment}">
			             </div>
			            
			            <div class="form-group">
			               <label for="involveFamilyMemberInBusiness">29. Are You Or Any Of Your Family Member is Involved In The Restaurant/fast Food/cafe/ Tea Shop Business?</label>
			               <input type="text" class="form-control" name="involvedFamilyMemberInindustry" id="involveFamilyMemberInBusiness" value="${involvedFamilyMemberInindustry}">
			             </div>
			            
			            <div class="form-group">
			               <label for="brandName">30. If Yes, Mention Brand Name</label>
			               <input type="text" class="form-control" name="brandName" id="brandName" value="${brandName}">
			            </div>
			             
			         </form:form>    
			          
			             <!-- I agree with all terms and Conditions -->
			             
			           
           
                         <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab" ></div>
              </div>
        						
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
                <jsp:include page="common.jsp"></jsp:include>
            </body>

            </html>