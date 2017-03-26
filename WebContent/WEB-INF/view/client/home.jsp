
<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<main id="main" class="tg-page-wrapper tg-haslayout">
<div class="container">
	<div class="row">
		<div class="main-page-wrapper tg-haslayout">
			<div class="fw-page-builder-content">
				<section
					class="tg-main-section haslayout   stretch_section_contents_corner stretch_section stretch_data"
					style="margin-top: -100px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-dir-search v1">
								<div id="tg-homebanner"
									class="tg-homebanner tg-overflowhidden tg-haslayout">
									<div id="map_canvas" class="tg-location-map tg-haslayout"></div>
									<div class="map-controls">
										<span id="doc-mapplus"><i class="fa fa-plus"></i></span> <span
											id="doc-mapminus"><i class="fa fa-minus"></i></span> <span
											id="doc-lock"><i class="fa fa-lock"></i></span>
									</div>
									<div id="gmap-noresult"></div>
									<div class="tg-banner-content">
										<div class="tg-displaytable">
											<div class="tg-displaytablecell">
												<div class="container" style="margin-top: -10%;">
													<form id="searchForm" action="search.html?q=" method="post">
														<div class="col-md-3 col-sm-5 col-xs-3 tg-verticalmiddle">
															<div class="row">
																<ul id="tg-sortable" class="tg-tabs-nav tg-sortable"
																	role="tablist">
																	<li data-dir_name="Doctor" data-id="127" id="doctor"
																		class="active current-directory"><input
																		type="radio" checked name="directory_type" id="127"
																		value="127" /> <label for="127"> <i
																			class="fa fa-user-md"></i> <span class="tg-category">
																				<span class="tg-category-name">Doctor</span>

																		</span>
																	</label></li>
																	<li data-dir_name="hospital" data-id="126"
																		id="hospital" class=" current-directory"><input
																		type="radio" name="directory_type" id="126"
																		value="126" /> <label for="126"> <i
																			class=" fa fa-hospital-o"></i> <span
																			class="tg-category"> <span
																				class="tg-category-name">Hospital</span>

																		</span>
																	</label></li>
																	<li data-dir_name="clinic" data-id="125" id="clinic"
																		class=" current-directory"><input type="radio"
																		name="directory_type" id="125" value="125" /> <label
																		for="125"> <i class="fa fa-stethoscope"></i> <span
																			class="tg-category"> <span
																				class="tg-category-name">Clinic</span>

																		</span>
																	</label></li>
																	<li data-dir_name="Pharmacy" data-id="123"
																		id="symptomChecker" class=" current-directory"><input
																		type="radio" name="directory_type" id="123"
																		value="123" /> <label for="123"> <i
																			class=" fa fa-heartbeat"></i> <span
																			class="tg-category"> <span
																				class="tg-category-name">Symptom Checker</span>

																		</span>
																	</label></li>


																</ul>

															</div>
														</div>
														<div class="col-md-9 col-sm-7 col-xs-9 tg-verticalmiddle">
															<div class="row">
																<fieldset>
																	<div class="tab-content tg-tab-content">
																		<div role="tabpanel" class="tab-pane active"
																			id="nephrologist">
																			<div class="row">

																				<div
																					class="col-md-6 col-sm-12 col-xs-12 tg-verticalmiddle">
																					<div class="form-group doctorSpeciality">
																						<span class="select"> <select
																							class="group subcats" name="speciality">

																								<option id="commonOption" value="all">Doctor&nbsp;Specialities</option>
																								<c:forEach items="${sessionScope.specialitylist}" var = "i">
																								<option value="${i.specialityId}"> ${i.specialityName}</option>
																								</c:forEach>
																						</select>
																						</span>
																					</div>

																					<div class="form-group doctorSpeciality">
																						<span class="select"> <select
																							class="group subcats" name="stateMenu" onchange="getCity1(this.value)">

																								<option id="commonOption" value="all">Select&nbsp;State</option>
																								<c:forEach items="${sessionScope.statelist}" var = "i">
																								<option value="${i.stateId}"> ${i.stateName}</option>
																								</c:forEach>
																						</select>
																						</span>
																					</div>
																					<div class="form-group doctorSpeciality">
																						<span class="select"> <select
																							class="group subcats"  name="cityMenu1" id="cityMenu1">

																								<option id="commonOption" value="all">Select&nbsp;City</option>
																								
																						</select>
																						</span>
																					</div>
																					
																					<div class="form-group">
																						<button type="submit" class="btn btn-primary" style="margin-left: 64%;width: 30%;"
																							>Search</button>
																					</div>

																				</div>

																				<div
																					class="col-md-6 col-sm-12 col-xs-12 tg-verticalmiddle">
																					<h1 style="font-size: 36px;margin-top: -10%;"><b>
																						FIND YOUR </b><span><br><b>NEAREST</b></span> <br>
																						<em class="current_directory"></em>
																					</h1>
																				</div>
																			</div>
																		</div>
																	</div>
																</fieldset>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
									<div class="show-search">
										<i class="fa fa-search"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
					<script>
						$("#searchForm").attr(
								"action",
								"search.html?q="
										+ $(".active").attr("data-dir_name"));
						$(".current-directory").on(
								"click",
								function() {
									var attrValue = $(".active").attr(
											"data-dir_name");
									$("#searchForm").attr("action",
											"search.html?q=" + attrValue);
									$("#commonOption").text(
											attrValue + " Speciality");
								});
					</script>
				</section>
				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default"
					style="padding-top: 0px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-services">
								<div class="col-sm-10 col-sm-offset-1 col-xs-12">
									<div class="tg-theme-heading">
										<h2>WHAT TO EXPECT</h2>
										<span class="tg-roundbox"></span>
										<div class="tg-description">
											<p>In just three simple steps, DocDirect will help you
												find your nearest healthcare setting without having to
												signup. We aim to facilitate you in finding your right
												doctor with just three clicks without having to ask around
												or wander to find your nearest healthcare facility.</p>
										</div>
									</div>
								</div>

								<div class="tg-search-categories">
									<div class="row">
										<div class="col-sm-4 col-xs-12 tg-expectwidth">
											<div class="tg-search-category">
												<div class="tg-displaytable">

													<div class="tg-displaytablecell">
														<div class="tg-box">
															<a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=doctor"><h3>find
																	your doctor</h3></a> <i class="icon-stethoscope"></i> <a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=doctor"><span
																class="tg-show"><em class="icon-add"></em></span></a>
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-4 col-xs-12 tg-expectwidth">
											<div class="tg-search-category">
												<div class="tg-displaytable">

													<div class="tg-displaytablecell">
														<div class="tg-box">
															<a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=hospital"><h3>NEAREST
																	HOSPITAL</h3></a> <i class="icon-healthcare"></i> <a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=hospital"><span
																class="tg-show"><em class="icon-add"></em></span></a>
														</div>
													</div>

												</div>
											</div>
										</div>
										<div class="col-sm-4 col-xs-12 tg-expectwidth">
											<div class="tg-search-category">
												<div class="tg-displaytable">

													<div class="tg-displaytablecell">
														<div class="tg-box">
															<a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=pharmacy"><h3>NEAREST
																	PHARMACY</h3></a> <i class="icon-capsules"></i> <a
																href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=pharmacy"><span
																class="tg-show"><em class="icon-add"></em></span></a>
														</div>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</section>

				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">

							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="tg-theme-heading">
									<h2>Top Categories</h2>
									<span class="tg-roundbox"></span>
									<div class="tg-description">
										<p>In just three simple steps, DocDirect will help you
											find your nearest healthcare setting without having to
											signup. We aim to facilitate you in finding your right doctor
											with just three clicks without having to ask around or wander
											to find your nearest healthcare facility.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-12 builder-column ">

							<div class="sc-dir-types catagories-types">
								<div class="tg-findbycategorys">
									<div class="specialities-list">
										<ul>
											<li id="dir-127">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=doctor">
															<label> <i class="icon-stethoscope"></i> Doctor<span
																class="count">13</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-126">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=hospital">
															<label> <i
																class="icon-Hospitalmedicalsignalofacrossinacircle"></i>
																hospital<span class="count">7</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-125">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=clinic">
															<label> <i
																class="icon-Clinichistorymedicalpaperonclipboard"></i>
																clinic<span class="count">9</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-123">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=pharmacy">
															<label> <i class="icon-Pills"></i> Pharmacy<span
																class="count">8</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-122">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=blood-bank">
															<label> <i class="icon-BloodDonation"></i> Blood
																Bank<span class="count">9</span>
														</label>
														</a>
													</div>
												</div>
											</li>
											<li id="dir-121">
												<div class="tg-checkbox user-selection">
													<div class="tg-packages">
														<a
															href="https://themographics.com/wordpress/docdirect/dir-search/?directory_type=fitness-center">
															<label> <i class="icon-hairs"></i> Fitness Center<span
																class="count">9</span>
														</label>
														</a>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section
					class="tg-main-section haslayout tg-areuadoctor stretch_section"
					style="padding-bottom: 0px; background-repeat: no-repeat; background-position: 0% 100%"
					data-speed="0.5" data-bleed="0" data-appear-top-offset="600"
					data-parallax="scroll" data-position="center 0"
					data-image-src="http://themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/bgparallax-01.jpg">
					<div class="builder-items">
						<div
							class="col-xs-12 col-md-6 builder-column col-sm-12 col-lg-6  pull-right">

							<div class="sc-about-us tg-healthcareonthego">
								<div class="tg-contentbox tg-haslayout">
									<div class="tg-heading-border">
										<h2>ARE YOU A DOCTOR?</h2>

										<h3>REGISTER NOW AND REACH THOUSANDS OF PATIENTS</h3>
									</div>
									<div class="tg-description">
										<p>We know how much it takes to become a qualified doctor
											so we have taken away all your hassle to look out for your
											patients once you have qualified. DocDirect will give you an
											easy reach to all the patients, all you need is to sign up!</p>
									</div>

									<div class="tg-btns">
										<a class="tg-btn" href="#">signup now</a>
									</div>

								</div>
							</div>
						</div>
						<div
							class="col-xs-12 col-md-6 builder-column col-sm-12 col-lg-6  pull-left">

							<figure class="frame-img">
								<!-- <img
									src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/img-01.png"
									alt="Image Frame" /> -->
							</figure>
						</div>
					</div>
				</section>
				<div class="section-current-width"></div>
				<!-- <section class="tg-main-section haslayout  default"
					style="padding-bottom: 0px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-6 builder-column ">

							<div class="sc-about-us tg-healthcareonthego">
								<div class="tg-contentbox tg-haslayout">
									<div class="tg-heading-border">
										<h2>HEALTHCARE ON THE GO</h2>
									</div>
									<div class="tg-description">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit, sed diam nonummy nibh euismod tincidunt ut laoreet
											dolore magna aliquam erat volutpat wisi enim ad minim veniam
											quis nostrud.</p>
									</div>

									<ul>
										<li>Claritas est etiam processus dynamicus, qui sequitur
											mutationem consuetudium lectorum.</li>
										<li>Mirum est notare quam littera gothica, quam nunc
											putamus parum claram, anteposuerit litterarum.</li>
										<li>Nam liber tempor cum soluta nobis eleifend option
											congue nihil imperdiet doming.</li>

									</ul>
									<div class="tg-btns">
										<a class="tg-btn" href="#">buy now</a> <a class="tg-btn"
											href="#">screenshots</a>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 builder-column col-lg-6  pull-left">

							<figure class="frame-img">
								<img
									src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/img-02.png"
									alt="Image Frame" />
							</figure>
						</div>
					</div>
				</section> -->
				<section class="tg-main-section haslayout  stretch_section"
					data-speed="0.5" data-bleed="0" data-appear-top-offset="600"
					data-parallax="scroll" data-position="center 0"
					data-image-src="http://themographics.com/wordpress/docdirect/wp-content/uploads/2016/03/bgparallax-01.jpg">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-review">
								<div class="tg-patientfeedbacks tg-haslayout">
									<div class="col-sm-10 col-sm-offset-1 col-xs-12">
										<div class="tg-theme-heading">
											<h2>PATIENT FEEDBACK</h2>
											<span class="tg-roundbox"></span>

											<div class="tg-description">
												<p>We know how much it takes to become a qualified
													doctor so we have taken away all your hassle to look out
													for your patients once you have qualified. DocDirect will
													give you an easy reach to all the patients, all you need is
													to sign up!</p>
											</div>

										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-6 tg-feedbackwidht">
										<div class="tg-patientfeedback">
											<figure class="tg-patient-pic">
												<a
													href="https://themographics.com/wordpress/docdirect/user/steve/"><img
													src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-01-1-150x150.jpg"
													alt="Reviewer"></a>
											</figure>
											<div class="tg-patient-message">
												<span class="tg-patient-name"><a
													href="https://themographics.com/wordpress/docdirect/user/steve/">Dr
														Steve</a></span> <span class="tg-doctor-name">For <a
													href="https://themographics.com/wordpress/docdirect/user/professional/">Demo
														Professional</a></span>
												<div class="tg-stars star-rating">
													<span style="width: 80%"></span>
												</div>
												<div class="tg-description">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua...</p>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-6 col-xs-6 tg-feedbackwidht">
										<div class="tg-patientfeedback">
											<figure class="tg-patient-pic">
												<a
													href="https://themographics.com/wordpress/docdirect/user/steve/"><img
													src="https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/04/img-01-1-150x150.jpg"
													alt="Reviewer"></a>
											</figure>
											<div class="tg-patient-message">
												<span class="tg-patient-name"><a
													href="https://themographics.com/wordpress/docdirect/user/steve/">Dr
														Steve</a></span> <span class="tg-doctor-name">For <a
													href="https://themographics.com/wordpress/docdirect/user/carol/">Dr.Carol</a></span>
												<div class="tg-stars star-rating">
													<span style="width: 100%"></span>
												</div>
												<div class="tg-description">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit, sed do eiusmod tempor incididunt ut labore et dolore
														magna aliqua...</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">

							<div class="col-sm-10 col-sm-offset-1 col-xs-12">
								<div class="tg-theme-heading">
									<h2>find healthcare by</h2>
									<span class="tg-roundbox"></span>
									<div class="tg-description">
										<p>In just three simple steps, DocDirect will help you
											find your nearest healthcare setting without having to
											signup. We aim to facilitate you in finding your right doctor
											with just three clicks without having to ask around or wander
											to find your nearest healthcare facility.</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 builder-column ">
							<div class="sc-dir-search">
								<div class="tg-findbycategory">
									<div class="tg-box">
										<div class="tg-heading-border tg-small">
											<i class="icon-map"></i>
											<h3>Location</h3>
										</div>
										<ul>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=aberdeen">Aberdeen</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=aldershot">Aldershot</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=altrincham">Altrincham</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=aylesbury">Aylesbury</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bamber">Bamber</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bangor">Bangor</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=batley">Batley</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bebingto">Bebingto</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bedford">Bedford</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=birmingham">Birmingham</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=blackpool">Blackpool</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=brentwood">Brentwood</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=bristol">Bristol</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=cardiff">Cardiff</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=carlisle">Carlisle</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=crawley">Crawley</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=darlington">Darlington</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=eastleigh">Eastleigh</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=edinburg">Edinburg</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=esher">Esher</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=glasgow-sco">Glasgow
													SCO</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=guildford">Guildford</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=halesowen">Halesowen</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=halifax">Halifax</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=hamilton">Hamilton</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?location=leeds">Leeds</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-12 col-md-6 builder-column ">
							<div class="sc-dir-search sc-specialities">
								<div class="tg-findbycategory">
									<div class="tg-box">
										<div class="tg-heading-border tg-small">
											<i class="fa fa-medkit"></i>
											<h3>Speciality</h3>
										</div>
										<ul>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=aerobic-centers">Aerobic
													Centers</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=associazione-volontari-italiani-sangue">Associazione
													Volontari</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=athletic-clubs">Athletic
													Clubs</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=blood-services">Blood
													Services</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=blood-services-center-for-biologics-evaluation-and-research">Blood
													Services Center</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cancer-hospital">Cancer
													Hospital</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cardiologist">Cardiologist</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cardiology-clinic">Cardiology
													clinic</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=children-clinic">Children
													clinic</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=children-hospital">Children
													Hospital</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=clinical-pharmacy">Clinical
													pharmacy</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=colorectal-surgeon">Colorectal
													surgeon</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=community-blood-services">Community
													Blood Services</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=community-pharmacy">Community
													pharmacy</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=compliance-medicine">Compliance
													(medicine)</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=cord-blood-registry">Cord
													Blood Registry</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=country-clubs">Country
													Clubs</a></li>
											<li><a
												href="https://themographics.com/wordpress/docdirect/dir-search/?speciality=dance-centers">Dance
													Centers</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- <section class="tg-main-section haslayout  stretch_section"
					style="background-image: url(https://themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/bgparallax-03.jpg); padding-top: 50px; padding-bottom: 50px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;">
					<div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="tg-buynowbox">
								<h3 style="color: #5d5955">ONE OF THE VERY FEW USER BASE
									DIRECTORY THEMES AVAILABLE.</h3>
								<a class="tg-btn" style="color: #5d5955" href="#">Read more</a>
							</div>
						</div>
					</div>
				</section>
				<div class="section-current-width"></div>
				<section class="tg-main-section haslayout  default"
					style="padding-bottom: 0px; background-repeat: no-repeat; background-position: 0% 100%; background-size: cover;"> -->
				<!-- <div class="builder-items">
						<div class="col-xs-12 col-md-12 builder-column ">
							<div class="sc-teams-grid">
								<div class="tg-team-members">
									<div class="col-sm-10 col-sm-offset-1 col-xs-12">
										<div class="tg-section-head">
											<div class="tg-theme-heading">
												<h2>TEAM BEHIND HEALTHANALITICS</h2>
												<span class="tg-roundbox"></span>
											</div>
											<div class="tg-description">
												<p>In just three simple steps, HealthAnalytics will help you
													find your nearest healthcare setting without having to
													signup. We aim to facilitate you in finding your right
													doctor with just three clicks without having to ask around
													or wander to find your nearest healthcare facility.</p>
											</div>
										</div>
									</div>
									<div class="tg-teams-member">
										<div class="col-sm-4">
											<div class="tg-member">
												<figure>
													<img
														src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/img-01.jpg"
														alt="team">
													<figcaption class="tg-share-icons">
														<ul class="tg-socialicon">
															<li class="tg-facebook"><a
																style="background: #3b5998" href="#"><i
																	class="fa fa-facebook"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #55acee" href="#"><i
																	class="fa fa-twitter"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #007bb5" href="#"><i
																	class="fa fa-linkedin"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #cb2027" href="#"><i
																	class="fa fa-google-plus"></i></a></li>
														</ul>
													</figcaption>
												</figure>
												<div class="tg-contentbox">
													<h2>
														DAWSON DAWYNE<span>CEO &amp; FOUNDER</span>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="tg-member">
												<figure>
													<img
														src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/img-02.jpg"
														alt="team">
													<figcaption class="tg-share-icons">
														<ul class="tg-socialicon">
															<li class="tg-facebook"><a
																style="background: #3b5998" href="#"><i
																	class="fa fa-facebook"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #55acee" href="#"><i
																	class="fa fa-twitter"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #007bb5" href="#"><i
																	class="fa fa-linkedin"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #cb2027" href="#"><i
																	class="fa fa-google-plus"></i></a></li>
														</ul>
													</figcaption>
												</figure>
												<div class="tg-contentbox">
													<h2>
														TIFANY RENY<span>FOUNDER</span>
													</h2>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="tg-member">
												<figure>
													<img
														src="//themographics.com/wordpress/docdirect/wp-content/uploads/2016/08/img-03-1.jpg"
														alt="team">
													<figcaption class="tg-share-icons">
														<ul class="tg-socialicon">
															<li class="tg-facebook"><a
																style="background: #3b5998" href="#"><i
																	class="fa fa-facebook"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #55acee" href="#"><i
																	class="fa fa-twitter"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #007bb5" href="#"><i
																	class="fa fa-linkedin"></i></a></li>
															<li class="tg-facebook"><a
																style="background: #cb2027" href="#"><i
																	class="fa fa-google-plus"></i></a></li>
														</ul>the
														
													</figcaption>
												</figure>
												<div class="tg-contentbox">
													<h2>
														HECTOR ALLIE<span>CFO</span>
													</h2>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> -->
			</div>
		</div>
	</div>
</div>
</main>
<script type="text/javascript">
																					function getCity1(val){
											                                        	
											                                        	$.ajax({
											                                        		type: "GET",
											                                        		url: "getCityUsingAjax.html",
											                                        		data: 'stateId='+val,
											                                        		success: function(data){
											                                        		
											                                        		$("#cityMenu1").html(data);
											                                        			
											                                        			
											                                        		}
											                                        	});
											                                        
											                                        }
																					</script>

<jsp:include page="footer.jsp"></jsp:include>
