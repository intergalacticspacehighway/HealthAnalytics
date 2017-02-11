
<jsp:include page="header.jsp"></jsp:include>
<main id="main" class="tg-page-wrapper tg-haslayout"> <%@taglib
	uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 ">
			<aside id="tg-sidebar" class="dashboard-sidebar">
				<div class="tg-widget tg-widget-doctor">
					<div class="col-sm-4 col-xs-12 tg-expectwidth">
						<div class="tg-search-category"
							style="height: 224px; width: 180px; margin-left: 30px;">
							<div class="tg-displaytable">

								<div class="tg-displaytablecell">
									<c:forEach items="${sessionScope.list}" var="i">
										<img src="doc/${i.registration.login.userprofileImage}"
											style="height: 222px; width: 178px; position: center; margin-top: -49px;" />
									</c:forEach>
									<div class="tg-box" style="padding: 0px 0px; margin-top: -50px">
										<a href="javascript:;" data-toggle="modal"
											data-target="#myModal"> <span class="tg-show"
											style="background: none"><em class="icon-add"></em></span></a>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="tg-widget tg-widget-accordions">
					<h3>Dashboard</h3>
					<ul class="docdirect-menu">
						<li class="active"><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=dashboard&#038;identity=340">My
								Profile</a></li>
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=settings&#038;identity=340">Profile
								Settings</a></li>
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=wishlist&#038;identity=340">Favourites</a></li>
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=invoices&#038;identity=340">Invoices
								&amp; Packages</a></li>
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=schedules&#038;identity=340">My
								Schedules</a></li>
						<li class=""><a href="javascript:;" data-toggle="modal"
							data-target="#myModal1">Manage Specialities</a></li>

						<li class=""><a href="javascript:;" data-toggle="modal"
							data-target="#myModal2">Manage Hospitals</a></li>
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=booking-settings&#038;identity=340">Booking
								Settings</a></li>

						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=security&#038;identity=340">Security
								Settings</a></li>

						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=privacy-settings&#038;identity=340">Privacy
								Settings</a></li>

						<li><a
							href="https://themographics.com/wordpress/docdirect/wp-login.php?action=logout&#038;redirect_to=https%3A%2F%2Fthemographics.com%2Fwordpress%2Fdocdirect%2F&#038;_wpnonce=b55770d263">Logout</a></li>
					</ul>
				</div>
			</aside>

		</div>
		<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12 pull-right">
			<div class="tg-dashboard tg-haslayout">
				<div class="tg-docprofilechart tg-haslayout">
					<div
						class="col-lg-8 col-md-7 col-sm-12 col-xs-12 tg-findheatlhwidth">
						<div class="row">
							<div class="tg-docinfo tg-haslayout">
								<div class="tg-box">
									<div class="tg-heading-border tg-small">
										<h3>
											welcome,
											<c:out value="${username }" />
										</h3>
									</div>
									<div class="tg-description">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmodporia incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quisti nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consuatag.</p>
									</div>
									<div class="tg-bottominfo tg-haslayout">
										<div class="tg-regardsleft">
											<em>Regards,</em> <strong>Team Health Analytics</strong>
										</div>
										<div class="tg-regardsright">
											<strong class="logo"> <a style="color: #fff"><Strong>Health
												</Strong><span style="color: rgb(82, 146, 231)">Analytics</span></a>
											</strong>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 tg-expectwidth">
						<div class="row">
							<div class="tg-support">
								<div class="tg-heading-border tg-small">
									<h3>GET SUPPORT</h3>
								</div>
								<ul class="tg-doccontactinfo">
									<li><i class="fa fa-map-marker"></i>
										<address>23 Eccles Old Road, New Salford Road, Uk,
											M6 7AF</address></li>
									<li><i class="fa fa-phone"></i><a
										href="tel:+44 235 8568432">+44 235 8568432</a></li>
									<li><i class="fa fa-envelope-o"></i><a
										href="mailto:info@docdirect.com?Subject=Hello%20again"
										target="_top">info@docdirect.com</a></li>
									<li><i class="fa fa-fax"></i><span>+44 235 856843</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="tg-graph tg-haslayout">
				<div class="tg-profilehits">
					<div class="tg-heading-border tg-small">
						<h3>Profile Hits</h3>
					</div>
					<canvas id="canvas" class="canvas"></canvas>
				</div>
			</div>
			<div class="tg-docrank tg-haslayout">
				<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
					<div class="tg-costumerreview">
						<div class="tg-heading-border tg-small">
							<h3>Customer Reviews</h3>
						</div>
						<div id="tg-reviewscrol" class="tg-reviewscrol">
							<ul class="tg-reviews">
								<li>
									<div class="tg-review">
										<figure class="tg-reviwer-img">
											<a
												href="https://themographics.com/wordpress/docdirect/doctor/steve/"><img
												src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-01-1-140x89.jpg"
												alt="Reviewer"></a>
										</figure>
										<div class="tg-reviewcontet">
											<div class="comment-head">
												<div class="pull-left">
													<h3>Dr Steve</h3>
												</div>
												<span>Posted on October 18, 2016 at 12:43 pm</span>
												<div class="tg-stars star-rating pull-left">
													<span style="width: 80%"></span>
												</div>
											</div>
											<div class="tg-description">Lorem ipsum dolor sit amet,
												consectetur adipisicing elit, sed do eiusmod tempor
												incididunt ut labore...</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
					<div class="row">
						<div class="tg-heading-border tg-small">
							<h3>Overall Rank</h3>
						</div>
						<div class="tg-ratingbox">
							<div class="tg-stars star-rating">
								<span style="width: 80%"></span>
							</div>
							<strong>very good</strong>
						</div>
						<a class="tg-btn"
							href="https://themographics.com/wordpress/docdirect/doctor/professional/">Read
							More</a>
					</div>
				</div>
			</div>
			<script>
	var lineChartData  = {
		labels: ["January","February","March","April","May","June","July","August","September","October","November","December"],
		datasets: [
			{
				label: "Profile Hits",
				fillColor : "rgba(220,220,220,0)",
				strokeColor : "rgba(203,202,201,1)",
				pointColor : "rgba(93,89,85,1)",
				pointStrokeColor : "rgba(238,238,238,1)",
				pointHighlightFill : "rgba(125,187,0,1)",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [264,0,0,0,0,0,0,0,0,0,0,0]		},
		]
	};
	window.onload = function(){
		var ctx = document.getElementById("canvas").getContext("2d");
		window.myLine = new Chart(ctx).Line(lineChartData, {
			responsive: true
		});
	}
</script>

		</div>

	</div>
</div>

<!----------------------------------------------------
 * Undercore HTML Tempaltes
 ------------------------------------------------- --> <script
	type="text/template" id="tmpl-load-gallery">
	<figure>
		<a href="javascript:;"><img height="56" width="56" src="{{data.url}}"></a>
		<div class="tg-img-hover" data-attachment_id="{{data.attachment_id}}">
			<a href="javascript:;" data-attachment="{{data.attachment_id}}"><i class="fa fa-plus"></i><i class="fa fa-refresh fa-spin"></i></a>
		</div>
		<input type="hidden" value="{{data.attachment_id}}" name="user_gallery[{{data.attachment_id}}][attachment_id]">
		<input type="hidden" value="{{data.url}}" name="user_gallery[{{data.attachment_id}}][url]">
	</figure>
</script> <!--Awards--> <script type="text/template" id="tmpl-load-awards">
	<tbody class="awards_item new-added">
	  <tr>
		<td data-title="Code">Award Title		  <div class="tg-table-hover award-action"> 
			<a href="javascript:;" class="delete-me"><i class="tg-delete fa fa-close"></i></a>
			<a href="javascript:;" class="edit-me"><i class="tg-edit fa fa-pencil"></i></a> 
		   </div>
		</td>
		<td data-title="Company">January 01, 2020</td>
	  </tr>
	  <tr>
		<td class="award-data edit-me-row"colspan="2">
			<div class="tg-education-form tg-haslayout">
				<div class="award-data">
					<div class="col-md-4 col-sm-6 col-xs-12">
						<div class="form-group">
							<input class="form-control" value="" name="awards[{{data}}][name]" type="text" placeholder="Award Name">
						</div>
					</div>
					<div class="col-md-8 col-sm-6 col-xs-12">
						<div class="form-group">
							<input class="form-control award_datepicker" id="award_datepicker" value="" name="awards[{{data}}][date]" type="text" placeholder="Award Date">
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="form-group">
							<textarea class="form-control" name="awards[{{data}}][description]" placeholder="Award Description"></textarea>
						</div>
					</div>
				</div>
			</div>
		</td>
	  </tr>
	</tbody>
</script> <script type="text/template" id="tmpl-append-awards">
	<# if( _.isArray(data) && ! _.isEmpty(data) ) { #>
	<table class="table-striped awards_wrap">
		<thead class="cf">
		  <tr>
			<th>Title</th>
			<th>Year</th>
		  </tr>
		</thead>
		<# _.each( data , function( element, index, attr ) { #>
			
			<tbody class="awards_item new-added">
			  <tr>
				<td data-title="Code">{{element.name}}
				  <div class="tg-table-hover award-action"> 
					<a href="javascript:;" class="delete-me"><i class="tg-delete fa fa-close"></i></a>
					<a href="javascript:;" class="edit-me"><i class="tg-edit fa fa-pencil"></i></a> 
				   </div>
				</td>
				<td data-title="Company">{{element.date_formated}}</td>
			  </tr>
			  <tr>
				<td class="award-data edit-me-row"colspan="2">
					<div class="tg-education-form tg-haslayout">
						<div class="award-data">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="form-group">
									<input class="form-control" value="{{element.name}}" name="awards[{{index}}][name]" type="text" placeholder="Award Name">
								</div>
							</div>
							<div class="col-md-8 col-sm-6 col-xs-12">
								<div class="form-group">
									<input class="form-control award_datepicker" id="award_datepicker" value="{{element.date}}" name="awards[{{index}}][date]" type="text" placeholder="Award Date">
								</div>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="form-group">
									<textarea class="form-control" name="awards[{{index}}][description]" placeholder="Award Description">{{element.description}}</textarea>
								</div>
							</div>
						</div>
					</div>
				</td>
			  </tr>
			</tbody>
			
		<# } ); #>
	<# } #>
</script> <!--Education--> <script type="text/template" id="tmpl-load-educations">
	<tbody class="educations_item">
	  <tr>
		<td data-title="Code">Title here		  <div class="tg-table-hover education-action"> 
			  <a href="javascript:;" class="delete-me"><i class="tg-delete fa fa-close"></i></a> 
			  <a href="javascript:;" class="edit-me"><i class="tg-edit fa fa-pencil"></i></a> 
		  </div>
		</td>
		<td data-title="Company">Institute here</td>
		<td data-title="Price" class="numeric">Jan,2020 - Jan,2021</td>
	  </tr>
	  <tr>
	   <td class="education-data edit-me-row" colspan="3">
		 <div class="education-data-wrap">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control" value="" name="education[{{data}}][title]" type="text" placeholder="Title">
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control" value="" name="education[{{data}}][institute]" type="text" placeholder="Institute">
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control edu_start_date_{{data}}" id="edu_start_date" value="" name="education[{{data}}][start_date]" type="text" placeholder="Start Date">
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control edu_end_date_{{data}}" id="edu_end_date" value="" name="education[{{data}}][end_date]" type="text" placeholder="End Date">
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-group">
					<textarea class="form-control" name="education[{{data}}][description]" placeholder="Education Description"></textarea>
				</div>
			</div>
		  </div>
	    </td>
	  </tr>
	</tbody>
</script> <script type="text/template" id="tmpl-append-educations">
	<# if( _.isArray(data) && ! _.isEmpty(data) ) { #>
		<table class="table-striped educations_wrap" id="table-striped">
		<thead class="cf">
		  <tr>
			<th>Degree / Education Title</th>
			<th>Institute</th>
			<th class="numeric">Year</th>
		  </tr>
		</thead>
		<# _.each( data , function( element, index, attr ) { #>
		<tbody class="educations_item">
		  <tr>
			<td data-title="Code">{{element.title}}
			  <div class="tg-table-hover education-action"> 
				  <a href="javascript:;" class="delete-me"><i class="tg-delete fa fa-close"></i></a> 
				  <a href="javascript:;" class="edit-me"><i class="tg-edit fa fa-pencil"></i></a> 
			  </div>
			</td>
			<td data-title="Company">{{element.institute}}</td>
			<td data-title="Price" class="numeric">{{element.start_date_formated}} - {{element.end_date_formated}}</td>
		  </tr>
		  <tr>
		   <td class="education-data edit-me-row" colspan="3">
			 <div class="education-data-wrap">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control" value="{{element.title}}" name="education[{{index}}][title]" type="text" placeholder="Title">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control" value="{{element.institute}}" name="education[{{index}}][institute]" type="text" placeholder="Institute">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control edu_start_date_{{index}}" id="edu_start_date" value="{{element.start_date}}" name="education[{{index}}][start_date]" type="text" placeholder="Start Date">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control edu_end_date_{{index}}" id="edu_end_date" value="{{element.end_date}}" name="education[{{index}}][end_date]" type="text" placeholder="End Date">
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-group">
						<textarea class="form-control" name="education[{{index}}][description]" placeholder="Education Description">{{element.description}}</textarea>
					</div>
				</div>
			  </div>
			</td>
		  </tr>
		</tbody>
		<# } ); #>
	<# } #>
</script> <!--Experience--> <script type="text/template"
	id="tmpl-load-experiences">
	<tbody class="experiences_item">
	  <tr>
		<td data-title="Code">Title here		  <div class="tg-table-hover experience-action"> 
			  <a href="javascript:;" class="delete-me"><i class="tg-delete fa fa-close"></i></a> 
			  <a href="javascript:;" class="edit-me"><i class="tg-edit fa fa-pencil"></i></a> 
		  </div>
		</td>
		<td data-title="Company">Company/Organization Name</td>
		<td data-title="Price" class="numeric">Jan,2020 - Jan,2021</td>
	  </tr>
	  <tr>
	   <td class="experience-data edit-me-row" colspan="3">
		 <div class="experience-data-wrap">
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control" value="" name="experience[{{data}}][title]" type="text" placeholder="Title">
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control" value="" name="experience[{{data}}][company]" type="text" placeholder="Company/Organization">
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control exp_start_date_{{data}}" id="exp_start_date" value="" name="experience[{{data}}][start_date]" type="text" placeholder="Start Date">
				</div>
			</div>
			<div class="col-md-6 col-sm-6 col-xs-12">
				<div class="form-group">
					<input class="form-control exp_end_date_{{data}}" id="exp_end_date" value="" name="experience[{{data}}][end_date]" type="text" placeholder="End Date">
				</div>
			</div>
			<div class="col-md-12 col-sm-12 col-xs-12">
				<div class="form-group">
					<textarea class="form-control" name="experience[{{data}}][description]" placeholder="Experience Description"></textarea>
				</div>
			</div>
		  </div>
	    </td>
	  </tr>
	</tbody>
</script> <script type="text/template" id="tmpl-append-experiences">
	<# if( _.isArray(data) && ! _.isEmpty(data) ) { #>
		<table class="table-striped experience_wrap" id="table-striped">
		<thead class="cf">
		  <tr>
			<th>Experience Title</th>
			<th>Company/Organization</th>
			<th class="numeric">Year</th>
		  </tr>
		</thead>
		<# _.each( data , function( element, index, attr ) { #>
		<tbody class="experiences_item">
		  <tr>
			<td data-title="Code">{{element.title}}
			  <div class="tg-table-hover experience-action"> 
				  <a href="javascript:;" class="delete-me"><i class="tg-delete fa fa-close"></i></a> 
				  <a href="javascript:;" class="edit-me"><i class="tg-edit fa fa-pencil"></i></a> 
			  </div>
			</td>
			<td data-title="Company">{{element.company}}</td>
			<td data-title="Price" class="numeric">{{element.start_date_formated}} - <# if(! _.isEmpty(element.end_date) ) { #>{{element.end_date_formated}} <# } else { #>Current<# } #></td>
		  </tr>
		  <tr>
		   <td class="experience-data edit-me-row" colspan="3">
			 <div class="experience-data-wrap">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control" value="{{element.title}}" name="experience[{{index}}][title]" type="text" placeholder="Title">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control" value="{{element.company}}" name="experience[{{index}}][company]" type="text" placeholder="Company/Organization">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control edu_start_date_{{index}}" id="exp_start_date" value="{{element.start_date}}" name="experience[{{index}}][start_date]" type="text" placeholder="Start Date">
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="form-group">
						<input class="form-control exp_end_date_{{index}}" id="exp_end_date" value="{{element.end_date}}" name="experience[{{index}}][end_date]" type="text" placeholder="End Date">
					</div>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="form-group">
						<textarea class="form-control" name="experience[{{index}}][description]" placeholder="Experience Description">{{element.description}}</textarea>
					</div>
				</div>
			  </div>
			</td>
		  </tr>
		</tbody>
		<# } ); #>
	<# } #>
</script> </main>
<!------------------------------------------------------------------------------------------------------------------- -->
<!--                                  Doctor Profile Image                                                            -->
<!------------------------------------------------------------------------------------------------------------------- -->

<div id="myModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">

			<div class="modal-body">
				<div class="tg-widget tg-widget-doctor">
					<div class="col-sm-4 col-xs-12 tg-expectwidth">


						<div class="tg-displaytable">

							<div class="tg-displaytablecell">
								<div class="tg-box" style="padding: 0px 0px; margin-top: -50px">
									<c:forEach items="${sessionScope.list}" var="i">
										<img src="doc/${i.registration.login.userprofileImage}"
											id="output"
											style="height: 250px; width: 178px; position: center; margin-top: 30px; margin-left: 30px;" />
									</c:forEach>

									<form action="editImage.html" method="post"
										enctype="multipart/form-data">
										<div class="box">
											<input type="file" onchange="loadFile(event)" name="file"
												id="file-5" class="inputfile inputfile-4"
												data-multiple-caption="{count} files selected" multiple />
											<label for="file-5"><span
												class="glyphicon glyphicon-pencil"></span><span>Change
													Photo</span></label>

										</div>
										<c:forEach items="${sessionScope.list}" var="i">
											<input type="hidden" name="id" id="id"
												value="${i.registration.login.loginId}">
										</c:forEach>
										<div class="box1">

											<button type="submit" style="background-color: #fff;">
												<span class="glyphicon glyphicon-save"
													style="color: #5292e7"></span><span
													style="font-size: 1.25rem; text-overflow: ellipsis; font-weight: 700; color: #5292e7;">Save
													Photo</span>
											</button>
										</div>
									</form>
									<script>
  var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
  };
</script>


								</div>
							</div>

						</div>


					</div>
				</div>
			</div>

		</div>

	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------->
<!--                                  Doctor Profile Image End                                                           -->
<!---------------------------------------------------------------------------------------------------------------------->

<!---------------------------------------------------------------------------------------------------------------------->
<!--                                  Doctor Speciality                                                           -->
<!---------------------------------------------------------------------------------------------------------------------->
<div id="myModal1" class="modal fade" role="dialog">
	<div class="modal-dialog" style="width: 600px;">

		<!-- Modal content-->

		<div class="modal-content">
			<form action="addDoctorSpeciality.html" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Speciality</h4>
				</div>
				<div class="modal-body"
					style="height: 130px; background-color: #5292e7;">

					<div class="container">

						<div class="row">
							<c:set value="${sessionScope.dslist }" var="doctorList"></c:set>
							<c:forEach items="${sessionScope.list}" var="i">
								<input type="hidden" name="doctorid" id="id1"
									value="${i.doctorId}">
							</c:forEach>
							<div class="col-md-6" style="margin-left: 10px;">
								<i class="fa fa-user-md" style="font-size: 90px;"></i>
								<c:if test="${not empty doctorList}">
									<select multiple="multiple" class="chosen-select"
										name="specMenu1">
										<c:forEach items="${doctorList}" var="x">
											<option value="${x.speciality.specialityId}"
												selected="selected">${x.speciality.specialityName}</option>
										</c:forEach>
										<c:forEach items="${sessionScope.speclist }" var="s">
											<%-- <c:if test="${s.specialityId != x.speciality.specialityId }"> --%>
											<option value="${s.specialityId}">${s.specialityName}</option>
										</c:forEach>


									</select>

								</c:if>
								<c:if test="${empty doctorList}">
									<select multiple="multiple" class="chosen-select"
										name="specMenu">

										<c:forEach items="${sessionScope.slist}" var="i">
											<option value="${i.specialityId}">${i.specialityName}</option>
										</c:forEach>
									</select>
								</c:if>


							</div>

						</div>
					</div>

				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-default">Save</button>
				</div>
			</form>

		</div>

	</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------->
<!--                                  Doctor Speciality End                                                          -->
<!---------------------------------------------------------------------------------------------------------------------->

<!---------------------------------------------------------------------------------------------------------------------->
<!--                                  Doctor Hospital                                                        -->
<!---------------------------------------------------------------------------------------------------------------------->

<div id="myModal2" class="modal fade" role="dialog">
	<div class="modal-dialog" style="width: 600px; margin-top: 120px">

		<!-- Modal content-->
		<div class="modal-content">
			<form action="addDoctorHospital.html" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Hospital</h4>

				</div>

				<div class="modal-body"
					style="height: 360px; background-color: #5292e7;">

					<i class="fa fa-hospital-o"
						style="font-size: 120px; margin-left: 25px;"></i>
					<div class="form-group">

						<div class="col-md-12"
							Style="margin-left: 175px; margin-top: -125px;">
							<input type="text" id="hospitalName" name="hospitalName"
								class="form-control1" placeholder="Enter name"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>

					<div class="form-group">

						<div class="col-md-12"
							Style="margin-left: 175px; margin-top: -95px;">
							<input type="text" id="hospitalAddress" name="hospitalAddress"
								class="form-control1" placeholder="Enter Address"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>
					<div class="form-group">

						<div class="col-sm-3"
							style="margin-left: 175px; margin-top: -52px;">
							<select class="form-control" name="countryMenu" id="countryMenu"
								onchange="getState(this.value)" required="required"
								style="width: 160px; height: 30px; margin-top: 10px; border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option>Select Country</option>
								<c:forEach items="${sessionScope.clist}" var="i">
									<c:if test="${i.isActive == 'Yes' }">
										<option value="${i.countryId}">${i.countryName}</option>
									</c:if>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">

						<div class="col-sm-3"
							style="margin-left: 365px; margin-top: -52px;">
							<select class="form-control" name="stateMenu" id="stateMenu"
								required="required" onchange="getCity(this.value)"
								style="width: 160px; height: 30px; margin-top: 10px; border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option>Select State</option>

							</select>

						</div>


					</div>

					<div class="form-group">

						<div class="col-sm-3"
							style="margin-left: 175px; margin-top: -7px;">
							<select class="form-control" name="cityMenu" id="cityMenu"
								required="required"
								style="width: 160px; height: 30px; margin-top: 10px; border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option>Select City</option>

							</select>
						</div>
					</div>
					<div class="form-group">

						<div class="col-sm-3"
							style="margin-left: 365px; margin-top: -37px;">
							<input type="tel" id="hospitalZipCode" name="hospitalZipCode"
								class="form-control1" placeholder="Postal Code"
								required="required"
								style="width: 160px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>
					<div class="form-group">

						<div class="col-md-12"
							Style="margin-left: 175px; margin-top: 8px;">
							<input type="email" id="hospitalEmail" name="hospitalEmail"
								class="form-control1" placeholder="Enter Email"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>
					<div class="form-group">

						<div class="col-md-12"
							style="margin-left: 175px; margin-top: 10px;">
							<input type="tel" id="hospitalPhone" name="hospitalPhone"
								class="form-control1" placeholder="Enter PhoneNo"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>
					</div>
					<div class="form-group">

						<div class="col-md-12"
							style="margin-left: 175px; margin-top: 10px;">
							<input type="text" id="hospitalWebsite" name="hospitalWebsite"
								class="form-control1" placeholder="Enter Website"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
							<c:forEach items="${sessionScope.list}" var="i">
								<input type="hidden" name="doctorid" id="doctorid"
									value="${i.doctorId}">
							</c:forEach>
						</div>

					</div>


				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-default">Save</button>
				</div>
			</form>
		</div>

	</div>

</div>

<script type="text/javascript">
                                        function getState(val){
                                        	
                                        	$.ajax({
                                        		type: "GET",
                                        		url: "getStateUsingAjax.html",
                                        		data: 'countryId='+val,
                                        		success: function(data){
                                        		
                                        		$("#stateMenu").html(data);
                                        		
                                        			
                                        		}
                                        	
                                        	});
                                        	
                                        }

                                        function getCity(val){
                                        	
                                        	$.ajax({
                                        		type: "GET",
                                        		url: "getCityUsingAjax.html",
                                        		data: 'stateId='+val,
                                        		success: function(data){
                                        		
                                        		$("#cityMenu").html(data);
                                        			
                                        			
                                        		}
                                        	});
                                        	
                                        }
                                        </script>

<!---------------------------------------------------------------------------------------------------------------------->
<!--                                  Doctor Hospital  End                                                     -->
<!---------------------------------------------------------------------------------------------------------------------->


<jsp:include page="footer.jsp"></jsp:include>