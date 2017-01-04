<<<<<<< HEAD:WebContent/WEB-INF/view/admin/editDoctor.jsp
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>  
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
 <link rel="icon" type="image/png" sizes="16x16" href="resources/images/title.jpe">
    <title>Health Analytics | Admin</title>
    <!-- Bootstrap Core CSS -->
    
   	<link href="resources/css/bootstrap-chosen.css" rel="stylesheet">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="resources/css/sidebar-nav.min.css" rel="stylesheet">
    <link href="resources/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
    <!-- animation CSS -->
    <link href="resources/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="resources/css/megna.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<![endif]-->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-19175540-9', 'auto');
        ga('send', 'pageview');
    </script>
</head>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
	<jsp:include page="header.jsp"></jsp:include>
        <!-- Left navbar-header -->
        <jsp:include page="left-sidebar.jsp"></jsp:include>
        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Edit doctor</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="index.html">Hospital</a></li>
                            <li class="active">Add Hospital</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <h3 class="box-title">Basic Information</h3>
                                <c:set value="${sessionScope.list }" var="i"></c:set>
                                <form:form class="form-material form-horizontal" action="updateDoctor.html" method="post" modelAttribute="editDoctorSpeciality">
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Doctor Name</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="doctorName" value="${i.get(0).doctor.doctorName }" path="doctor.doctorName" class="form-control" placeholder="Enter your name" required="required"/>
                                             <form:input type="hidden" id="doctorName" value="${i.get(0).doctor.doctorId }" path="doctor.doctorId" class="form-control" placeholder="Enter your name" required="required"/>
                                        </div>
                                    </div>
                                    <div class="container,form-group">
										<div class="row">
										<label class="col-sm-6">Speciality</label>
											<div class="col-md-6">
										
												<select  id="specMenu" multiple="multiple" class="chosen-select" name="specMenu" required="required">
													
													 <c:forEach items="${i}" var="x">
													<option value="${x.speciality.specialityId}" selected="selected">${x.speciality.specialityName}</option>
													</c:forEach>
													<c:forEach items="${sessionScope.sList }" var="s">
												<%-- 	<c:if test="${s.specialityId != x.speciality.specialityId }"> --%>
													<option value="${s.specialityId}">${s.specialityName}</option>
													<%-- </c:if> --%>
													
													</c:forEach> 
													
													
													
												</select>  
										</div>
										</div>
									</div>
									<hr>
									 <div class="form-group">
                                        <label class="col-sm-12">Gender</label>
                                        <div class="col-sm-12">
                                            <form:select class="form-control" path="doctor.doctorGender">
                                                <option>${i.get(0).doctor.doctorGender}</option>
                                                <option>Male</option>
                                                <option>Female</option>
                                                
                                            </form:select>
                                        </div>
                                    </div>
 										<div class="form-group">
                                        <label class="col-md-12" for="bdate">Date of Birth</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="bdate" path="doctor.doctorDateOfBirth" value="${i.get(0).doctor.doctorDateOfBirth}" class="form-control mydatepicker" placeholder="enter your birth date"/>
                                        </div>
                                    </div>
									<div class="form-group">
                                        <label class="col-md-12" for="Address">Address</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" value="${i.get(0).doctor.doctorAddress}" id="doctorAddress" path="doctor.doctorAddress" class="form-control" placeholder="Enter Street address here" required="required"/>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-sm-6">Country</label>
                                        <div class="col-sm-3">
                                            <form:select class="form-control" path="doctor.country.countryId" id="countryMenu" onchange="getState(this.value)" required="required">
                                            <option value="${i.get(0).doctor.country.countryId}">${i.get(0).doctor.country.countryName}</option>
                                            <c:forEach items="${sessionScope.cList}" var="c">
                                            <c:if test="${c.isActive == 'Yes' }">
                                            <c:if test="${i.get(0).doctor.country.countryId != c.countryId }">
											<form:option value="${c.countryId}">${c.countryName}</form:option>
											</c:if>
											</c:if>
											</c:forEach>
                                            </form:select>
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label class="col-sm-6">State</label>
                                        <div class="col-sm-3">
                                             <form:select class="form-control" path="doctor.state.stateId" id="stateMenu" onchange="getCity(this.value)" required="required">
                                                 <option value="${i.get(0).doctor.country.countryId}">${i.get(0).doctor.state.stateName}</option>
                                               
                                            </form:select>
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-sm-6">City</label>
                                        <div class="col-sm-3">
                                             <form:select class="form-control" path="doctor.city.cityId" id="cityMenu" required="required">
                                                  <option value="${i.get(0).doctor.country.countryId}">${i.get(0).doctor.city.cityName}</option>
                                               
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                    	<label class="col-sm-6">Pin</label>
                                    	<div class="col-sm-3">
                                    		<form:input type="text" id="doctorZipCode" value="${i.get(0).doctor.doctorZipCode}" path="doctor.doctorZipCode" class="form-control" placeholder="e.g. 380008" required="required"/>
                                    	</div>
                                    
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Description</label>
                                        <div class="col-md-12">
                                            <form:input type="text" style="height:50px" class="form-control" value="${i.get(0).doctor.doctorDescription}"  path="doctor.doctorDescription" required="required"></form:input>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="url">Website URL</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="doctorWebsiteUrl" value="${i.get(0).doctor.doctorWebsiteUrl}" path="doctor.doctorWebsiteUrl" class="form-control" placeholder="your website"/>
                                        </div>
                                    </div>
                                        
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-email">Email</span></label>
                                        <div class="col-md-12">
                                            <form:input type="email" id="doctorEmail" path="doctor.doctorEmail" value="${i.get(0).doctor.doctorEmail}" class="form-control" placeholder="enter your email" required="required"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-phone">Phone</span></label>
                                        <div class="col-md-12">
                                            <form:input type="number" value="${i.get(0).doctor.doctorPhone}" id="doctorPhone" path="doctor.doctorPhone" class="form-control" placeholder="enter your phone" required="required"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="pwd">Password</span></label>
                                        <div class="col-md-12">
                                            <form:input type="password" id="password" path="doctor.doctorPassword" class="form-control" placeholder="enter your password" required="required"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="cpwd">Confirm Password</span>&nbsp &nbsp<span id="verifyPassword"></span></label>
                                        <div class="col-md-12">
                                            <form:input type="password" id="confirmPassword" path="doctor.doctorPassword" class="form-control" placeholder="confirm your password" required="required"/>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-12" for="furl">Facebook URL</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="doctorSocialInformation" path="doctor.doctorSocialInformation" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="turl">Twitter URL</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="doctorSocialInformation" path="doctor.doctorSocialInformation" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="gurl">Google Plus URL</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="doctorSocialInformation" path="doctor.doctorSocialInformation" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="inurl">LinkedIN URL</span></label>
                                        <div class="col-md-12">
                                            <form:input type="text" id="doctorSocialInformation" path="doctor.doctorSocialInformation" class="form-control"/>
                                        </div>
                                        <form:input type="hidden" id="isActiveId" path="doctor.isActive" value="Yes" class="form-control"/>
                                    </div>
                                    <button type="submit" id="submitBtn" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                                    <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button>    
                                </form:form>
                            </div>
                        </div> 
                    </div>
                    <!-- .right-sidebar -->
                    <div class="right-sidebar">
                        <div class="slimscrollright">
                            <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                            <div class="r-panel-body">
                                <ul>
                                    <li><b>Layout Options</b></li>
                                    <li>
                                        <div class="checkbox checkbox-info">
                                            <input id="checkbox1" type="checkbox" class="fxhdr">
                                            <label for="checkbox1"> Fix Header </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox checkbox-warning">
                                            <input id="checkbox2" type="checkbox" class="fxsdr">
                                            <label for="checkbox2"> Fix Sidebar </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox4" type="checkbox" class="open-close">
                                            <label for="checkbox4"> Toggle Sidebar </label>
                                        </div>
                                    </li>
                                </ul>
                                <ul id="themecolors" class="m-t-20">
                                    <li><b>With Light sidebar</b></li>
                                    <li><a href="javascript:void(0)" theme="default" class="default-theme">1</a></li>
                                    <li><a href="javascript:void(0)" theme="green" class="green-theme working">2</a></li>
                                    <li><a href="javascript:void(0)" theme="gray" class="yellow-theme">3</a></li>
                                    <li><a href="javascript:void(0)" theme="blue" class="blue-theme">4</a></li>
                                    <li><a href="javascript:void(0)" theme="purple" class="purple-theme">5</a></li>
                                    <li><a href="javascript:void(0)" theme="megna" class="megna-theme">6</a></li>
                                    <li><b>With Dark sidebar</b></li>
                                    <br/>
                                    <li><a href="javascript:void(0)" theme="default-dark" class="default-dark-theme">7</a></li>
                                    <li><a href="javascript:void(0)" theme="green-dark" class="green-dark-theme">8</a></li>
                                    <li><a href="javascript:void(0)" theme="gray-dark" class="yellow-dark-theme">9</a></li>
                                    <li><a href="javascript:void(0)" theme="blue-dark" class="blue-dark-theme">10</a></li>
                                    <li><a href="javascript:void(0)" theme="purple-dark" class="purple-dark-theme">11</a></li>
                                    <li><a href="javascript:void(0)" theme="megna-dark" class="megna-dark-theme">12</a></li>
                                </ul>
                                <ul class="m-t-20 chatonline">
                                    <li><b>Chat option</b></li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/genu.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/arijit.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/govinda.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/hritik.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/john.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/pawandeep.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.right-sidebar -->
                </div>
                <!-- /.container-fluid -->
                <footer class="footer text-center"> 2016 &copy; Elite Admin brought to you by themedesigner.in </footer>
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        
        <script src="resources/js/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="resources/js/sidebar-nav.min.js"></script>
        <!--slimscroll JavaScript -->
        <script src="resources/js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="resources/js/waves.js"></script>
        <!-- Date Picker Plugin JavaScript -->
        <script src="resources/js/bootstrap-datepicker.min.js"></script>
   
        <script src="resources/js/chosen.jquery.js"></script>
	<script >
	
	$('.chosen-select').chosen();
	
	</script>
        <script type="text/javascript">
        
        
function getState(val){
        	
        	$.ajax({
        		type: "POST",
        		url: "getStateUsingAjax.html",
        		data: 'countryId='+val,
        		success: function(data){
        		
        		$("#stateMenu").html(data);
        			
        			
        		}
        	});
        	
        }
        
        
function getCity(val){
	
	$.ajax({
		type: "POST",
		url: "getCityUsingAjax.html",
		data: 'stateId='+val,
		success: function(data){
		
		$("#cityMenu").html(data);
			
			
		}
	});
	
}
	$("#confirmPassword").on("change", function(){
		//alert($(this).val());
		$("#verifyPassword").text("");
		if($(this).val()!=$("#password").val()){
			$("#verifyPassword").text("Password doesnt match with the above field!!").css("color","#01c0c8");
			$("#submitBtn").prop("disabled",true);
			}
		else{
			$("#verifyPassword").text("");
			$("#submitBtn").prop("disabled",false);
			
		}
		
		
	});
	$("#confirmPassword").on("keyup", function(){
		//alert($(this).val());
		
		if($(this).val()=== ""){
			
			$("#verifyPassword").text("");
			$("#submitBtn").prop("disabled",false);
			
		}
		
		
	});
        // Date Picker
        jQuery('.mydatepicker').datepicker();
        </script>
        <!-- Custom Theme JavaScript -->
        <script src="resources/js/custom.min.js"></script>
        <script src="resources/js/jasny-bootstrap.js"></script>
        <script src="resources/js/mask.js"></script>
        <!--Style Switcher -->
        <script src="resources/js/jQuery.style.switcher.js"></script>
</body>

=======
<!DOCTYPE html>  
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
    <title>Elite Hospital Admin Template - Hospital admin dashboard web app kit</title>
    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="resources/css/sidebar-nav.min.css" rel="stylesheet">
    <link href="resources/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
    <!-- animation CSS -->
    <link href="resources/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="resources/css/megna.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o), m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-19175540-9', 'auto');
        ga('send', 'pageview');
    </script>
</head>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
        <jsp:include page="header.jsp"></jsp:include>
        <!-- Left navbar-header -->
        <jsp:include page="left-sidebar.jsp"></jsp:include>
        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Edit Doctor</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="index.html">Hospital</a></li>
                            <li class="active">Edit Doctor</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <h3 class="box-title">Basic Information</h3>
                                <form class="form-material form-horizontal">
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-text">Name</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="example-text" name="example-text" class="form-control" placeholder="enter your name" value="Jonathan Doe">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="bdate">Date of Birth</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="bdate" name="bdate" class="form-control mydatepicker" placeholder="enter your birth date" value="12/10/2016">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Gender</label>
                                        <div class="col-sm-12">
                                            <select class="form-control">
                                                <option>Select Gender</option>
                                                <option selected="selected">Male</option>
                                                <option>Female</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-12">Profile Image</label>
                                        <div class="col-sm-12">
                                            <img class="img-responsive" src="../plugins/images/users/d1.jpg" alt="" style="max-width:120px;">
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                            <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div> <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Select file</span> <span class="fileinput-exists">Change</span>
                                            <input type="file" name="..."> </span> <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="special">Speciality</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="special" name="special" class="form-control" placeholder="e.g. Dentist" value="Neurosurgeon">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Description</label>
                                        <div class="col-md-12">
                                            <textarea class="form-control" rows="3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="url">Website URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="url" name="url" class="form-control" placeholder="your website" value="http://www.example-website.com">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                                    <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button>
                                </form>    
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="white-box">
                                <h3 class="box-title">Doctor's Account Information</h3>
                                <form class="form-material form-horizontal">
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-email">Email</span></label>
                                        <div class="col-md-12">
                                            <input type="email" id="example-email" name="example-email" class="form-control" placeholder="enter your email" value="jondoe@ex.com">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="example-phone">Phone</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="example-phone" name="example-phone" class="form-control" placeholder="enter your phone" data-mask="(999) 999-9999" value="(123) 456-7890">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="pwd">Password</span></label>
                                        <div class="col-md-12">
                                            <input type="password" id="pwd" name="pwd" class="form-control" placeholder="enter your password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="cpwd">Confirm Password</span></label>
                                        <div class="col-md-12">
                                            <input type="password" id="cpwd" name="cpwd" class="form-control" placeholder="confirm your password">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                                    <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button>    
                                </form>
                            </div>
                        </div> 
                    
                        <div class="col-sm-6">
                            <div class="white-box">
                                <h3 class="box-title">Doctor's Social Information</h3>
                                <form class="form-material form-horizontal">
                                    <div class="form-group">
                                        <label class="col-md-12" for="furl">Facebook URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="furl" name="furl" class="form-control" value="http://www.facebook.com/username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="turl">Twitter URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="turl" name="turl" class="form-control" value="http://www.twitter.com/username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="gurl">Google Plus URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="gurl" name="gurl" class="form-control" value="http://www.plus.google.com/username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12" for="inurl">LinkedIN URL</span></label>
                                        <div class="col-md-12">
                                            <input type="text" id="inurl" name="inurl" class="form-control" value="http://www.linkedin.com/username">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-info waves-effect waves-light m-r-10">Submit</button>
                                    <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button>    
                                </form>
                            </div>
                        </div> 
                    </div>
                    <!-- .right-sidebar -->
                    <div class="right-sidebar">
                        <div class="slimscrollright">
                            <div class="rpanel-title"> Service Panel <span><i class="ti-close right-side-toggle"></i></span> </div>
                            <div class="r-panel-body">
                                <ul>
                                    <li><b>Layout Options</b></li>
                                    <li>
                                        <div class="checkbox checkbox-info">
                                            <input id="checkbox1" type="checkbox" class="fxhdr">
                                            <label for="checkbox1"> Fix Header </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox checkbox-warning">
                                            <input id="checkbox2" type="checkbox" class="fxsdr">
                                            <label for="checkbox2"> Fix Sidebar </label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox checkbox-success">
                                            <input id="checkbox4" type="checkbox" class="open-close">
                                            <label for="checkbox4"> Toggle Sidebar </label>
                                        </div>
                                    </li>
                                </ul>
                                <ul id="themecolors" class="m-t-20">
                                    <li><b>With Light sidebar</b></li>
                                    <li><a href="javascript:void(0)" theme="default" class="default-theme">1</a></li>
                                    <li><a href="javascript:void(0)" theme="green" class="green-theme working">2</a></li>
                                    <li><a href="javascript:void(0)" theme="gray" class="yellow-theme">3</a></li>
                                    <li><a href="javascript:void(0)" theme="blue" class="blue-theme">4</a></li>
                                    <li><a href="javascript:void(0)" theme="purple" class="purple-theme">5</a></li>
                                    <li><a href="javascript:void(0)" theme="megna" class="megna-theme">6</a></li>
                                    <li><b>With Dark sidebar</b></li>
                                    <br/>
                                    <li><a href="javascript:void(0)" theme="default-dark" class="default-dark-theme">7</a></li>
                                    <li><a href="javascript:void(0)" theme="green-dark" class="green-dark-theme">8</a></li>
                                    <li><a href="javascript:void(0)" theme="gray-dark" class="yellow-dark-theme">9</a></li>
                                    <li><a href="javascript:void(0)" theme="blue-dark" class="blue-dark-theme">10</a></li>
                                    <li><a href="javascript:void(0)" theme="purple-dark" class="purple-dark-theme">11</a></li>
                                    <li><a href="javascript:void(0)" theme="megna-dark" class="megna-dark-theme">12</a></li>
                                </ul>
                                <ul class="m-t-20 chatonline">
                                    <li><b>Chat option</b></li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/varun.jpg" alt="user-img" class="img-circle"> <span>Varun Dhavan <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/genu.jpg" alt="user-img" class="img-circle"> <span>Genelia Deshmukh <small class="text-warning">Away</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/ritesh.jpg" alt="user-img" class="img-circle"> <span>Ritesh Deshmukh <small class="text-danger">Busy</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/arijit.jpg" alt="user-img" class="img-circle"> <span>Arijit Sinh <small class="text-muted">Offline</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/govinda.jpg" alt="user-img" class="img-circle"> <span>Govinda Star <small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/hritik.jpg" alt="user-img" class="img-circle"> <span>John Abraham<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/john.jpg" alt="user-img" class="img-circle"> <span>Hritik Roshan<small class="text-success">online</small></span></a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"><img src="../plugins/images/users/pawandeep.jpg" alt="user-img" class="img-circle"> <span>Pwandeep rajan <small class="text-success">online</small></span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- /.right-sidebar -->
                </div>
                <!-- /.container-fluid -->
                <footer class="footer text-center"> 2016 &copy; Elite Admin brought to you by themedesigner.in </footer>
            </div>
            <!-- /#page-wrapper -->
        </div>
        <!-- /#wrapper -->
        <!-- jQuery -->
        <script src="resources/js/jquery.min.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="resources/js/bootstrap.min.js"></script>
        <!-- Menu Plugin JavaScript -->
        <script src="resources/js/sidebar-nav.min.js"></script>
        <!--slimscroll JavaScript -->
        <script src="resources/js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="resources/js/waves.js"></script>
        <!-- Date Picker Plugin JavaScript -->
        <script src="resources/jss/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
        // Date Picker
        jQuery('.mydatepicker').datepicker();
        </script>
        <!-- Custom Theme JavaScript -->
        <script src="resources/js/custom.min.js"></script>
        <script src="resources/js/jasny-bootstrap.js"></script>
        <script src="resources/js/mask.js"></script>
        <!--Style Switcher -->
        <script src="resources/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>

>>>>>>> parent of 0aea795... Revert "Buy now deleted":WebContent/WEB-INF/view/admin/edit-doctor.jsp
</html>