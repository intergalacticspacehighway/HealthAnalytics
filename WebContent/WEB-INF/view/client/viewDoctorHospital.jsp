<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<style>
box-radius: 10%;
</style>

<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 150px; width:75%;margin-left: 85px;">
			<c:forEach items="${sessionScope.hospitallist}" var="x">
			<div class="tg-heading-border tg-small">
				<h2>${x.hospital.hospitalName}</h2>
			</div>
		
			<form class="form-refinesearch tg-haslayout contact_form">
			
				<fieldset>
				 
					<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Address:</b> &nbsp; ${x.hospital.hospitalAddress},${x.hospital.city.cityName},${x.hospital.state.stateName}-${x.hospital.hospitalZipCode},${x.hospital.country.countryName}.</p>
                     </div>
                   
                     <div  class=" row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Email:</b> &nbsp; ${x.hospital.hospitalEmail}</p>
                   </div>
                    <div class="row form-group"> 
					
                      <p style="color:black;margin-left: 20px;"><b>Phone No:</b> &nbsp; ${x.hospital.hospitalPhone}</p>
                      </div>
                      
                      	<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Website:</b> &nbsp; ${x.hospital.hospitalWebsiteUrl}</p>
                     </div>
					
					<div class="col-sm-12">
						<a href="javascript:;" data-toggle="modal"
							data-target="#my"><button  style="width: 30%;height:50px;z-index: 0" class="tg-btn contact_now">Edit</button></a>
						<a href="deleteDoctorHospital.html?hospitalid=${x.hospital.hospitalId}"><button type="button" style="width: 30%;height:50px;margin-left: 160px;z-index: 0" class="tg-btn contact_now">Delete</button></a>
						
						</div>
				
				</fieldset>
			</form>
			</c:forEach>
		</div>
		</div>
	</div>

<!---------------------------------------------------------------------------------------------------------------------------------------------- ---- -->
<!---------------------------------------------------------- EditDoctorHospital ------------------------------------------------------------------------>
<!----------------------------------------------------------------------------------------------------------------------------------------------- --- -->
<c:forEach items="${sessionScope.hospitallist}" var="x">
<div id="my" class="modal fade" role="dialog">
	<div class="modal-dialog" style="width: 600px; margin-top: 120px">

		<!-- Modal content-->
		<div class="modal-content">
			<form action="editDoctorHospital.html" method="post">
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
							<input type="text" value="${x.hospital.hospitalName}" id="hospitalName" name="hospitalName"
								class="form-control1" placeholder="Enter name"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>

					<div class="form-group">

						<div class="col-md-12"
							Style="margin-left: 175px; margin-top: -95px;">
							<input type="text" value="${x.hospital.hospitalAddress}" id="hospitalAddress" name="hospitalAddress"
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
								<option value="${x.hospital.country.countryId}">${x.hospital.country.countryName}</option>
										<c:forEach items="${sessionScope.clist}" var="i">
										<option value="${i.countryId}">${i.countryName}</option>
									
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
								
							
								<option value="${x.hospital.state.stateId}">${x.hospital.state.stateName}</option>
								
								


							</select>

						</div>


					</div>

					<div class="form-group">

						<div class="col-sm-3"
							style="margin-left: 175px; margin-top: -7px;">
							<select class="form-control" name="cityMenu" id="cityMenu"
								required="required"
								style="width: 160px; height: 30px; margin-top: 10px; border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option value="${x.hospital.city.cityId}">${x.hospital.city.cityName}</option>

							</select>
						</div>
					</div>
					<div class="form-group">

						<div class="col-sm-3"
							style="margin-left: 365px; margin-top: -37px;">
							<input type="tel" id="hospitalZipCode" name="hospitalZipCode" value="${x.hospital.hospitalZipCode}"
								class="form-control1" placeholder="Postal Code"
								required="required"
								style="width: 160px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>
					<div class="form-group">

						<div class="col-md-12"
							Style="margin-left: 175px; margin-top: 8px;">
							<input type="email" id="hospitalEmail" name="hospitalEmail" value="${x.hospital.hospitalEmail}"
								class="form-control1" placeholder="Enter Email"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>

					</div>
					<div class="form-group">

						<div class="col-md-12"
							style="margin-left: 175px; margin-top: 10px;">
							<input type="tel" id="hospitalPhone" name="hospitalPhone" value="${x.hospital.hospitalPhone}"
								class="form-control1" placeholder="Enter PhoneNo"
								required="required"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
						</div>
					</div>
					<div class="form-group">

						<div class="col-md-12"
							style="margin-left: 175px; margin-top: 10px;">
							<input type="text" id="hospitalWebsite" name="hospitalWebsite" value="${x.hospital.hospitalWebsiteUrl}"
								class="form-control1" placeholder="Enter Website"
								style="width: 350px; height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
							
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
</c:forEach>
<!---------------------------------------------------------------------------------------------------------------------------------------------- ---- -->
<!---------------------------------------------------------- EditDoctorHospital End------------------------------------------------------------------------>
<!----------------------------------------------------------------------------------------------------------------------------------------------- --- -->

<script type='text/javascript'
	src='resources/client/js/bootstrap.min.js?ver=3.5'></script>