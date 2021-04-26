<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<title>Vyankateshwar Amruttulya</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="resources/userprofile/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="resources/userprofile/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="resources/userprofile/css/uniform.css" />
<!--  <link rel="stylesheet" href="resources/userprofile/css/select2.css" /> -->
<link rel="stylesheet" href="resources/userprofile/css/style.css" />
<link rel="stylesheet" href="resources/userprofile/css/media.css"
	class="skin-color" />
<script src="resources/userprofile/js/modernizr.custom.js"></script>

<link rel="stylesheet" href="resources/userprofile/css/base.min.css">
<link rel="stylesheet" href="resources/userprofile/css/choices.min.css">
<script src="resources/userprofile/js/choices.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

</head>

<body>
	<% response.addHeader("Refresh","300"); %>
	<c:choose>
		<c:when
			test="${userProfileCompletnessInActivity eq null}">
			<center><a href="http://happymmarriage.com/user-login" class="current"><h1 style="color: red"><u>Please Login Here</u></h1></a></center>
		</c:when>
		<c:otherwise>
	<!--<jsp:include page="userheader.jsp"></jsp:include> -->

	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a> <a href="/home" class="current">Dashboard</a>
			</div>
			<h1>Dashboard</h1>

		</div><br>
		<div style="    margin-left: 115px;">
		    <div><span style="font-size: 25px;">Hello!&nbsp;${userDetails.userDetails.firstName}&nbsp;${userDetails.userDetails.lastName}</span>
			(HM-${userDetails.userDetails.marriageNumber})</div>
		</div>
		
		<%-- <div class="progress" style="width: 300px">
    		<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:${userProfileCompletnessInActivity}%">
    		<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:${userProfileCompletnessInActivity}%; background-color:skyblue;">
      			${userProfileCompletnessInActivity}% Complete
    		</div>
  		</div> --%>
		
		
		
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span3 leftside">
					<div class="widget-box">
						<div class="widget-content">
							<div id="" class="profile_info">
 
								<%-- <div class="thumbnail1">
									<a href="#"> <img src="${profilePicture }" width="80"
										height="80" alt="image"></a>
								</div> --%>
						<div class="progress" style="width: 100; background-color: #F05836; border-radius: 10px;">
							<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:${userProfileCompletnessInActivity}%; background-color:#87BD3C; ">
      								&nbsp;&nbsp;${userProfileCompletnessInActivity}% Complete
    						</div>
    					</div>

								<c:if test="${userGender eq 'Male'}">
									<c:choose>
										<c:when test="${profilePicture eq null}">
											<div class="thumbnail1">
												<img src="resources/userprofile/img/male.png" width="80"
													height="80" alt="image">
											</div>
										</c:when>
										<c:otherwise>
											<div class="thumbnail1">
												<img src="${profilePicture}" width="80" height="80"
													alt="image"></a>
											</div>
										</c:otherwise>
									</c:choose>
								</c:if>

								<c:if test="${userGender eq 'Female'}">
									<c:choose>
										<c:when test="${profilePicture eq null}">
											<div class="thumbnail1">
												<img src="resources/userprofile/img/femail.png" width="80"
													height="80" alt="image">
											</div>
										</c:when>
										<c:otherwise>
											<div class="thumbnail1">
												<img src="${profilePicture }" width="80" height="80"
													alt="image">
											</div>
										</c:otherwise>
									</c:choose>
								</c:if>

								<div class="manage_links_wrap">
									<a href="my-profile" class="light_blue">Edit Profile</a><a
										href="myphoto" class="light_blue">Manage Photos</a><a
										href="view-partnerpreferences" class="light_blue">Edit
										Preferences</a> <a href="#" class="light_blue">Privacy Options</a>
								</div>
								<br class="clear"> <a href="#" class="trust_badges_link">Unlock
									Trust Badges</a>
							</div>
						</div>
					</div>
					<div class="widget-box">
						<div class="widget-title">
							<h5>Inbox(Activity Factor 100%)</h5>
						</div>
						<div class="widget-content">
							<div class="explore_links">
								<p>
									<a href="friend-request-details?status=New Request">Invitations
										(${userFriendRequestStatusCount.newRequestCount})</a>
								</p>
							</div>
						</div>
					</div>
					<div class="widget-box">
						<div class="widget-title">
							<h5>Accepted</h5>
						</div>
						<div class="widget-content">
							<div class="explore_links">
								<p>
									<a href="friend-request-details?status=Accepted">Members
										(${userFriendRequestStatusCount.acceptedCount})</a>
								</p>
							</div>
						</div>
					</div>
					<div class="widget-box">
						<div class="widget-title">
							<h5>Sent</h5>
						</div>
						<div class="widget-content">
							<div class="explore_links">
								<p>
									<a href="friend-request-details?status=My Sent Request">Invitations
										(${userFriendRequestStatusCount.mySentRequestCount})</a>
								</p>
							</div>
						</div>
					</div>
					<div class="widget-box">
						<div class="widget-title">
							<h5>Recently Updated</h5>
						</div>
						<div class="widget-content">
							<div class="recent">
								<c:choose>
									<c:when test="${!empty userDetailsDtoListForRecentlyUpdated}">
										<c:forEach items="${userDetailsDtoListForRecentlyUpdated }"
											var="userDetailsDto">
											<div class="profile_compact_view">
					
												<c:if test="${userDetailsDto.gender eq 'Male'}">
												<c:choose>
													<c:when
														test="${userDetailsDto.imageName eq null}">
														<span class="thumbnail"> <img
															src="resources/userprofile/img/male.png">
														</span>
													</c:when>
													<c:otherwise>
														<span class="thumbnail"> <img
															src="${userDetailsDto.imageName}">
														</span>
													</c:otherwise>
												</c:choose>
												</c:if>

												<c:if test="${userDetailsDto.gender eq 'Female'}">
												<c:choose>
													<c:when
														test="${userDetailsDto.imageName eq null && userDetailsDto.gender eq 'Female'}">
														<span class="thumbnail"> <img
															src="resources/userprofile/img/femail.png">
														</span>
													</c:when>
													<c:otherwise>
														<span class="thumbnail"> <img
															src="${userDetailsDto.imageName}">
														</span>
													</c:otherwise>
												</c:choose>
												</c:if>

												<%-- <span class="thumbnail"><a href="#"><img
														src="${userDetailsDto.imageName}"></a></span> --%>
												<div class="user_info">
													<span><a
														href="view-profile?id=${userDetailsDto.id }" target="_blank">${userDetailsDto.firstName }
															${userDetailsDto.lastName } </a></span> <span>updated profile
														recently.</span>
												</div>

											</div>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<div class="widget-content nopadding">
											<c:if
												test="${not empty errorMessageItemListForRecentlyUpdated}">
												<c:forEach items="${errorMessageItemListForRecentlyUpdated}"
													var="messageItem">
													<strong>${messageItem.message }</strong>
												</c:forEach>
											</c:if>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div class="widget-box">
						<div class="widget-title">
							<h5>Explore</h5>
						</div>
						<div class="widget-content">
							<div class="explore_links">
								<p>
									<a href="user-viewed-profile">Viewed Profiles
										(${userFriendRequestStatusCount.viewedProfileCount})</a>
								</p>
								<p>
									<a href="friend-request-details?status=Ignored">Ignored
										Members (${userFriendRequestStatusCount.ignoredCount}) </a>
								</p>
								<p>
									<a href="friend-request-details?status=Decline">Declined /
										Cancelled (${userFriendRequestStatusCount.declineCount})</a>
								</p>
								<p>
									<a href="friend-request-details?status=Block">Blocked
										Members (${userFriendRequestStatusCount.blockCount})</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title">
							<h5>
								New Matches (${newMatchesCount }) <a href="newmatches"
									class="viewall">View All</a>
							</h5>
						</div>

						<div class="widget-content nopadding">
							<c:choose>
								<c:when
									test="${!empty userPartnerPreferencesSearchDtoListForNewMatches}">
									<c:forEach
										items="${userPartnerPreferencesSearchDtoListForNewMatches }"
										var="userPartnerPreferencesSearchDto" begin="0" end="3">
										<div class="profile_compact_view">
											<span class="thumbnail"> <%-- <div class="fl small-pic">
													<!-- local url http://localhost:8081/matrimonialproject/api/teac954391bb4dfb8517ee993ccb92b1/downloadfile/thumbnail_ -->
													<!-- local url http://matrimonialtestenv.jczhnunafg.us-east-1.elasticbeanstalk.com/api/teac954391bb4dfb8517ee993ccb92b1/downloadfile/thumbnail_ -->
													<a href="#"><img
														src="${userPartnerPreferencesSearchDto.imageName }"></a>
												</div> --%> <c:if test="${userGender eq 'Male'}">
													<c:choose>
														<c:when
															test="${userPartnerPreferencesSearchDto.imageName eq null}">
															<img src="resources/userprofile/img/femail.png">
														</c:when>
														<c:otherwise>
															<img src="${userPartnerPreferencesSearchDto.imageName }">
														</c:otherwise>
													</c:choose>
												</c:if> <c:if test="${userGender eq 'Female'}">
													<c:choose>
														<c:when
															test="${userPartnerPreferencesSearchDto.imageName eq null}">
															<img src="resources/userprofile/img/male.png">
														</c:when>
														<c:otherwise>
															<img src="${userPartnerPreferencesSearchDto.imageName }">
														</c:otherwise>
													</c:choose>
												</c:if>

											</span>

											<div class="user_info">
												<p>
													<a
														href="view-profile?id=${userPartnerPreferencesSearchDto.userId}"
														class="light_blue" target="_blank">${userPartnerPreferencesSearchDto.firstName }&nbsp;
														${userPartnerPreferencesSearchDto.lastName }</a>
												</p>
												<p>${userPartnerPreferencesSearchDto.age },
													${userPartnerPreferencesSearchDto.height} cm,
													${userPartnerPreferencesSearchDto.religionName},
													${userPartnerPreferencesSearchDto.castName},
													${userPartnerPreferencesSearchDto.mothertongueName}</p>
												<p>${userPartnerPreferencesSearchDto.subcategoryName},
													${userPartnerPreferencesSearchDto.cityName},
													${userPartnerPreferencesSearchDto.countryName}</p>
												<a
													href="view-profile?id=${userPartnerPreferencesSearchDto.userId}"
													class="full_profile" target="_blank">Full Profile</a>
											</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="widget-content nopadding">
										<div class="profile_compact_view">
											<c:if test="${not empty errorMessageItemListForNewMatches}">
												<c:forEach items="${errorMessageItemListForNewMatches}"
													var="messageItem">
													<center>
														<strong>${messageItem.message }</strong>
													</center>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>

					<div class="widget-box">
						<div class="widget-title">
							<h5>
								My Matches (${myMatchesCount }) <a href="mymatches"
									class="viewall">View All</a>
							</h5>
						</div>
						<div class="widget-content nopadding">
							<c:choose>
								<c:when
									test="${!empty userPartnerPreferencesSearchDtoListForMyMatches}">
									<c:forEach
										items="${userPartnerPreferencesSearchDtoListForMyMatches }"
										var="userPartnerPreferencesSearchDto" begin="0" end="3">
										<div class="profile_compact_view">
											<span class="thumbnail"> <%-- <div class="fl small-pic">
													<!-- local url http://localhost:8081/matrimonialproject/api/teac954391bb4dfb8517ee993ccb92b1/downloadfile/thumbnail_ -->
													<!-- local url http://matrimonialtestenv.jczhnunafg.us-east-1.elasticbeanstalk.com/api/teac954391bb4dfb8517ee993ccb92b1/downloadfile/thumbnail_ -->
													<a href="#"><img
														src="${userPartnerPreferencesSearchDto.imageName }"></a>
												</div> --%> <c:if test="${userGender eq 'Male'}">
													<c:choose>
														<c:when
															test="${userPartnerPreferencesSearchDto.imageName eq null}">
															<img src="resources/userprofile/img/femail.png">
														</c:when>
														<c:otherwise>
															<img src="${userPartnerPreferencesSearchDto.imageName }">
														</c:otherwise>
													</c:choose>
												</c:if> <c:if test="${userGender eq 'Female'}">
													<c:choose>
														<c:when
															test="${userPartnerPreferencesSearchDto.imageName eq null}">
															<img src="resources/userprofile/img/male.png">
														</c:when>
														<c:otherwise>
															<img src="${userPartnerPreferencesSearchDto.imageName }">
														</c:otherwise>
													</c:choose>
												</c:if>

											</span>
											<div class="user_info">
												<p>
													<a
														href="view-profile?id=${userPartnerPreferencesSearchDto.userId}"
														class="light_blue" target="_blank">${userPartnerPreferencesSearchDto.firstName }&nbsp;
														${userPartnerPreferencesSearchDto.lastName }</a>
												</p>
												<p>${userPartnerPreferencesSearchDto.age },
													${userPartnerPreferencesSearchDto.height} cm,
													${userPartnerPreferencesSearchDto.religionName},
													${userPartnerPreferencesSearchDto.castName},
													${userPartnerPreferencesSearchDto.mothertongueName}</p>
												<p>${userPartnerPreferencesSearchDto.subcategoryName},
													${userPartnerPreferencesSearchDto.cityName},
													${userPartnerPreferencesSearchDto.countryName}</p>
												<a
													href="view-profile?id=${userPartnerPreferencesSearchDto.userId}"
													class="full_profile" target="_blank">Full Profile</a>
											</div>

										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<div class="widget-content nopadding">
										<div class="profile_compact_view">
											<c:if test="${not empty errorMessageItemListForMyMatches}">
												<c:forEach items="${errorMessageItemListForMyMatches}"
													var="messageItem">
													<center>
														<strong>${messageItem.message }</strong>
													</center>
												</c:forEach>
											</c:if>
										</div>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				
				<div class="span3">
					<div class="widget-box">
			          <div class="widget-title">
			            <h5>Profile ID Search</h5>
			          </div>
			          <div class="widget-content">
			          
			          <c:if test="${not empty errorMessageItemList}">
						<c:forEach items="${errorMessageItemList}">
							<div class="alert alert-dismissible alert-danger">
								<button class="close" type="button" data-dismiss="alert">x</button>
								<strong>${errorMessageItemList}</strong>
							</div>
						</c:forEach>
					</c:if>
			          
			          	<form:form action="marriage_number" method="post" class="form-horizontal">
				            
					            <div class="chat-message well">
					                <button type="submit" class="btn btn-success" onclick="return validate()">GO</button>
					                <!-- <span class="input-box"> -->
					               
					               		<input  type="text" name="marriageNumber"  id="marriageNumber" style="height: 30px; width: 110px" placeholder="Enter Profile Id" required="">
					               <!--  </span>  -->
					            </div>
				                <!-- <input type="text" name="marriageNumber" id="marriageNumber" placeholder="Enter Profile Id" required="">
				                <button type="submit" class="btn btn-success">Search</button> -->
			            </form:form>
			          </div>
			        </div>
		        </div>
				
				<div class="span3">
					<div class="widget-box">
						<div class="widget-title">
							<h5>Partner Search</h5>
						</div>
						<div class="widget-content partner">
							<form:form action="partnersearch" method="post"
								modelAttribute="userPartnerPreferencesBasicOrAdvanceSearchDto">
								<div class="control-group">
									<label class="control-label">Age</label>
									<div class="controls">
										<div class="src_field_box">
											<select name="ageFrom" data-trigger
												placeholder="This is a search placeholder" id="agefrom"
												class="age">
												<option value="18" label="18">18</option>
												<option value="19" label="19">19</option>
												<option value="20" label="20">20</option>
												<option value="21" label="21" selected="selected">21</option>
												<option value="22" label="22">22</option>
												<option value="23" label="23">23</option>
												<option value="24" label="24">24</option>
												<option value="25" label="25">25</option>
												<option value="26" label="26">26</option>
												<option value="27" label="27">27</option>
												<option value="28" label="28">28</option>
												<option value="29" label="29">29</option>
												<option value="30" label="30">30</option>
												<option value="31" label="31">31</option>
												<option value="32" label="32">32</option>
												<option value="33" label="33">33</option>
												<option value="34" label="34">34</option>
												<option value="35" label="35">35</option>
												<option value="36" label="36">36</option>
												<option value="37" label="37">37</option>
												<option value="38" label="38">38</option>
												<option value="39" label="39">39</option>
												<option value="40" label="40">40</option>
												<option value="41" label="41">41</option>
												<option value="42" label="42">42</option>
												<option value="43" label="43">43</option>
												<option value="44" label="44">44</option>
												<option value="45" label="45">45</option>
												<option value="46" label="46">46</option>
												<option value="47" label="47">47</option>
												<option value="48" label="48">48</option>
												<option value="49" label="49">49</option>
												<option value="50" label="50">50</option>
												<option value="51" label="51">51</option>
												<option value="52" label="52">52</option>
												<option value="53" label="53">53</option>
												<option value="54" label="54">54</option>
												<option value="55" label="55">55</option>
												<option value="56" label="56">56</option>
												<option value="57" label="57">57</option>
												<option value="58" label="58">58</option>
												<option value="59" label="59">59</option>
												<option value="60" label="60">60</option>
												<option value="61" label="61">61</option>
												<option value="62" label="62">62</option>
												<option value="63" label="63">63</option>
												<option value="64" label="64">64</option>
												<option value="65" label="65">65</option>
												<option value="66" label="66">66</option>
												<option value="67" label="67">67</option>
												<option value="68" label="68">68</option>
												<option value="69" label="69">69</option>
												<option value="70" label="70">70</option>
												<option value="71" label="71">71</option>
											</select> <span class="rng"> to</span> <select name="ageTo"
												data-trigger placeholder="This is a search placeholder"
												id="ageto" class="age">
												<option value="18" label="18">18</option>
												<option value="19" label="19">19</option>
												<option value="20" label="20">20</option>
												<option value="21" label="21">21</option>
												<option value="22" label="22">22</option>
												<option value="23" label="23">23</option>
												<option value="24" label="24">24</option>
												<option value="25" label="25" selected="selected">25</option>
												<option value="26" label="26">26</option>
												<option value="27" label="27">27</option>
												<option value="28" label="28">28</option>
												<option value="29" label="29">29</option>
												<option value="30" label="30">30</option>
												<option value="31" label="31">31</option>
												<option value="32" label="32">32</option>
												<option value="33" label="33">33</option>
												<option value="34" label="34">34</option>
												<option value="35" label="35">35</option>
												<option value="36" label="36">36</option>
												<option value="37" label="37">37</option>
												<option value="38" label="38">38</option>
												<option value="39" label="39">39</option>
												<option value="40" label="40">40</option>
												<option value="41" label="41">41</option>
												<option value="42" label="42">42</option>
												<option value="43" label="43">43</option>
												<option value="44" label="44">44</option>
												<option value="45" label="45">45</option>
												<option value="46" label="46">46</option>
												<option value="47" label="47">47</option>
												<option value="48" label="48">48</option>
												<option value="49" label="49">49</option>
												<option value="50" label="50">50</option>
												<option value="51" label="51">51</option>
												<option value="52" label="52">52</option>
												<option value="53" label="53">53</option>
												<option value="54" label="54">54</option>
												<option value="55" label="55">55</option>
												<option value="56" label="56">56</option>
												<option value="57" label="57">57</option>
												<option value="58" label="58">58</option>
												<option value="59" label="59">59</option>
												<option value="60" label="60">60</option>
												<option value="61" label="61">61</option>
												<option value="62" label="62">62</option>
												<option value="63" label="63">63</option>
												<option value="64" label="64">64</option>
												<option value="65" label="65">65</option>
												<option value="66" label="66">66</option>
												<option value="67" label="67">67</option>
												<option value="68" label="68">68</option>
												<option value="69" label="69">69</option>
												<option value="70" label="70">70</option>
												<option value="71" label="71">71</option>
											</select>
										</div>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Height</label>
									<div class="controls">
										<div class="src_field_box">
											<select name="heightFrom" data-trigger id="heightfrom"
												class="height">
												<option value="134" label="4' 5'' - 134cm">4' 05'' - 134cm</option>
												<option value="137" label="4' 6'' - 137cm">4' 06'' - 137cm</option>
												<option value="139" label="4' 7'' - 139cm">4' 07'' - 139cm</option>
												<option value="142" label="4' 8'' - 142cm">4' 08'' - 142cm</option>
												<option value="144" label="4' 9'' - 144cm">4' 09'' - 144cm</option>
												<option value="147" label="4' 10'' - 147cm">4' 10'' - 147cm</option>
												<option value="149" label="4' 11'' - 149cm">4' 11'' - 149cm</option>
												<option value="152" label="5' - 152cm">5' - 152cm</option>
												<option value="154" label="5' 1'' - 154cm">5' 01'' - 154cm</option>
												<option value="157" label="5' 2'' - 157cm">5' 02'' - 157cm</option>
												<option value="160" label="5' 3'' - 160cm">5' 03'' - 160cm</option>
												<option value="162" label="5' 4'' - 162cm">5' 04'' - 162cm</option>
												<option value="165" label="5' 5'' - 165cm"
													selected="selected">5' 05'' - 165cm</option>
												<option value="167" label="5' 6'' - 167cm">5' 06'' - 167cm</option>
												<option value="170" label="5' 7'' - 170cm">5' 07'' - 170cm</option>
												<option value="172" label="5' 8'' - 172cm">5' 08'' - 172cm</option>
												<option value="175" label="5' 9'' - 175cm">5' 09'' - 175cm</option>
												<option value="177" label="5' 10'' - 177cm">5' 10'' - 177cm</option>
												<option value="180" label="5' 11'' - 180cm">5' 11'' - 180cm</option>
												<option value="182" label="6' - 182cm">6' - 182cm</option>
												<option value="185" label="6' 1'' - 185cm">6' 01'' - 185cm</option>
												<option value="187" label="6' 2'' - 187cm">6' 02'' - 187cm</option>
												<option value="190" label="6' 3'' - 190cm">6' 03'' - 190cm</option>
												<option value="193" label="6' 4'' - 193cm">6' 04'' - 193cm</option>
												<option value="195" label="6' 5'' - 195cm">6' 05'' - 195cm</option>
												<option value="198" label="6' 6'' - 198cm">6' 06'' - 198cm</option>
												<option value="200" label="6' 7'' - 200cm">6' 07'' - 200cm</option>
												<option value="203" label="6' 8'' - 203cm">6' 08'' - 203cm</option>
												<option value="205" label="6' 9'' - 205cm">6' 09'' - 205cm</option>
												<option value="208" label="6' 10'' - 208cm">6' 10'' - 208cm</option>
												<option value="210" label="6' 11'' - 210cm">6' 11'' - 210cm</option>
												<option value="213" label="7' - 213cm">7' - 213cm</option>
											</select> <span class="rng"> to</span> <select name="heightTo"
												data-trigger id="heightto" class="height">
												<option value="134" label="4' 5'' - 134cm">4' 05'' - 134cm</option>
												<option value="137" label="4' 6'' - 137cm">4' 06'' - 137cm</option>
												<option value="139" label="4' 7'' - 139cm">4' 07'' - 139cm</option>
												<option value="142" label="4' 8'' - 142cm">4' 08'' - 142cm</option>
												<option value="144" label="4' 9'' - 144cm">4' 09'' - 144cm</option>
												<option value="147" label="4' 10'' - 147cm">4' 10'' - 147cm</option>
												<option value="149" label="4' 11'' - 149cm">4' 11'' - 149cm</option>
												<option value="152" label="5' - 152cm">5' - 152cm</option>
												<option value="154" label="5' 1'' - 154cm">5' 01'' - 154cm</option>
												<option value="157" label="5' 2'' - 157cm">5' 02'' - 157cm</option>
												<option value="160" label="5' 3'' - 160cm">5' 03'' - 160cm</option>
												<option value="162" label="5' 4'' - 162cm">5' 04'' - 162cm</option>
												<option value="165" label="5' 5'' - 165cm">5' 05'' - 165cm</option>
												<option value="167" label="5' 6'' - 167cm">5' 06'' - 167cm</option>
												<option value="170" label="5' 7'' - 170cm">5' 07'' - 170cm</option>
												<option value="172" label="5' 8'' - 172cm">5' 08'' - 172cm</option>
												<option value="175" label="5' 9'' - 175cm">5' 09'' - 175cm</option>
												<option value="177" label="5' 10'' - 177cm">5' 10'' - 177cm</option>
												<option value="180" label="5' 11'' - 180cm">5' 11'' - 180cm</option>
												<option value="182" label="6' - 182cm">6' - 182cm</option>
												<option value="185" label="6' 1'' - 185cm">6' 01'' - 185cm</option>
												<option value="187" label="6' 2'' - 187cm"
													selected="selected">6' 02'' - 187cm</option>
												<option value="190" label="6' 3'' - 190cm">6' 03'' - 190cm</option>
												<option value="193" label="6' 4'' - 193cm">6' 04'' - 193cm</option>
												<option value="195" label="6' 5'' - 195cm">6' 05'' - 195cm</option>
												<option value="198" label="6' 6'' - 198cm">6' 06'' - 198cm</option>
												<option value="200" label="6' 7'' - 200cm">6' 07'' - 200cm</option>
												<option value="203" label="6' 8'' - 203cm">6' 08'' - 203cm</option>
												<option value="205" label="6' 9'' - 205cm">6' 09'' - 205cm</option>
												<option value="208" label="6' 10'' - 208cm">6' 10'' - 208cm</option>
												<option value="210" label="6' 11'' - 210cm">6' 11'' - 210cm</option>
												<option value="213" label="7' - 213cm">7' - 213cm</option>
											</select>
										</div>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Religion</label>
									<div class="controls">
										<select multiple name="religionName"
											id="choices-single-no-search">
											<option value="Doesn't Matter" selected="selected">Doesn't Matter</option>
											<c:forEach items="${religionList }" var="religion">
												<option value="${religion.religionName }"
													id="${religion.id }">${religion.religionName }</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Cast</label>
									<div class="controls">
										<select multiple name="castName" id="choices-single-no-search">
											<option value="Doesn't Matter" selected="selected">Doesn't Matter</option>
											<c:forEach items="${castList }" var="cast">
												<option value="${cast.castName }">${cast.castName }</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Marital Status</label>
									<div class="controls">
										<select multiple name="maritalStatus"
											id="choices-single-no-search">
											<option value="Doesn't Matter" selected="selected">Doesn't Matter</option>
											<c:forEach items="${maritalStatusList }" var="maritalStatus">
												<option value="${maritalStatus.maritalStatus }">${maritalStatus.maritalStatus }</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Mother Tongue</label>
									<div class="controls">
										<select multiple name="mothertongueName"
											id="choices-single-no-search">
											<option value="Doesn't Matter" selected="selected">Doesn't Matter</option>
											<c:forEach items="${mothertongueList }" var="mothertongue">
												<option value="${mothertongue.mothertongueName }">${mothertongue.mothertongueName }</option>
											</c:forEach>
										</select>
									</div>
								</div>

								<!-- <div class="control-group">
                                                <div class="controls">
                                                    <label>
                                                        <input type="radio" name="radios" /> Only Profiles with photos
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="radios" /> Hide Profiles that have Filtered me
                                                    </label>
                                                </div>
                                            </div> -->

								<button type="submit" class="btn btn-success">Search</button>
								<!--  <div class="form-actions">
                                                <a href="#">Profile ID Search</a> &nbsp; &nbsp;<a href="#">More Options</a>
                                            </div> -->
							</form:form>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>

	<div class="footer">
		<ul>
			<li><a href="">Home</a></li>
			<li><a href="">About us</a></li>
			<li><a href="">Blog</a></li>
			<li><a href="">Contact us</a></li>
			<li><a href="">Privacy Policy</a></li>
			<li><a href="">Terms of Use</a></li>
			<li><a href="">Site Map</a></li>
		</ul>
		<p>Copyright 2018 Happy Marriage</p>
	</div>

	<script src="resources/userprofile/js/cbpHorizontalSlideOutMenu.min.js"></script>
	<script>
		var menu = new cbpHorizontalSlideOutMenu(document
				.getElementById('cbp-hsmenu-wrapper'));
	</script>
	<script src="resources/userprofile/js/jquery.min.js"></script>
	<script src="resources/userprofile/js/jquery.ui.custom.js"></script>
	<script src="resources/userprofile/js/bootstrap.min.js"></script>
	<script src="resources/userprofile/js/jquery.uniform.js"></script>
	<!-- <script src="resources/userprofile/js/select2.min.js"></script> -->
	<script src="resources/userprofile/js/maruti.js"></script>
	<script src="resources/userprofile/js/form_common.js"></script>



	<script>
		document.addEventListener('DOMContentLoaded', function() {

			var genericExamples = new Choices('[data-trigger]', {
				placeholderValue : 'This is a placeholder set in the config',
				searchPlaceholderValue : 'This is a search placeholder'
			});

			var singleNoSearch = new Choices('#choices-single-no-search', {
				searchEnabled : false,
				removeItemButton : true,

			})
		});
	</script>
	<!-- <script type="text/javascript">
				 
	$('#religionId').on('change', function() {
		var religionId = $(this).find('option:selected').attr('id');
		
		 $('#subcastId').html('');
		var subcastoption="<option value='Select' selected='selected'>Select</option>";
		$('#subcastId').append(subcastoption);

		 $('#castId').html('');
		var castoption="<option value='Select' selected='selected'>Select</option>";
		$('#castId').append(castoption);

		$.ajax({
			url : "religion/cast/"+religionId,
			type : "GET"
		}).success(function(data) {
		
		var cast= $('#castId'),options="";

		for(var i=0;i<data.length;i++){
		    options += '<option value="' + data[i].castName + '" id="' + data[i].id + '">' + data[i].castName + '</option>';

		}
		cast.append(options);
		}).fail(function(jqXHR, textStatus) {
			alert("Cast not present");
		});

	});
	</script> -->
	<script type="text/javascript">
		$('#chaticon')
				.on(
						'click',
						function() {

							$
									.ajax({
										url : "user/online-user/list",
										type : "GET"
									})
									.success(
											function(data) {

												$('#friendlistid').html('');
												var userdiv = "";

												for (var i = 0; i < data.length; i++) {

													userdiv += '<div class="chats" id="' + data[i].id + '">'; // + data[i].castName + '</option>';
													userdiv += '<a href="#." style="display:block"><img src="'+data[i].imageName +'"  width="27" height="27"><span>'
															+ data[i].firstName
															+ " "
															+ data[i].lastName
															+ '</span><br clear="all"></a> </div>';
												}

												$('#friendlistid').append(
														userdiv);
											}).fail(
											function(jqXHR, textStatus) {
												alert("User not online");
											});

						});
	</script>
	
	<script type="text/javascript">
	function validate() {
		
		var marriageNumber = document.getElementById("marriageNumber").value;
	
		if (marriageNumber.length<10 || marriageNumber.length>10) {
			alert("Enter Profile Id");
			document.getElementById('marriageNumber').style.borderColor = "red";
			document.getElementById("marriageNumber").placeholder = "Profile Id Required";
			return false;
		}
		
	return true;
	} 
	
	</script>


	<!--  <%@include file="chat-users.jsp"%>  -->

	</c:otherwise>
	</c:choose>

</body>

</html>