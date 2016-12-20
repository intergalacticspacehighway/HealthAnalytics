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
    <link href="resources/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
    <!-- Menu CSS -->
    <link href="resources/css/sidebar-nav.min.css" rel="stylesheet">
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
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Payments</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> <a href="https://themeforest.net/item/elite-admin-responsive-dashboard-web-app-kit-/16750820" target="_blank" class="btn btn-danger pull-right m-l-20 btn-rounded btn-outline hidden-xs hidden-sm waves-effect waves-light">Buy Now</a>
                        <ol class="breadcrumb">
                            <li><a href="#">Hospital</a></li>
                            <li class="active">Payments</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title m-b-0">Hospital Payments Details</h3>
                            <hr>
                            <div class="table-responsive">
                                <table id="myTable" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Patient</th>
                                            <th>Doctor</th>
                                            <th>Date</th>
                                            <th>Charges</th>
                                            <th>Discount</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Tiger Nixon</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$610</td>
                                            <td>15%</td>
                                            <td>$320</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Garrett Winters</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$630</td>
                                            <td>15%</td>
                                            <td>$170</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Ashton Cox</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$660</td>
                                            <td>15%</td>
                                            <td>$860</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Cedric Kelly</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$220</td>
                                            <td>15%</td>
                                            <td>$433</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Airi Satou</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$330</td>
                                            <td>15%</td>
                                            <td>$162</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Brielle Williamson</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$610</td>
                                            <td>15%</td>
                                            <td>$372</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Herrod Chandler</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$590</td>
                                            <td>15%</td>
                                            <td>$137</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>Rhona Davidson</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$550</td>
                                            <td>15%</td>
                                            <td>$327</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>Colleen Hurst</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$390</td>
                                            <td>15%</td>
                                            <td>$205</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>Sonya Frost</td>
                                            <td>Steve Gection</td>
                                            <td>2008/12/13</td>
                                            <td>$230</td>
                                            <td>15%</td>
                                            <td>$103</td>
                                        </tr>
                                        <tr>
                                            <td>31</td>
                                            <td>Tiger Nixon</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$610</td>
                                            <td>15%</td>
                                            <td>$320</td>
                                        </tr>
                                        <tr>
                                            <td>28</td>
                                            <td>Garrett Winters</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$630</td>
                                            <td>15%</td>
                                            <td>$170</td>
                                        </tr>
                                        <tr>
                                            <td>73</td>
                                            <td>Ashton Cox</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$660</td>
                                            <td>15%</td>
                                            <td>$860</td>
                                        </tr>
                                        <tr>
                                            <td>44</td>
                                            <td>Cedric Kelly</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$220</td>
                                            <td>15%</td>
                                            <td>$433</td>
                                        </tr>
                                        <tr>
                                            <td>95</td>
                                            <td>Airi Satou</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$330</td>
                                            <td>15%</td>
                                            <td>$162</td>
                                        </tr>
                                        <tr>
                                            <td>76</td>
                                            <td>Brielle Williamson</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$610</td>
                                            <td>15%</td>
                                            <td>$372</td>
                                        </tr>
                                        <tr>
                                            <td>67</td>
                                            <td>Herrod Chandler</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$590</td>
                                            <td>15%</td>
                                            <td>$137</td>
                                        </tr>
                                        <tr>
                                            <td>83</td>
                                            <td>Rhona Davidson</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$550</td>
                                            <td>15%</td>
                                            <td>$327</td>
                                        </tr>
                                        <tr>
                                            <td>19</td>
                                            <td>Colleen Hurst</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$390</td>
                                            <td>15%</td>
                                            <td>$205</td>
                                        </tr>
                                        <tr>
                                            <td>14</td>
                                            <td>Sonya Frost</td>
                                            <td>Steve Gection</td>
                                            <td>2008/12/13</td>
                                            <td>$230</td>
                                            <td>15%</td>
                                            <td>$103</td>
                                        </tr>
                                        <tr>
                                            <td>13</td>
                                            <td>Tiger Nixon</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$610</td>
                                            <td>15%</td>
                                            <td>$320</td>
                                        </tr>
                                        <tr>
                                            <td>25</td>
                                            <td>Garrett Winters</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$630</td>
                                            <td>15%</td>
                                            <td>$170</td>
                                        </tr>
                                        <tr>
                                            <td>39</td>
                                            <td>Ashton Cox</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$660</td>
                                            <td>15%</td>
                                            <td>$860</td>
                                        </tr>
                                        <tr>
                                            <td>41</td>
                                            <td>Cedric Kelly</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$220</td>
                                            <td>15%</td>
                                            <td>$433</td>
                                        </tr>
                                        <tr>
                                            <td>53</td>
                                            <td>Airi Satou</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$330</td>
                                            <td>15%</td>
                                            <td>$162</td>
                                        </tr>
                                        <tr>
                                            <td>65</td>
                                            <td>Brielle Williamson</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$610</td>
                                            <td>15%</td>
                                            <td>$372</td>
                                        </tr>
                                        <tr>
                                            <td>77</td>
                                            <td>Herrod Chandler</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$590</td>
                                            <td>15%</td>
                                            <td>$137</td>
                                        </tr>
                                        <tr>
                                            <td>80</td>
                                            <td>Rhona Davidson</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$550</td>
                                            <td>15%</td>
                                            <td>$327</td>
                                        </tr>
                                        <tr>
                                            <td>90</td>
                                            <td>Colleen Hurst</td>
                                            <td>Steve Gection</td>
                                            <td>2011/04/25</td>
                                            <td>$390</td>
                                            <td>15%</td>
                                            <td>$205</td>
                                        </tr>
                                        <tr>
                                            <td>100</td>
                                            <td>Sonya Frost</td>
                                            <td>Steve Gection</td>
                                            <td>2008/12/13</td>
                                            <td>$230</td>
                                            <td>15%</td>
                                            <td>$103</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
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
                                        <input id="checkbox2" type="checkbox" checked="" class="fxsdr">
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
    <!-- Custom Theme JavaScript -->
    <script src="resources/js/custom.min.js"></script>
    <script src="resources/js/jquery.dataTables.min.js"></script>
    
    <script>
        $(document).ready(function () {
            $('#myTable').DataTable();
        });
    </script>
    <!--Style Switcher -->
    <script src="resources/js/jQuery.style.switcher.js"></script>
</body>

</html>