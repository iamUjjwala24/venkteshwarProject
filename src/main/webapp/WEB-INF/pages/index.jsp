<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@page isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

                <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <META name="GENERATOR" content="IBM WebSphere Studio">
                <meta charset="utf-8"/>
                <meta charset="utf-8">
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/> 
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- CSS-->
                <link rel="stylesheet" type="text/css" href="resources/css/main.css">
                <!-- Font-icon css-->
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 				<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
				
</head>

<body class="sidebar-mini fixed">
<form action="getRegistrationFrom" method="post" onsubmit="return validateOtp()">
                <div class="wrapper">
                     <div class="content-wrapper">
                        
                     </div>
                    			
                    <div class="row">
						<div class="col-md-12">
							<div class="col-md-3">
							
							</div>
							<div class="col-md-8">
										<div class="card">
         
         
            <div class="form-group">
              <input type="text" name="fullName" class="form-control" id="fullName" placeholder="Full Name/(संपुर्ण नाव)" required>
            </div>
          
            <div class="form-group">
              <input type="email" name="email" class="form-control" id="email" placeholder="Email/(इ-मेल )" required>
            </div>

             <div class="form-group">
              <input type="number" name="mobileNumber" class="form-control" maxlength="10" id="mobileNumber" pattern="[789][0-9]{9}" placeholder="Mobile Number/(मोबाईल नंबर)" required>
            </div>
           
           <div class="row">
           <div class="col-md-3">
           <div class="text-center">
              <button  type="button" class="btn"><a onclick="return sendOtp()">GET OTP/(कोड मागवा)</a></button>
            </div></div>
             <div class="col-md-7">
             <div class="form-group">
              <input type="text" name="otp" class="form-control" id="otp" placeholder="Enter OTP/(कोड टाका)" required>
             </div>
            </div>
            <div class="col-md-2">
             <div class="text-center">
              <button type="submit" class="btn" onclick="return validateOtp()">SUBMIT</button>
              </div>
            </div>
           </div>

            <div class="text-center pt-2">
              <a class="btn btn-link text-primary" onclick="return sendOtp()">Click Here to Re-send OTP?/(कोड पुन्हा प्राप्त करा)</a>
            </div>
          

       
        <div class="tab-pane fade" id="pills-register" role="tabpanel" aria-labelledby="pills-register-tab" ></div>
                         
              </div>
           </div>
       </div>
    </div>  
 </div>
</form>
</body>

<script src="resources/js/jquery-2.1.4.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>    
<script type="text/javascript">


	function sendOtp(){

		
		var data =  $( "#mobileNumber").val();
		if(data == null || data == ""){
			//toastr.error( "Mobile number cannot be blank",'Error'); 
			return false;
		}else{
			
			$.ajax({
				url : "generateOtp?mobileNumber=" + data,
				type : "GET",
				success : function(response) {
					var alert = response;
					
					//toastr.success(response,'Success');
				}

			}); 
			
			return false;
		}
		
		
		return false;
	}
	
	
	
	function validateOtp() {

		var email = document.getElementById("email").value;
		var fullName = document.getElementById("fullName").value;
		var mobileNumber = document.getElementById("mobileNumber").value;
		var mailformat = /^([a-zA-Z0-9_\.]{3,})+\@(([a-zA-Z])+\.)+([a-zA-Z0-9]{2,4})+$/;
		var nameformat = /^[a-zA-Z]+$/;

		
		if (!email.match(mailformat)) {
			alert("Invalid email Format !!!!");
			document.getElementById('email').style.borderColor = "red";
			document.getElementById("email").placeholder = "Email Address is required";
			return false;
		}

		if (mobileNumber.length<10 || mobileNumber.length>10) {
			alert("Check your mobile number !!!");
			document.getElementById('mobileNumber').style.borderColor = "red";
			document.getElementById("mobileNumber").placeholder = "Mobile Number is required";
			return false;
		}
		

		
		
		var otp =  $( "#otp").val();
		var  mobileNumber=  $( "#mobileNumber").val();
		if(otp == null || otp == ""){
			toastr.error( "Otp cannot be blank",'Error'); 
			return false;
		}else{
			
			$.ajax({
				
				data:{"otp": otp,"mobileNumber": mobileNumber},
				url : "getRegistrationFrom?=" + data,
				type : "POST",
				success : function(response) {
					var alert = response;
					
					toastr.success(response,'Validation Done Successfully');
				}

			}); 
			
			return false;
		}
		return false;
		//return true;
	}

	
	
	
	function nospaces(t) {
		if (t.value.match(/\s/g)) {
			alert("Sorry, you are not allowed enter any spaces");
			t.value = t.value.replace(/\s/g, '');
		}
	}
</script>

<!-- <script type="text/javascript">
	$(function() {
		$('.datepicker').datepicker({
			format : 'dd/mm/yyyy',
			endDate : '+0d',
			autoclose : true
		});
	});
</script> -->

</html>
            
            
            
            
            
        