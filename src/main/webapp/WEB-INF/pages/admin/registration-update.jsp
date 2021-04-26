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
                <div class="wrapper"></div>

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
                                           <table border="2" style="padding:15px 15px"  align="center">
										<tr><th style="padding:10px 10px; width:12%"> Birth Date </th><th style="padding:10px 10px"> Alternate Mobile Number </th><th style="padding:10px 10px"> PAN NO. </th><th style="padding:10px 10px"> Education </th><th style="padding:10px 10px"> Permanent Address </th><th style="padding:10px 10px">Current Address</th><th style="padding:10px 10px">Marital Status</th>
										<th style="padding:10px 10px">View More</th><th style="padding:10px 10px">Delete</th></tr>
										 
									 
			                            <tr>
			                             <td style="text-align:center ; width:10%" ><c:out value="${personalList.birthDate}"/></td>  
			                             <td style="text-align:center"><c:out value="${personalList.altMobileNumber}"/></td>  
			                             <td style="text-align:center"><c:out value="${personalList.panNo}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.education}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.perAddress}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.currAddress}"/></td>
			                             <td style="text-align:center"><c:out value="${personalList.maritalStatus}"/></td>
			                             <td style="text-align:center"><a href="franchise-profile?id=${personalList.id}">Update</a></td>
			                             <td style="text-align:center"><a href="delete-user?id=${id }"> Delete</a></td></tr>
			                                                        
                                       </table><br><br><br>
									
									
									
									    
					           <div class="form-group">
					              <label for=" haveAgrrement">1. In Case Of Leased Residence, Do You Have A Lenses  Agreement?</label>
					               <input type="text" class="form-control" name="haveAgreement" id="haveAgrrement"  value="${personalFranchiseData.haveAgreement}">
					           </div>
					            
					           <div class="form-group">
					               <label for="familyType">2. Do You Live In A Joint Family Or Nuclear?</label>
					               <input type="text" class="form-control" name="familyType" id="familyType" value="${personalFranchiseData.familyType}">            
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
				             
				             
				             
				          <!--<div class="form-group">
				                 <label for="knownPoeople"> 17. How Many People Know You In Your Area ? </label>
				                 <input type="text" class="form-control" name="peopleKnown" id="knownPoeople">
				              </div>    
				             
				             <div class="form-group">
				                 <label for=" userFame"> 18.How Are Your Relations In Your Neighborhood ? </label>
				                 <input type="text" class="form-control" name="userFame" id="userFame">
				             </div>
				             
				             
				             
             
				              
								
                                               <!-- <td>"${birthDate}"</td>
                                               <td>"${altMobileNumber}"</td>
                                               <td>"${panNo}"</td>
                                               <td>"${education}"</td>
                                               <td>"${perAddress}"</td>
                                               <td>"${currAddress}"</td>
                                               <td>"${maritalStatus}"</td>
                                               <td> <a href="franchise-profile?id=${id}">View Franchise Details</a></td>
                                               <td> <a href="delete-user?id=${id }"> Delete</a></td></tr> -->
                                                                             
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