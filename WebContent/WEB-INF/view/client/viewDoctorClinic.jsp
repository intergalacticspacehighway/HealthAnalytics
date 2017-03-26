<jsp:include page="header.jsp"></jsp:include>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


			<div class="tg-dashboard tg-haslayout"><br><br><br><br><br><br><br>
<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 tg-expectwidth col-md-offset-4">
						<c:forEach items="${sessionScope.clinicList}" var="x">
						<div class="row">
							<div class="tg-support">
								<div class="tg-heading-border tg-small">
									<h3>${x.clinic.clinicName}</h3>
								</div>
								<ul class="tg-doccontactinfo">
									<li><i class="fa fa-map-marker" style="color:black;"></i>
										<address> ${x.clinic.clinicAddress},${x.clinic.city.cityName},${x.clinic.state.stateName}-${x.clinic.clinicPostalCode},${x.clinic.country.countryName}.</address></li>
									<li><i class="fa fa-phone" style="color:black;"></i><a
										href="tel:+44 235 8568432">  ${x.clinic.clinicPhoneNo}</a></li>
									<li><i class="fa fa-envelope-o" style="color:black;"></i><a
										href="mailto:info@docdirect.com?Subject=Hello%20again"
										target="_top"> ${x.clinic.clinicEmailId}</a></li>
									<li><i class="fa fa-link" style="color:black;"></i><a href=""><span>${x.clinic.clinicWebsite}</span></a></li>
								</ul>
							<div class="col-sm-12">
							<a href="javascript:;" data-toggle="modal"
							data-target="#my"><button type="submit" style="width: 100%;height:45px;" class="btn btn-primary">Edit</button><br></a>
						
						
						</div>
						<div class="col-sm-12">
						<button type="submit" style="width: 100%;height:45px;margin-top: 5%" class="btn btn-primary">Delete</button>
						</div>
						</div>	
						</div>
					</c:forEach>
					</div>
</div>


