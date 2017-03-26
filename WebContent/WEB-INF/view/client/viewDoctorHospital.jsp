<jsp:include page="header.jsp"></jsp:include>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


			<div class="tg-dashboard tg-haslayout"><br><br><br><br><br><br><br>
<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 tg-expectwidth col-md-offset-4">
						<c:forEach items="${sessionScope.hospitallist}" var="x">
						<div class="row">
							<div class="tg-support">
								<div class="tg-heading-border tg-small">
									<h3>${x.hospital.hospitalName}</h3>
								</div>
								<ul class="tg-doccontactinfo">
									<li><i class="fa fa-map-marker" style="color:black;"></i>
										<address> ${x.hospital.hospitalAddress},${x.hospital.city.cityName},${x.hospital.state.stateName}-${x.hospital.hospitalZipCode},${x.hospital.country.countryName}.</address></li>
									<li><i class="fa fa-phone" style="color:black;"></i><a
										href="tel:+44 235 8568432">${x.hospital.hospitalPhone}</a></li>
									<li><i class="fa fa-envelope-o" style="color:black;"></i><a
										href="mailto:info@docdirect.com?Subject=Hello%20again"
										target="_top">${x.hospital.hospitalEmail}</a></li>
									<li><i class="fa fa-link" style="color:black;"></i><a href=""><span>${x.hospital.hospitalWebsiteUrl}</span></a></li>
								</ul>
								<div class="col-sm-12"><br><br>
							<a href="javascript:;" data-toggle="modal"
							data-target="#my"><button type="submit" style="width: 100%;height:45px;" class="btn btn-primary">Edit</button></a>
						
						
						</div>
						<div class="col-sm-12">
						<a href="deleteDoctorHospital.html?hospitalid=${x.hospital.hospitalId}"><button type="submit" style="width: 100%;height:45px;margin-top: 5%" class="btn btn-primary">Delete</button></a>
						</div>
							
						</div>
					</c:forEach>
					</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------- ---- -->
<!---------------------------------------------------------- EditDoctorHospital ------------------------------------------------------------------------>
<!----------------------------------------------------------------------------------------------------------------------------------------------- --- -->
<c:forEach items="${sessionScope.hospitallist}" var="x">
<!-- Modal -->
  <div class="modal fade" id="my" role="dialog"><br><br><br><br>
    <div class="modal-dialog" style="margin-top: 5%">
    
      <!-- Modal content-->
      <div class="modal-content">
      <form action="editDoctorHospital.html" method="post">
        <div class="modal-header">
         
          <h4 class="modal-title">Hospital</h4>
        </div>
        <div class="modal-body" style="background-color: #5292e7;height: 460px">
       <i class="fa fa-hospital-o"
						style="font-size: 100px;"></i>
         <div class="form-group">
         
    		<input type="text" class="form-control1" value="${x.hospital.hospitalName}" id="hospitalName"  name="hospitalName" placeholder="Enter name" style="height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
  		 </div>
  		 <div class="form-group">
    		<input type="text" class="form-control1" value="${x.hospital.hospitalAddress}" id="hospitalAddress" name="hospitalAddress" placeholder="Enter Address" style="height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
  		 </div> 
  		 <div class="form-group">
    		<select class="form-control" name="countryMenu" id="countryMenu"
								onchange="getState(this.value)" required="required"
								style="height: 30px;width:49%;border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option value="${x.hospital.country.countryId}">${x.hospital.country.countryName}</option>
										<c:forEach items="${sessionScope.clist}" var="i">
										<option value="${i.countryId}">${i.countryName}</option>
								</c:forEach>
							</select>
							<select class="form-control pull-right" name="stateMenu" id="stateMenu"
								required="required" onchange="getCity(this.value)"
								style="width: 49%; height: 30px;  border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option value="${x.hospital.state.stateId}">${x.hospital.state.stateName}</option>

							</select>
  		 </div>
  		 <div class="form-group">
  		 <select class="form-control" name="cityMenu" id="cityMenu"
								required="required"
								style="width: 49%; height: 30px;border-width: 0px 0px 1px 0px; background-color: #5292e7; padding: 0px; padding-left: 13px; color: white; border-color: #fff;">
								<option value="${x.hospital.city.cityId}">${x.hospital.city.cityName}</option>

							</select>
							<input type="tel" value="${x.hospital.hospitalZipCode}" id="hospitalZipCode" name="hospitalZipCode"
								class="form-control1 pull-right" placeholder="Postal Code"
								required="required"
								style="width: 49%; margin-top:-7px ;height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
					
  		 </div>
  		 <div class="form-group">
  		 <input type="email" value="${x.hospital.hospitalEmail}" id="hospitalEmail" name="hospitalEmail"
								class="form-control1" placeholder="Enter Email"
								required="required"
								style="height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
					
  		 </div>
  		 <div class="form-group">
  		 <input type="tel" value="${x.hospital.hospitalPhone}" id="hospitalPhone" name="hospitalPhone"
								class="form-control1" placeholder="Enter PhoneNo"
								required="required"
								style="height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
					
  		 </div>
  		 <div class="form-group">
  		 <input type="text"  value="${x.hospital.hospitalWebsiteUrl}" id="hospitalWebsite" name="hospitalWebsite"
								class="form-control1" placeholder="Enter Website"
								style="height: 0px; border-width: 0px 0px 1px 0px; border-color: #fff; background-color: #5292e7; color: #fff;" />
							<c:forEach items="${sessionScope.list}" var="i">
								<input type="hidden" name="doctorid" id="doctorid"
									value="${i.doctorId}">
							</c:forEach>
  		 </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default">Save</button>
           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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

