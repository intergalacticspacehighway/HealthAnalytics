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
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="resources/css/sidebar-nav.min.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="resources/css/morris.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="resources/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/css/style.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- color CSS -->
    <link href="resources/css/megna.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
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
                        <h4 class="page-title">Hospital Dashboard</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">    <ol class="breadcrumb">
                            <li><a href="index.html">Hospital</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
    <!--row -->
       <div class="row">
        <div class="col-md-3 col-sm-6">
          <div class="white-box">
            <div class="r-icon-stats">
              <i class="ti-user bg-megna"></i>
              <div class="bodystate">
                <h4>370</h4>
                <span class="text-muted">New Patient</span>
              </div>
            </div>  
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="white-box">
            <div class="r-icon-stats">
              <i class="ti-shopping-cart bg-info"></i>
              <div class="bodystate">
                <h4>342</h4>
                <span class="text-muted">OPD Patient</span>
              </div>
            </div>  
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="white-box">
            <div class="r-icon-stats">
              <i class="ti-wallet bg-success"></i>
              <div class="bodystate">
                <h4>13</h4>
                <span class="text-muted">Today's Operations</span>
              </div>
            </div>  
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="white-box">
            <div class="r-icon-stats">
              <i class="ti-wallet bg-inverse"></i>
              <div class="bodystate">
                <h4>$34650</h4>
                <span class="text-muted">Hospital Earning</span>
              </div>
            </div>  
          </div>
        </div>
      </div>
      <!--/row -->            
        <!-- .row -->
      <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
          <div class="white-box">
            <h3 class="box-title"><small class="pull-right m-t-10 text-success"><i class="fa fa-sort-asc"></i> 18% High then last month</small> New Patient</h3>
            <div class="stats-row">
              <div class="stat-item">
                <h6>Overall</h6>
                <b>80.40%</b></div>
              <div class="stat-item">
                <h6>Montly</h6>
                <b>15.40%</b></div>
              <div class="stat-item">
                <h6>Day</h6>
                <b>5.50%</b></div>
            </div>
            <div id="sparkline8" class="minus-mar"></div>
          </div>
        </div>
         
        <div class="col-md-6 col-sm-12 col-xs-12">
          <div class="white-box">
            <h3 class="box-title"><small class="pull-right m-t-10 text-success"><i class="fa fa-sort-asc"></i> 18% High then last month</small>Medical Treatment</h3>
            <div class="stats-row">
              <div class="stat-item">
                <h6>Overall Growth</h6>
                <b>80.40%</b></div>
              <div class="stat-item">
                <h6>Montly</h6>
                <b>15.40%</b></div>
              <div class="stat-item">
                <h6>Day</h6>
                <b>5.50%</b></div>
            </div>
            <div id="sparkline10" class="minus-mar"></div>
          </div>
        </div>
      </div>
      <!-- /.row -->        
      
      
      <!--row -->
      <div class="row">
        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
          <div class="white-box">
              <h3 class="box-title">Patients In</h3>
              <ul class="list-inline text-center">
              <li>
                <h5><i class="fa fa-circle m-r-5" style="color: #00bfc7;"></i>OPD</h5>
              </li>
              <li>
                <h5><i class="fa fa-circle m-r-5" style="color: #b4becb;"></i>ICU</h5>
              </li>
            </ul>
              <div id="morris-area-chart1" style="height: 370px;"></div>
          </div>
       </div>  
        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
          <div class="white-box">
            <h3 class="box-title">Hospital Earning</h3>
            <ul class="list-inline text-center">
              <li>
                <h5><i class="fa fa-circle m-r-5" style="color: #00bfc7;"></i> Patient</h5>
              </li>
              <li>
                <h5><i class="fa fa-circle m-r-5" style="color: #b4becb;"></i>ICU</h5>
              </li>
            </ul>

            <div id="morris-area-chart2" style="height: 370px;"></div>
          </div>
        </div>
              
      </div>
    <!-- row -->
      <!-- /row -->
      <div class="row">
        <div class="col-sm-6">
          <div class="white-box">
            <h3 class="box-title m-b-0">New Patient List</h3>
            <p class="text-muted">this is the sample data here for crm</p>
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Username</th>
                    <th>Diseases</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Deshmukh</td>
                    <td>Prohaska</td>
                    <td>@Genelia</td>
                    <td><span class="label label-danger">Fever</span> </td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Deshmukh</td>
                    <td>Gaylord</td>
                    <td>@Ritesh</td>
                    <td><span class="label label-info">Cancer</span> </td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Sanghani</td>
                    <td>Gusikowski</td>
                    <td>@Govinda</td>
                    <td><span class="label label-warning">Lakva</span> </td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>Roshan</td>
                    <td>Rogahn</td>
                    <td>@Hritik</td>
                    <td><span class="label label-success">Dental</span> </td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td>Joshi</td>
                    <td>Hickle</td>
                    <td>@Maruti</td>
                    <td><span class="label label-info">Cancer</span> </td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td>Nigam</td>
                    <td>Eichmann</td>
                    <td>@Sonu</td>
                    <td><span class="label label-success">Dental</span> </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="white-box">
            <h3 class="box-title m-b-0">Laboratory Test</h3>
            <p class="text-muted">this is the sample data here for crm</p>
            <div class="table-responsive">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Name</th>
                    <th>ECG</th>
                    <th>Result</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Genelia Deshmukh</td>
                    <td><span class="peity-line" data-width="120" data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}' data-height="40">0,-3,-2,-4,-5,-4,-3,-2,-5,-1</span> </td>
                    <td><span class="text-danger text-semibold"><i class="fa fa-level-down" aria-hidden="true"></i> 28.76%</span> </td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Ajay Devgan</td>
                    <td><span class="peity-line" data-width="120" data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}' data-height="40">0,-1,-1,-2,-3,-1,-2,-3,-1,-2</span> </td>
                    <td><span class="text-warning text-semibold"><i class="fa fa-level-down" aria-hidden="true"></i> 8.55%</span> </td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Hrithik Roshan</td>
                    <td><span class="peity-line" data-width="120" data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}' data-height="40">0,3,6,1,2,4,6,3,2,1</span> </td>
                    <td><span class="text-success text-semibold"><i class="fa fa-level-up" aria-hidden="true"></i> 58.56%</span> </td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>Steve Gection</td>
                    <td><span class="peity-line" data-width="120" data-peity='{ "fill": ["#01c0c8"], "stroke":["#01c0c8"]}' data-height="40">0,3,6,4,5,4,7,3,4,2</span> </td>
                    <td><span class="text-info text-semibold"><i class="fa fa-level-up" aria-hidden="true"></i> 35.76%</span> </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
               
                <!-- .right-sidebar -->
                
                <!-- /.right-sidebar -->
            </div>
            <!-- /.container-fluid -->
           
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
    <!--Morris JavaScript -->
    <script src="resources/js/raphael-min.js"></script>
    <script src="resources/js/morris.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="resources/js/jquery.sparkline.min.js"></script>
    <!-- jQuery peity -->
    <script src="resources/js/jquery.peity.min.js"></script>
    <script src="resources/js/jquery.peity.init.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="resources/js/custom.min.js"></script>
    <script src="resources/js/dashboard1.js"></script>
    <!--Style Switcher -->
    <script src="resources/js/jQuery.style.switcher.js"></script>

</body>

</html>