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

</html>