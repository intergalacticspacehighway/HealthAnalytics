
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<main id="main" class="tg-page-wrapper tg-haslayout">
<div class="container">
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 ">
			<aside id="tg-sidebar" class="dashboard-sidebar">
				<div class="tg-widget tg-widget-doctor">
					<figure class="tg-docprofile-img">
						<figcaption>
							<h4>Rodrigo Londoño</h4>
							<span>Salud y Belleza</span>
						</figcaption>
						<span class="user-verified"> <svg id="Icon"
								xmlns="http://www.w3.org/2000/svg" width="74.875" height="21"
								viewBox="0 0 74.875 21"> <defs>
							<style>
.cls-1 {
	fill: rgb(82, 146, 231);
}

.cls-2 {
	font-size: 16px;
	text-anchor: middle;
	font-family: FontAwesome;
	text-transform: uppercase
}

.cls-2, .cls-3 {
	fill: #fff
}

.cls-3 {
	font-size: 14.437px;
	font-family: Montserrat
}
</style></defs> 
							<rect id="BG" class="cls-1" width="74.875" height="21" rx="3"
									ry="3" /> <text id="_" data-name="" class="cls-2"
									transform="translate(14.829 14.99) scale(0.737 0.762)"></text> 
							<text id="Verified" class="cls-3"
									transform="translate(22.787 15.191) scale(0.737 0.762)">Verified</text> </svg>

						</span>
						<a><img
							src="https://themographics.com/wordpress/docdirect/wp-content/themes/docdirect/images/user300x300.jpg"
							alt="Avatar" /></a>
					</figure>
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
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=bookings&#038;identity=340">Booking
								Listings</a></li>
						<li class=""><a
							href="https://themographics.com/wordpress/docdirect/dashboard/?ref=booking-schedules&#038;identity=340"></i>Booking
								Schedules</a></li>
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
										<h3>welcome,  <c:out value="${username }"/></h3>
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
											<strong class="logo">
											<a style="color:#fff"><Strong>Health </Strong><span style="color: rgb(82, 146, 231)">Analytics</span></a>
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
									<address>23 Eccles Old Road, New Salford Road, Uk, M6
											7AF</address></li>
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
<footer id="footer" class="tg-haslayout">
	<div class="tg-threecolumn">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="tg-footercol">
						<div id="address_widget-2" class="address-column tg-widget">
							<strong class="logo"> <img
								src="http://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/logo2.png"
								alt="logo">
							</strong>
							<div class="tg-description">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut laboret dolore magna
									aliqua.</p>
							</div>
							<ul class="tg-info">
								<li><i class="fa fa-home"></i>
									<address>123 Eccles Old Road, New Salford Road, East
										London, Uk, M6 7AF</address></li>
								<li><i class="fa fa-phone"></i> <em><a
										href="tel:+4412356788-9">+4412356788-9</a></em></li>
								<li><i class="fa fa-envelope"></i> <em><a
										href="info@domain.com">info@domain.com</a></em></li>

							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="tg-footercol">
						<div id="tg_featured_doctor-2"
							class="tg-featured-doctore tg-widget">
							<div class="tg-heading-border tg-small">
								<h4>Featured Users</h4>
							</div>
							<ul>
								<li>
									<figure class="tg-imgdoc">
										<img
											src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-07-1-150x150.jpg"
											alt="User">
										<div class="tg-img-hover">
											<a
												href="https://themographics.com/wordpress/docdirect/doctor/celia/"><i
												class="icon-zoom"></i></a>
										</div>
									</figure>
									<div class="tg-docinfo">
										<span class="tg-docname"><a
											href="https://themographics.com/wordpress/docdirect/doctor/celia/">Dr
												Celia</a></span> <span class="tg-stars"> <em>Ranking:</em> <span
											class="tg-stars star-rating"> <span style="width: 60%"></span>
										</span>
										</span>
										<div class="tg-designation">
											<p>
												<a href="javascript:;">Doctor</a>
											</p>
										</div>
									</div>
								</li>
								<li>
									<figure class="tg-imgdoc">
										<img
											src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-05-1-150x150.jpg"
											alt="User">
										<div class="tg-img-hover">
											<a
												href="https://themographics.com/wordpress/docdirect/doctor/delia/"><i
												class="icon-zoom"></i></a>
										</div>
									</figure>
									<div class="tg-docinfo">
										<span class="tg-docname"><a
											href="https://themographics.com/wordpress/docdirect/doctor/delia/">Dr
												Delia</a></span> <span class="tg-stars"> <em>Ranking:</em> <span
											class="tg-stars star-rating"> <span style="width: 60%"></span>
										</span>
										</span>
										<div class="tg-designation">
											<p>
												<a href="javascript:;">Doctor</a>
											</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="tg-footercol">
						<div id="nav_menu-2" class="widget_nav_menu tg-widget">
							<div class="tg-heading-border tg-small">
								<h4>USEFUL LINKS</h4>
							</div>
							<div class="menu-userfull-links-container">
								<ul id="menu-userfull-links" class="menu">
									<li id="menu-item-144"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-144"><a
										href="https://themographics.com/wordpress/docdirect/packages/">Packages</a></li>
									<li id="menu-item-214"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-214"><a
										href="https://themographics.com/wordpress/docdirect/blog-list/">Latest
											Blogs</a></li>
									<li id="menu-item-143"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-143"><a
										href="https://themographics.com/wordpress/docdirect/contact-us/">Contact
											Us</a></li>
									<li id="menu-item-450"
										class="menu-item menu-item-type-post_type menu-item-object-post menu-item-450"><a
										href="https://themographics.com/wordpress/docdirect/yoga-centers/">Yoga
											Centers</a></li>
									<li id="menu-item-451"
										class="menu-item menu-item-type-post_type menu-item-object-post menu-item-451"><a
										href="https://themographics.com/wordpress/docdirect/family-clinic/">Family
											clinic</a></li>
									<li id="menu-item-628"
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-628"><a
										href="https://themographics.com/wordpress/docdirect/home-3/">Home
											3</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tg-footerbar tg-haslayout">
		<div class="tg-copyrights">
			<p>2015 All Rights Reserved &copy; DocDirect</p>
		</div>
	</div>
</footer>
<div class="modal fade tg-user-modal" tabindex="-1" role="dialog">
	<div class="tg-modal-content">
		<ul class="tg-modaltabs-nav" role="tablist">
			<li role="presentation" class="active"><a
				href="#tg-signin-formarea" aria-controls="tg-signin-formarea"
				role="tab" data-toggle="tab">Sign In</a></li>
			<li role="presentation"><a href="#tg-signup-formarea"
				aria-controls="tg-signup-formarea" role="tab" data-toggle="tab">Sign
					Up</a></li>
		</ul>
		<div class="tab-content tg-haslayout">
			<div role="tabpanel" class="tab-pane tg-haslayout active"
				id="tg-signin-formarea"></div>
			<div role="tabpanel" class="tab-pane tg-haslayout"
				id="tg-signup-formarea"></div>
		</div>
	</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>