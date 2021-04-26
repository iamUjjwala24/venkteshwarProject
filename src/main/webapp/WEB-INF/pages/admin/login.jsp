<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS-->
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!-- Font-icon css-->
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>
</head>
<body>
	<section class="material-half-bg">
	<div class="cover"></div>
	</section>
	<section class="login-content">
	<div class="logo">
		<h1>Admin</h1>
	</div>
	<c:forEach items="${messageItemList}" var="messageItem">
		<div class="bs-component">
			<div class="alert alert-dismissible alert-danger">
				<button class="close" type="button" data-dismiss="alert">x</button>
				<strong>${messageItem.message }</strong>
			</div>
		</div>
	</c:forEach>


	<div class="login-box">
		<form:form class="login-form" action="login"
			modelAttribute="VenkteshAdminDto" method="post">
			<h3 class="login-head">
				<i class="fa fa-lg fa-fw fa-user"></i>SIGN IN
			</h3>
			<div class="form-group">
				<label class="control-label">USERNAME</label> 
				<input class="form-control" type="text" name="userName" placeholder="Email" autofocus>
			</div>
			<div class="form-group">
				<label class="control-label">PASSWORD</label> 
				<input class="form-control" type="password" name="Password"
					placeholder="Password">
			</div>
			<!-- <div class="form-group">
				<div class="utility">
					<div class="animated-checkbox">
                <label class="semibold-text">
                  <input type="checkbox"><span class="label-text">Stay Signed in</span>
                </label>
              </div>
					<p class="semibold-text mb-0">
						<a data-toggle="flip">Forgot Password ?</a>
					</p>
				</div>
			</div> -->
			<div class="form-group btn-container">
				<button class="btn btn-primary btn-block">
					<i class="fa fa-sign-in fa-lg fa-fw"></i>SIGN IN
				</button>
			</div>
			</form:form>
			
			<form:form class="forget-form" action="index.html">
				<h3 class="login-head">
					<i class="fa fa-lg fa-fw fa-lock"></i>Forgot Password ?
				</h3>
				<div class="form-group">
					<label class="control-label">EMAIL</label> <input
						class="form-control" type="text" placeholder="Email">
				</div>
				<div class="form-group btn-container">
					<button class="btn btn-primary btn-block">
						<i class="fa fa-unlock fa-lg fa-fw"></i>RESET
					</button>
				</div>
				<div class="form-group mt-20">
					<p class="semibold-text mb-0">
						<a data-toggle="flip"><i class="fa fa-angle-left fa-fw"></i>
							Back to Login</a>
					</p>
				</div>
		</form:form>
	</div>
	</section>

	<jsp:include page="common.jsp"></jsp:include>
</body>

</html>