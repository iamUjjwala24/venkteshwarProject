<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <!-- CSS-->
                <link rel="stylesheet" type="text/css" href="resources/css/main.css">
                <!-- Font-icon css-->
                <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
                <title>Systemuser</title>
                <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
                <!--if lt IE 9
         script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
         script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
         -->
            </head>

            <body class="sidebar-mini fixed">
                <div class="wrapper">
                    <!-- Navbar-->
                    <jsp:include page="header.jsp"></jsp:include>
                    <!-- Left side column. contains the logo and sidebar -->
                    <jsp:include page="sidebar.jsp"></jsp:include>

                    <div class="content-wrapper">
                        <div class="page-title">
                            <div>
                                <h1>
						<i class="fa fa-edit"></i>System User
					</h1>
                                <p>Add new system user here</p>
                            </div>
                            <div>
                                <ul class="breadcrumb">
                                    <li><i class="fa fa-home fa-lg"></i></li>
                                    <li>Edit Registration Page</li>
                                    <li><a href="#">System User</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="row">
                            <div style="align: center">
                                <div style="width: 600px; height: 600px; margin-left: auto; margin-right: auto">
                                    <div class="col-md-12">
                                        <div class="card">

                                            <div class="card-body">
                                                <form>
                                                    <div class="form-group">
                                                        <label class="control-label">First Name</label>
                                                        <input class="form-control" type="text" placeholder="Enter the first name">
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label">Last Name</label>
                                                        <input class="form-control" type="text" placeholder="Enter the last name">
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label">Email</label>
                                                        <input class="form-control" type="text" placeholder="Enter the email id">
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label">Mobile</label>
                                                        <input class="form-control" type="number" placeholder="Enter the mobile number">
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label">Country Code</label>
                                                        <input class="form-control" type="text" placeholder="Enter the country code">
                                                    </div>

                                                    <div class="form-group">
                                                        <label class="control-label">Password</label>
                                                        <input class="form-control" type="password" placeholder="Enter the mobile number">
                                                    </div>
                                                </form>
                                            </div>

                                            <div class="card-footer">
                                                <div style="text-align: center">
                                                    <button class="btn btn-primary icon-btn" type="submit" id="demoNotify">
                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Add
                                                    </button>
                                                    &nbsp;&nbsp;&nbsp;<a class="btn btn-default icon-btn" href="#"><i
											class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-body">
                                                <table class="table table-hover table-bordered" id="sampleTable">
                                                    <thead>
                                                        <tr>
                                                            <th>First name</th>
                                                            <th>Last name</th>
                                                            <th>Email</th>
                                                            <th>Mobile</th>
                                                            <th>Country code</th>
                                                            <th>Password</th>

                                                            <th>Update</th>
                                                            <th>Delete</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Garrett Winters</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Ashton Cox</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Cedric Kelly</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Airi Satou</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Brielle Williamson</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Herrod Chandler</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Rhona Davidson</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Colleen Hurst</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Sonya Frost</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Jena Gaines</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Quinn Flynn</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Charde Marshall</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Haley Kennedy</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" type="submit">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>Tatyana Fitzpatrick</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>
                                                            <td>Tiger Nixon</td>

                                                            <td>
                                                                <div style="text-align: center">
                                                                    <button class="btn btn-primary icon-btn" href="city.html">
                                                                        <i class="fa fa-fw fa-lg fa-check-circle"></i>Update
                                                                    </button>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div style="text-align: center">
                                                                    <a class="btn btn-default icon-btn" href="#"><i
															class="fa fa-fw fa-lg fa-times-circle"></i>Delete</a>
                                                                </div>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
                <jsp:include page="common.jsp"></jsp:include>
            </body>

            </html>