<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>  
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="health">
    <meta name="author" content="">
	 <link rel="icon" type="image/png" sizes="16x16" href="resources/images/title.jpe">
    <title>Health Analytics | Admin</title>
    <!-- Bootstrap Core CSS -->
	<link href="resources/css/bootstrap-toggle.css" rel="stylesheet">
	<link href="resources/css/stylesheet.css" rel="stylesheet">
	<script src="resources/js/jquery.min.js"></script>
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
                        <h4 class="page-title">View Symptom</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="index.html">Hospital</a></li>
                            <li class="active">View Country</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <h3 class="box-title">Symptom Information</h3>
							<table class="table table-hover">
								<thead class="thead-inverse">
									<tr>
										<th>Count</th>
										<th>Symptom</th>
										<th>Edit</th>
										<th>isActive</th>
										
									</tr>
								</thead>
								<tbody class="rowBody">
									<c:set var = "count" value="0"></c:set>
									<c:set var = "countActive" value="0"></c:set>
									<c:forEach items="${sessionScope.list }" var = "i" varStatus="myindex">
										<c:if test="${i.isActive == 'Yes' }">
										<c:set var = "countActive" value="${countActive+1 }"></c:set>
										</c:if>
									<tr class="rowContent">
										<td>${myindex.index +1 }</td>
										<td class="jqueryCheck">${i.symptomName}</td>
										<td><a href ="editSymptom.html?id=${i.symptomId}">Edit</a></td>
										
										<td class = "active">
										<c:if test="${i.isActive == 'Yes' }">
										
											<input type="checkbox" checked data-toggle="toggle" data-on="Yes" data-off="No" data-onstyle="success" data-offstyle="danger" onchange="window.location.href='deleteSymptom.html?id=${i.symptomId}'">
			
    									</c:if>
										<c:if test="${i.isActive == 'No' }">
										
											<input type="checkbox"  data-toggle="toggle" data-on="Yes" data-off="No" data-onstyle="success" data-offstyle="danger" onchange="window.location.href='deleteSymptomisActive.html?id=${i.symptomId}'">
			
    									</c:if>

										</td>
									
									</tr>
									<c:set var = "count" value="${count+1 }"></c:set>
									</c:forEach>
								
									
									
									<tr class="rowCountTotal">
									
										<td color="bg-primary"><strong>Total Records</strong></td>
										<td></td>
										<td></td>
										
										<td><strong id="totalCount"><c:out value="${count}"/></strong></td>
										
									</tr>
									<tr class="rowCountActive">
									
										<td  color="bg-primary"><strong id = "countTotal">Total Active Records</strong></td>
										<td></td>
										
										<td></td>
										<td><strong id = "countActive"><c:out value="${countActive }"/></strong></td>
										
									</tr>
								</tbody>
							</table>
						</div>
                        </div> 
                    
                         
                    </div>
                 
                </div>
                <!-- /.container-fluid -->
               <jsp:include page="footer.jsp"></jsp:include>
             
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
        <script src="resources/js/bootstrap-datepicker.min.js"></script>
        <script type="text/javascript">
/* function getState(){
        	
        	$.ajax({
        		type: "GET",
        		url: "deleteCountry.html",
        		data: 'countryId=',
        		success: function(data){
        		
        			alert(data);
        		$("#stateMenu").html(data);
        		
        			
        			
        		}
        	});
        	
        } */
       
      	$(".active:contains('No')").css("color","#d9534f");	
      	$(".active:contains('Yes')").css("color","#5cb85c");
      	
      	$("#searchBox").animate({width:"450px"},function(){
      		$(this).attr("placeholder","Search Using Country/State Name/City Name");
      	}).focus();
/*       	$("#searchBox").keyup(function(){
      		
      		$.ajax({
      			type: "POST",
      			url: "searchStateDataUsingAjax.html",
      			data: 'keywords='+$(this).val(),
      			sucess: function(data){
      				alert("hello");
      				$(".rowBody").replaceWith(data);
      				
      			}
      		});
      	}); */
      	$("#searchBox").on("keyup",function(){
      	
      		//$this = $(".jqueryCheck");
      		$var = $.trim($(this).val().toLowerCase());
      	
      		$(".jqueryCheck").each(function(){
      			$this = $(this).text().toLowerCase();
      			//alert($this);
      			if($this.indexOf($var) === -1 && $(this).siblings(".jqueryCheck2").text().toLowerCase().indexOf($var) === -1){
      				$(this).closest(".rowContent").hide();
      			}
      			else{
      				$(this).closest(".rowContent").show();
      			}
      		
      			
      			
      			//alert($activeCount);
      			$("#countActive").text( $(".active:visible:contains('Yes')").length);
      			 
          		$("#totalCount").text($(".rowContent:visible").length);
      		
      			
      		});
      		
      		
      		
      		
      	});
      	//$("#searchForm").attr("action","searchStateDataUsingAjax.html").attr("method","post");
      	
        // Date Picker
        jQuery('.mydatepicker').datepicker();
        </script>
        <!-- Custom Theme JavaScript -->
        <script src="resources/js/bootstrap-toggle.js"></script>
        <script src="resources/js/custom.min.js"></script>
        <script src="resources/js/jasny-bootstrap.js"></script>
        <script src="resources/js/mask.js"></script>
        <!--Style Switcher -->
        <script src="resources/js/jQuery.style.switcher.js"></script>
</body>

</html>