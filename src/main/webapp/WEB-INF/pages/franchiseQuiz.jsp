<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@page isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <META name="GENERATOR" content="IBM WebSphere Studio">
                <meta charset="utf-8">
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- CSS-->
                <link rel="stylesheet" type="text/css" href="resources/css/main.css">
                <!-- Font-icon css-->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
               
            </head>
            
            <form action="onFranchisePage"  method="post"> 

            <body class="sidebar-mini fixed">
                <div class="wrapper">

                    <div class="content-wrapper">
                        
                    </div>
                    			
                    <div class="row">
						<div class="col-md-12">
							<div class="col-md-3">
							
							</div>
							<div class="col-md-8">
										<div class="card">
         
							         
						
							                <input type="hidden" name="email" value="${email}">
							                <input type="hidden" name="mobileNumber" value="${mobileNumber}">
							                
							             
             
                                      <div class="row">  
                                         <div class="col-md-6">
                                               <div class="form-group"> 
            										 <label for="fullName"> 1. Full Name/(संपुर्ण नाव) </label>
             										  <%-- <input type="text" class="form-control" name="fullName"  id="fullName" value="${fullName}" disabled> --%>
               										  <input type="text" class="form-control" name="fullName" value="${fullName}" readonly>
             								   </div>
                  
                                               <div class="form-group">
             										 <div class="required"><label for="panNo"> 3. PAN No./(पॅन क्रमांक) <span style="color:red; font-size:15px">*</span></label></div>
            									     <input type="text" style="height:100%; width:100%" class="form-control"  maxlength="10" name="panNo" id="panNo" placeholder="PAN No"  required>
                                               </div>
             
                                               <div class="form-group">
              										<label for="altMobileNumber">5. Alternate Mobile No/(पर्यायी मोबाईल क्रमांक)</label>
              										<input type="number" class="form-control"  maxlength="10" name="altMobileNumber" id="altMobileNumber" pattern="[789][0-9]{9}"
                                                           placeholder="Altternate Mobile Number">
                                               </div>
                                         </div>
          
                                        <div class="col-md-6">
										    
            								  <div class="form-group">
                                                   <label for="education">2. Educational Qualification/(शैक्षणिक पात्रता) <span style="color:red; font-size:15px">*</span></label>
                                                      <select class="form-control" id="education" style="width:100% ; height:100%" name="education" required>
                                                         <option disabled selected value="">--Select--</option>
												         <option id="education" value="ssc">SSC</option>
												         <option id="education" value="hsc">HSC</option>
												         <option id="education" value="graduate">Graduate</option>
												         <option id="education" value="postGraduate">Post Graduate</option>
												         <option id="education" value="phd">PHD</option>
												         <option id="education" value="other">Other</option>
												      </select>
		                                      </div>
                       
                                              <div class="form-group">
          									      <!--  <label for="marritalStatus"></label>
           										   <input type="text" class="form-control" name="maritalStatus" id="marritalStatus" placeholder="Marital Status"  required>--> 
           										    <label  for="marritalStatus">4. Are You Married?/(तुम्ही विवाहित आहात का?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id ="marritalStatus" name="marritalStatus"  required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "Married">Married</option>
									                 <option value = "Not Married">Not Married</option>
									                  <option value = "Divorced">Divorced</option>
									                </select>
            								  </div>
            								  
            								   <div class="form-group">           										  
												   <label for="birthDate">6. Birth Date/(जन्मतारीख) <span style="color:red; font-size:15px">*</span></label><br>
            									   <input type="date" style="height:120%; width:100%" class="date-picker" name="birthDate" id="birthDate" placeholder="Birth Date" required>
                                             </div>
            
                                        </div>
								  </div>
          
        
             
					             <!--  -->
					           <br>
					           <div class="form-group">
					               <label for="perAddress"> 7. Permanent Address/(कायमचा पत्ता)<span style="color:red; font-size:15px">*</span></label>
					               <input type="text" class="form-control" name="perAddress" id="perAddress"  required>
					           </div>
					          
					           <div class="form-group">
					               <label for="currAddress">8. Current  Address/(सध्याच्या पत्ता) <span style="color:red; font-size:15px">*</span></label>
					               <input type="text" class="form-control" name="currAddress" id="currAddress"  required>
					           </div>
					            
					            
					          <div class="form-group">
			                       <label for="requiredCity">9. In Which City And Which Part Of The City Do You Want To Set Up Vyankateshwar Amruttulya Franchise?/(वेंकटेश्वर अमृततुल्य फ्रॅंचायझी तुम्हाला कोणत्या शहरात आणि शहराच्या कोणत्या भागात बसवायचे आहे?) <span style="color:red; font-size:15px">*</span></label>
			                       <input type="text" class="form-control" name="requiredCity" id="requiredCity" required>
			                  </div>
					            
					            
					           <div class="form-group">
					            <!--   <label for=" haveAgrrement">9. In Case Of Leased Residence, Do You Have A Lenses  Agreement?</label>
					               <input type="text" class="form-control" name="haveAgreement" id="haveAgrrement"  required>-->
					                <label  for="haveAgreement">10. In Case Of Leased Residence, Do You Have A Lenses  Agreement?/(भाडेतत्त्वावर राहत असाल तर आपल्याकडे करारनामा आहे का?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "haveAgreement" name="haveAgreement"  required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									                 <option value = "NA">Not Applicable</option>
									                </select>
					           </div>
					            
					           <div class="form-group">
					               <!--  <label for="familyType">10. Do You Live In A Joint Family Or Nuclear?</label>
					               <input type="text" class="form-control" name="familyType" id="familyType" required> -->
					                 <label  for="familyType">11. Do You Live In A Joint Family Or Nuclear?/(आपण संयुक्त कुटुंब किंवा विभक्त कुटुंबामध्ये राहताय का?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "familyType" name="familyType" required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "Join Family">Join Family</option>
									                 <option value = "Nuclear Family">Nuclear Family</option>
									                </select>           
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
				                  <label for="cityArea">12. In Which Part Of The Proposed City Are You Living And Since How Long ?/(प्रस्तावित शहराच्या कोणत्या भागात तुम्ही राहता आणि कधी पासून राहत आहात?)<span style="color:red; font-size:15px"> *</span></label>
				                  <input type="text" class="form-control" name="cityArea" id="cityArea" required>           
				              </div>
				              
				              <div class="form-group">
				                <!-- <label for="clubAssociate ">12. Are You Associated With In Any Club Or Social Organization ? </label>
				                 <input type="text" class="form-control" name="socialClubAssociate" id="clubAssociate" required>  -->
				                 
				                   <label  for="socialClubAssociate">13. Are You Associated With In Any Club Or Social Organization ?/(आपण कोणत्याही क्लब किंवा सामाजिक संघटनेशी संबंधित आहात काय?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "socialClubAssociate" name="socialClubAssociate"  required>
									                   <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									                </select>    
				              </div>
				            
				         <!-- <div class="form-group">
				                 <label for="associateDuration"> 15. Since How Many Years Are You Associated in Your Club Or Social Organization ? </label>
				                 <input type="text" class="form-control" name="associateDuration" id="associateDuration">
				              </div>-->
				            
				              <div class="form-group">
				                <!--   <label for="estimatedPopulation">13. What Is The Estimated Population In Your Area ? </label>
				                 <input type="text" class="form-control" name="estimatePopulation" id="estimatedPopulation" required>-->
				                 
				               
				                   <label  for="estimatePopulation">14. What Is The Estimated Population In Your Area ?/(आपल्या भागातील लोकसंख्या अंदाजे किती आहे?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "estimatePopulation" name="estimatePopulation"  required>
									                     <option disabled selected value="">--Select--</option>
									                 <option value = "Less than 1000">Less than 1000</option>
									                 <option value = "Less than 5000">Less than 5000</option>
									                  <option value = "Greater than 5000">Greater than 5000</option>
									                </select>     
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
				               <!-- <label for="fundSetting">14. How Will You Arrange Funds For Setting Up Venkateshwar Amrutatulya Franchise ? </label>
				               <input type="text" class="form-control" name="fundSetting" id="fundSetting" required> -->
				               
				               
				                   <label  for="fundSetting">15. How Will You Arrange Funds For Setting Up Vyankateshwar Amruttulya Franchise ?/(अमृततुल्य फ्रॅंचायझी घेण्यासाठी आपण निधीची व्यवस्था कशी कराल?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "fundSetting" name="fundSetting"  required>
									                    <option disabled selected value="">--Select--</option>
									                 <option value = "By Own">By Own</option>
									                 <option value = "From Friends">From Friends</option>
									                 <option value = "Business Loan">Business Loan</option>
									                  <option value = "Other">Other</option>
									                </select>   
				            </div>
				            
				            <div class="form-group">
				               <!-- <label for="ownOrPartership">15. Are You Setting Up Venkateshwar Amrutatulya Franchise On Your Own Or In Partnership ? </label>
				               <input type="text" class="form-control" name="ownOrPartnership" id="ownOrPartership" required> -->
				               
				               
				                   <label  for="ownOrPartnership">16. Are You Setting Up Vyankateshwar Amruttulya Franchise On Your Own Or In Partnership ?/(आपण वेंकटेश्वर अमृततुल्य फ्रॅंचायझी स्वत: करत आहात कि भागीदारीवर करत आहात?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "ownOrPartnership" name="ownOrPartnership"  required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "By Own">By Own</option>
									                 <option value = "In Partnership">In Partnership</option>
									                </select>   
				            </div>
				             
				            <div class="form-group">
				               <label for="partners">17. If Partners How Many ? (If are setting up by your own, specify Partner= 0)/(असल्यास किती? (आपण स्वतः करत असल्यास, भागीदार = 0 निर्दिष्ट करा))<span style="color:red; font-size:15px">*</span></label>
				               <input type="number" class="form-control" name="partners" id="partners" required>
				            </div>
				            
				            <div class="form-group">
				              <!--  <label for="knownWithIndustry">17. Do You Know Anything About Hotel/restaurant Industry ? </label>
				               <input type="text" class="form-control" name="knownWithIndustry" id="knownWithIndustry" required> -->
				               
				               
				                   <label  for="knownWithIndustry">18. Do You Know Anything About Hotel/restaurant Industry?/(हॉटेल/रेस्टॉरंट उद्योगाबद्दल आपणास काही माहित आहे काय?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "knownWithIndustry" name="knownWithIndustry"  required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									                </select>   
				            </div>
				            
				            <div class="form-group">
				              <!-- <label for="staffMembers"> 18. Can You Recruit 12 Staff For The Franchise ? </label>
				               <input type="text" class="form-control" name="staffMembers" id="staffMembers" required>  
				                    
				                   <label  for="staffMembers">18. Can You Recruit 12 Staff For The Franchise ?/(आपण फ्रॅंचायझीसाठी 12 कर्मचारी भरती करू शकता?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "staffMembers" name="staffMembers"  required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									                </select>   
				            </div>-->
				             
				            <div class="form-group">
				               <label for="familyMembers">19. How Many Members Are There In Your Family ?/(तुमच्या कुटुंबात किती सदस्य आहेत?) <span style="color:red; font-size:15px">*</span></label>
				               <input type="number" class="form-control" name="familyMembers" id="familyMembers" required>
				            </div>
				             
             
				             
				              <!--  
				             
				            <div class="form-group">
				               <label for="haveFriendsInBusiness">26. Do You Have A Friends Who Are Running Any Sort Of Businesses ? </label>
				               <input type="text" class="form-control" name="haveFriendsInBusiness" id="haveFriendsInBusiness">
				            </div>
				          
				            <div class="form-group">
				               <label for="dreams">27. What Are Your Dreams? </label>
				               <input type="text" class="form-control" name="dreams" id="dreams">
				            </div>  
				            
				            <div class="form-group">
				               <label for="earningFamilyMembers">20. How Many Of Your Family Members Are Earning ?/(आपल्या कुटुंबातील किती सदस्य कमावते आहेत?)  <span style="color:red; font-size:15px">*</span></label>
				               <input type="number" class="form-control" name="earningFamilyMembers" id="earningFamilyMembers" required>
				             </div>-->
				            
				            <div class="form-group">
				               <label for="dependsFamilyMembers">20. How Many Family Members Are Financially Depends Upon You ?/(कुटुंबातील किती सदस्य आपल्यावर अवलंबून असतात?) <span style="color:red; font-size:15px">*</span></label>
				               <input type="number" class="form-control" name="dependsFamilyMembers" id="dependsFamilyMembers" required>
				             </div>
				     				          
				            <div class="form-group">
				               <!-- <label for="inncomeSource">22. If You Can't Get Profits From This Franchise For 3 Months, Do You Have Other Sources Of Income ?</label>
				               <input type="text" class="form-control" name="otherIncomeSource" id="inncomeSource"> -->
				               
				               
				                   <label  for="incomeSource">21. If You Can't Get Profits From This Franchise For 3 Months, Do You Have Other Sources Of Income ?/(जर आपल्याला 3 महिन्यांपर्यंत या फ्रेंचाइजीमधून नफा मिळू शकत नसेल तर आपल्याकडे उत्पन्नाचे इतर स्त्रोत आहेत काय?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "incomeSource" name="incomeSource"  required>
									                    <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									                </select>   
				            </div>
				            
				            
				            
		                   <!--  -->  
            
                           <div class="row">
                                <div class="col-md-6">
                                      <div class="form-group">
                    					 <label for="altMobileNumber"> 22. Please Provide Contact Details Of 4 Friends/Relatives In Your City./(कृपया आपल्या शहरातील 4 मित्रांचे/नातेवाईकांचे संपर्क तपशील द्या.) <span style="color:red; font-size:15px">*</span></label>
              							 <input type="number" class="form-control"maxlength="10" name="frContact1" id="altMobileNumber" placeholder=" Contact 1/(क्रमांक १)" pattern="[789][0-9]{9}" required>
              							 <input type="number" class="form-control" maxlength="10" style="margin-top:3%" name="frContact2" id="altMobileNumber" placeholder=" Contact 2/(क्रमांक २)" pattern="[789][0-9]{9}" required>
                                      </div>
                                </div>
                                <div class="col-md-6" style="margin-top:7.7%">
            						<div class="form-group">
              							<input type="number" class="form-control" maxlength="10" name="frContact3" id="altMobileNumber" placeholder=" Contact 3/(क्रमांक ३)" pattern="[789][0-9]{9}" required>
              							<input type="number" class="form-control" style="margin-top:3%" maxlength="10" name="frContact4" id="altMobileNumber" placeholder=" Contact 4/(क्रमांक ४)" pattern="[789][0-9]{9}" required>
            						</div> 
           						</div>
                           </div>
            
          
             
			            
			            <!--  -->
			            
			           <br><br>
			          <div class="form-group"><center><lable style="font-size:25px"><b>Occupation Service/(व्यवसाय सेवा)</b></lable></center></div>     
			            
			            <div class="form-group"><label for="workingPlace"><b><span style="color:red; font-size:15px">Note:</span> If you are not eligible to fill out any field specify (NA)./(टीप: आपण कोणतेही निर्दिष्ट फील्ड भरण्यासाठी पात्र नसल्यास (NA) लिहा.)</b></label></div>
			            <div class="form-group">
			               <label for="workingPlace">23. Company Name/(कंपनीचे नाव) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="workingCompanyName" id="workingPlace" required>
			            </div>
			            
			            <div class="form-group">
			               <label for="servedYear">24. Number Of Year Served In Present Company/(सध्याच्या कंपनीत सेवा दिलेल्या वर्षाची संख्या) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="servedYear" id="servedYear" required>
			            </div>
			             
			            <div class="form-group">
			               <label for="designation">25. Your Current Designation/(आपले सद्य पदनाम) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="designation" id="designation" required>
			            </div>
			             
             
             
			            <!--  -->
			          
			            <div class="form-group">
			               <label for="occupation"> 26. What Is Your Occupation?/(आपला व्यवसाय काय आहे?) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="occupation" id="occupation" required>
			            </div>
			            
			            <div class="form-group">
			               <label for="companyName"> 27. Company Name ?/(व्यावसायिक असल्यास कंपनीचे नाव?) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="yourCompanyName" id="companyName" required>
			             </div>
			            
			            <div class="form-group">
			               <label for="companyType"> 28. Company Type ?/(कंपनीचा प्रकार?) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="companyType" id="companyType" required>
			             </div>
			            
			             <div class="form-group">
			               <label for="businessNature">29. Nature Of Business/(व्यवसायाचे स्वरूप) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="businessNature" id="businessNature" required>
			            </div>
			             
			             <div class="form-group">
			               <label for="businessDuration">30. Number Of Year in Current Business?(सध्याच्या व्यवसायातील वर्षाची संख्या?) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="businessDuration" id="businessDuration" required>
			             </div>
			             
			             
            
			             <!--  -->
			              
			            <div class="form-group">
			               <label for="businessAailableStaff">31. Number Of Staff Employed/(कार्यरत नोकरदारांची संख्या) <span style="color:red; font-size:15px">*</span></label>
			               <input type="number" class="form-control" name="availableStaff" id="businessAailableStaff" required>
			            </div>
			          
			            <div class="form-group">
			               <label for=turnover> 32. Last Year's Turnover/(मागील वर्षाची उलाढाल) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="turnover" id="turnover" required>
			            </div>
			            
			            
           
             
			              <!--  -->
			                                                     
			          <br><br>  
			         <div class="form-group"><center><lable style="font-size:25px"><b>Franchise Related Questions/(मताधिकारा संबंधित प्रश्न)</b></lable></center></div>   
			          
			            <div class="form-group">
			              <!-- <label for="manageFranchiseFullTime">35. Will You Manage The Franchise Store Full Time By Your Self ?</label>
			               <input type="text" class="form-control" name="manageFranchiseFulltime" id="manageFranchiseFullTime"> --> 
			               
			               
			               
				                   <label  for="manageFranchiseFullTime">33. Will You Manage The Franchise Store Full Time By Your Self ?/(आपण स्वत: हून फ्रँचाइजी स्टोअर पूर्ण वेळ व्यवस्थापित कराल?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "manageFranchiseFullTime" name="manageFranchiseFullTime"  required>
									                   <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									                </select>   
			            </div>
			            
			            <div class="form-group">
			               <label for="commitment">34. If No. What Others Commitments Do You Have Along With This Franchise ?/(जर नाही तर आपल्या या मताधिकारा बरोबर इतर कोणती वचनबद्धता आहे?) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="commitment" id="commitment" required>
			             </div>
			            
			            <div class="form-group">
			              <!-- <label for="involveFamilyMemberInBusiness">37. Are You Or Any Of Your Family Member is Involved In The Restaurant/fast Food/cafe/ Tea Shop Business?</label>
			               <input type="text" class="form-control" name="involvedFamilyMemberInindustry" id="involveFamilyMemberInBusiness"> -->
			               
			               
				                   <label  for="involveFamilyMember">35. Are You Or Any Of Your Family Member is Involved In The Restaurant/fast Food/cafe/ Tea Shop Business?/(आपण किंवा आपल्या कुटुंबातील कोणी रेस्टॉरंट / फास्ट फूड / कॅफे / चहाच्या दुकानात काम करत आहात काय?) <span style="color:red; font-size:15px">*</span></label>
							                       <select class="form-control" style="height:100%; width:100%" id = "involveFamilyMember" name="involveFamilyMember"  required>
									                 <option disabled selected value="">--Select--</option>
									                 <option value = "Yes">Yes</option>
									                 <option value = "No">No</option>
									               </select>   
			             </div>
			            
			            <div class="form-group">
			               <label for="brandName">36. If Yes, Mention Brand Name/(असल्यास, ब्रँडचा उल्लेख करा.) <span style="color:red; font-size:15px">*</span></label>
			               <input type="text" class="form-control" name="brandName" id="brandName" required>
			            </div>
	
	
<script src="resources/js/jquery-2.1.4.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>    

	
	<script type="text/javascript">
    				function validate() {

    					var panNo = document.getElementById("panNo").value;
    					
    					var mobileNumber = document.getElementById("altMobileNumber").value;
    					var frContact1 = document.getElementById("frContact1").value;
    					var frContact2 = document.getElementById("frContact2").value;
    					var frContact3 = document.getElementById("frContact3").value;
    					var frContact4 = document.getElementById("frContact4").value;


    					if (panNo.length<10 || panNo.length>10) {
    						alert("Check your mobile number !!!");
    						document.getElementById('panNo').style.borderColor = "red";
    						document.getElementById("panNo").placeholder = "Enter Valid Mobile Number";
    						return false;
    					}
    				

    					if (mobileNumber.length<10 || mobileNumber.length>10) {
    						alert("Check your mobile number !!!");
    						document.getElementById('altMobileNumber').style.borderColor = "red";
    						document.getElementById("altMobileNumber").placeholder = "Enter Valid Mobile Number";
    						return false;
    					}

    					if (frContact1.length<10 || frContact1.length>10) {
    						alert("Check your mobile number !!!");
    						document.getElementById('frContact1').style.borderColor = "red";
    						document.getElementById("frContact1").placeholder = "Enter Valid Mobile Number";
    						return false;
    					}

    					if (frContact2.length<10 || frContact2.length>10) {
    						alert("Check your mobile number !!!");
    						document.getElementById('frContact2').style.borderColor = "red";
    						document.getElementById("frContact2").placeholder = "Enter Valid Mobile Number";
    						return false;
    					}

    					if (frContact3.length<10 || frContact3.length>10) {
    						alert("Check your mobile number !!!");
    						document.getElementById('frContact3').style.borderColor = "red";
    						document.getElementById("frContact3").placeholder = "Enter Valid Mobile Number";
    						return false;
    					}

    					if (frContact4.length<10 || frContact4.length>10) {
    						alert("Check your mobile number !!!");
    						document.getElementById('frContact4').style.borderColor = "red";
    						document.getElementById("frContact4").placeholder = "Enter Valid Mobile Number";
    						return false;
    					}
    					
    			                            
        				var selectElement = document.getElementById("education");
        					if (selectedElement== "") {
            						//If the "Please Select" option is selected display error.
            						alert("Please select your Education !!!");
            						return false;
        						}
        				return true;
    				}
     </script>
			             


                       <div class="form-check">
			                 <input type="checkbox" class="form-check-input" id="check1"  required>
			                 <label class="form-check-label" for="check1" >The filled information Absolutely Correct As per My Knowledge./(वरील माहिती माझ्या माहितीनुसार अचूक आहे.)</label>
			            </div>
			             <!-- I agree with all terms and Conditions -->
			             <br>
			             <div class="text-center pt-4">
			                 <button type="submit" class="btn" onclick="return validate()">SUBMIT</button>
			             </div> 

           
                         <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab" ></div>
                         
              </div>
           </div>
       </div>
    </div>  
 </div>
 </form>
</body>
</html>
            
         

