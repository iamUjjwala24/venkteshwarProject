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
                <link rel="stylesheet" href="resources/css/dropdown.css">
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
                    
                    		
                    <div class="row">
						<div class="col-md-12">
							<div class="col-md-3">
							
							</div>
							<div class="col-md-8">
										<div class="card">
								
					
									 <form:form  modelAttribute="userData" method="get" action="update-details"> 
										 <div class="form-group"><center><lable style="font-size:25px"><b>Change User Status </b></lable></center></div>
									
										 <br>
                                       <!--     <table border="2" style="padding:15px 15px"  align="center">
									<tr>
										<th style="padding:10px 10px; width:12%"> Full Name</th><th style="padding:10px 10px">Email Id</th>
										<th style="padding:10px 10px">Mobile Number </th><th style="padding:10px 10px"> Status </th>
										<th style="padding:10px 10px">Comment </th>
										<th style="padding:10px 10px">Update </th>
										
									 </tr>
										 
									 
			                            <tr>
			                             <td style="text-align:center ; width:25%" ><c:out value="${userData.fullName}"/></td>  
			                             <td style="text-align:center ; width:30%""><c:out value="${userData.email}"/></td>  
			                             <td style="text-align:center"><c:out value="${userData.mobileNumber}"/></td>
			                             <td style="text-align:center"><c:out value="${userData.status}"/></td>
			                             <td style="text-align:center"><c:out value="${userData.comment}"/></td>
			                             <td style="text-align:center"><a href="update-details?id=${userData.id}">Update</a></td></tr>
			                            			                                                        
                                       </table><br><br><br>-->
															
								<div class="form-group">
					              <label for=" id"></label>
					               <input type="hidden" class="form-control" name="id" id=id value="${userData.id}" >
					           </div>
									
									
								  <div class="form-group">
					              <label for=" fullName">Full Name</label>
					               <input type="text" class="form-control" name="fullName" id="fullName" value="${userData.fullName}" readonly>
					           </div><br>
					             <div class="form-group">
					              <label for=" email">Email Id</label>
					               <input type="text" class="form-control" name="email" id="email" value="${userData.email}" readonly>
					           </div><br>
					           
					             <div class="form-group">
					              <label for=" mobileNumber">Mobile Number</label>
					               <input type="text" class="form-control" name="mobileNumber" id="mobileNumber" value="${userData.mobileNumber}" readonly>
					           </div><br>	
									    
					           <div class="form-group">
					             <!--   <label for=" status">Status</label>
					               <input type="text" class="form-control" name="status" id="status" value="${userData.status}">-->
					               <label  for="status">Status</label>
				                       <select class="form-control" style="width:100% ; height:50%" id = "status" name="status"  required>
						                 <option value = "null">Select</option>
						                 <option value = "Request Pending">Request Pending</option>
						                 <option value = "Request Approved">Request Approved</option>
						                 <option value = "Request Disqualified">Request Disqualified</option>
						                </select>
						          </div><br>
					            
					          <!--   <div class="form-group">
					               <label for="familyType">Add Comment Here  !!!!!</label>
					               <input type="textarea" class="form-control" name="familyType" id="familyType" value="${personalFranchiseData.familyType}">            
					           </div>-->
					            
					           <div class="form-group">
                                   <label for="comment">Add Comment Here  !!!!!</label>
                                   <textarea class="form-control" rows="4" name="comment" id="comment" value="${userData.comment}"></textarea>
                              </div> 
			
			          
			             <!-- I agree with all terms and Conditions -->
			             
			             <div class="text-center pt-4">
			                 <button type="submit" (onclick)="update-details" class="btn">UPDATE</button>
			             </div>        
           
                         <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab" ></div>
                          </div>
									
									
									
							</form:form>		
									
									
									
								
                                               <!-- <td>"${birthDate}"</td>
                                               <td>"${altMobileNumber}"</td>
                                               <td>"${panNo}"</td>
                                               <td>"${education}"</td>
                                               <td>"${perAddress}"</td>
                                               <td>"${currAddress}"</td>
                                               <td>"${maritalStatus}"</td>
                                               <td> <a href="franchise-profile?id=${id}">View Franchise Details</a></td>
                                               <td> <a href="delete-user?id=${id }"> Delete</a></td> </tr>  -->
                                                                           
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
         
                <jsp:include page="common.jsp"></jsp:include>
            </body>

            </html>