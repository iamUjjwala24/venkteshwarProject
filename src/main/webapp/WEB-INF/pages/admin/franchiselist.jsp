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
										<form action="delete-user" method="get">
										
										<div class="table-responsive">
									    <table border="2" style="padding:15px 15px"  align="center">

										<tr><th style="padding:10px 10px"> Full Name </th><th style="padding:10px 10px"> Email Id </th><th style="padding:10px 10px"> Mobile Number </th><th style="padding:10px 10px"> Status </th><th style="padding:10px 10px"> Comment </th>
										<th style="padding:10px 10px">View Profile</th><th style="padding:10px 10px">Update</th>
										<th style="padding:10px 10px">Delete</th></tr>
									    <c:forEach items="${userList}" var="userData"> 
									    <tr>
									    
									    <td style="text-align:center ; width:15%">${userData.fullName}</td>
									    <td style="text-align:center">${userData.email}</td>
									    <td style="text-align:center">${userData.mobileNumber}</td>
									    <td style="text-align:center; width:15%">${userData.status}</td>
									    <td style="text-align:center ; width:15%">${userData.comment}</td>
									    <td style="text-align:center"><a href="user-details?id=${userData.id}">View Profile</a></td>
									    <td style="text-align:center"><a href="registration-details?id=${userData.id}">Update</a></td>
									    <td style="text-align:center"><button onclick="return myFunction()"><a href="delete-user?id=${userData.id}">Delete</a></button></td>
									   <!-- <td style="text-align:center"><button onclick="myFunction()"><i class="fa fa-trash"><a href="delete-user?id=${userData.id}"></a></i></button></td>-->
									    </tr>
									    </c:forEach>
									    </table> </div> 
									 <p id="demo"></p>
										</form>
	
	
	<script src="resources/js/jquery-2.1.4.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>    
	<script type="text/javascript">

	function myFunction() {
	  var txt;
	  var r = confirm("Do you realy want to delete this User from List!");
	  if (r == true) {
	    txt = "You pressed OK!";
	    return true;
	  } else {
	    txt = "You pressed Cancel!";
	    return false;
	  }
	  document.getElementById("demo").innerHTML = txt;
	}
	</script>

										
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