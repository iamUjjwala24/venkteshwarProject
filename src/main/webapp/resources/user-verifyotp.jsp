<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Verify Mobile Number</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="resources/userprofile/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="resources/userprofile/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="resources/userprofile/css/uniform.css" />
<link rel="stylesheet" href="resources/userprofile/css/select2.css" />
<link rel="stylesheet" href="resources/userprofile/css/style.css" />
<link rel="stylesheet" href="resources/userprofile/css/media.css"
	class="skin-color" />
<script src="resources/userprofile/js/modernizr.custom.js"></script>

</head>

<body
	style="background: url(http://localhost:8080/Happymmarriage/resources/userprofile/images/backgrounds/bodyBg.png) repeat #fff">
	<!--Header-part-->
	<div id="header">Happy Mmarriage</div>
	<!--close-Header-part-->
	
	
									
	<div id="content" style="margin-top: 0">

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span3"></div>
				<div class="span6">
					<div class="widget-box">
						<div class="widget-content" align="center">
							<form action="user-verify-otp" method="post" class="form-horizontal">
								<h2>Phone Verification</h2>
								
								<br />
								
								<div align="center">
										<c:if test="${not empty errorMessageItemList}">
											<c:forEach items="${errorMessageItemList}" var="messageItem">
												<div class="alert alert-dismissible alert-danger">
													<button class="close" type="button" data-dismiss="alert">x</button>
													<strong>${messageItem.message }</strong>
												</div>
											</c:forEach>
										</c:if>							
								</div>
								${userDetails.mobileNumber} 
								
								<div align="center">
									
									<input type="hidden" value="${userDetails.mobileNumber}" placeholder="Enter Mobile Number"
											name="mobileNumber" id="mobileNumber" pattern="[0-9]{10}" required=""/>
									Help Us to build safe and authenticated match making site.
									<h2>Verify your mobile number.</h2>
									
									<img src="resources/userprofile/images/info.png"><span
										class="lgrey_msg">We sent 4 digit pin to your register
										mobile number.</span><span class="bs-docs-tooltip-examples"><a
										title="" id="example" data-content="Vivamus sagittis"
										data-placement="top" data-toggle="popover" class="" href=""
										data-original-title=""></a></span> <br /> <br /> <br /> <span
										class="input-box"> <input type="text" name="otp"
										id="msgbox" pattern="[0-9]{4}" required="" title="Enter four digit otp number">
									</span>

									<button type="submit" class="btn btn-success"
										onclick="return validate()">Verify</button>
									<br /> <br /> Didn't get pin?<input type="button"
										class="btn btn-success" value="Resend OTP"
										onclick="return resendotp()">

								</div>

							</form>
						</div>
					</div>

				</div>
				<div class="span3"></div>
			</div>
		</div>
	</div>
	<script src="resources/userprofile/js/cbpHorizontalSlideOutMenu.min.js"></script>
	<script>
                            var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));
                        </script>
	<script src="resources/userprofile/js/jquery.min.js"></script>
	<script src="resources/userprofile/js/jquery.ui.custom.js"></script>
	<script src="resources/userprofile/js/bootstrap.min.js"></script>
	<script src="resources/userprofile/js/jquery.uniform.js"></script>
	<script src="resources/userprofile/js/select2.min.js"></script>
	<script src="resources/userprofile/js/maruti.js"></script>
	<script src="resources/userprofile/js/form_common.js"></script>

	<script type="text/javascript">
	function validate() {

		var msgbox = document.getElementById("msgbox").value;

		if (msgbox.length<4 || msgbox.length>4) {
			alert("Enter otp number");
			return false;
		}

		return true;
	}

</script>

	 <script type="text/javascript">
							function resendotp() {
									//alert("Inside function");
									
									//http://happymmarriage10-env.2iakh3gm4w.us-east-1.elasticbeanstalk.com/resend-otp
							$.ajax({
									type : "GET",
									url : "user-resend-otp",
									contentType : "application/json; charset=utf-8",
									timeout : 100000,
							success : function(data) {
														//alert("success");
													},
							error : function(e) {
															//alert("error");
													},
							done : function(e) {
													//console.log("DONE");
												}
							});
				
							return false;
						}
							
					</script> 

</body>

</html>