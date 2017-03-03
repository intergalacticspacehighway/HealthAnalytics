<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
box-radius: 10%;
</style>

<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 150px; width:75%;margin-left: 85px;">
			<c:forEach items="${sessionScope.clinicList}" var="x">
			<div class="tg-heading-border tg-small">
				<h2>${x.clinic.clinicName}</h2>
			</div>
		
			<form class="form-refinesearch tg-haslayout contact_form" action="register.html" method="post">
			
				<fieldset>
				 
					<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Address:</b> &nbsp; ${x.clinic.clinicAddress},${x.clinic.city.cityName},${x.clinic.state.stateName}-${x.clinic.clinicPostalCode},${x.clinic.country.countryName}.</p>
                     </div>
                   
                     <div  class=" row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Email:</b> &nbsp; ${x.clinic.clinicEmailId}</p>
                   </div>
                    <div class="row form-group">  
					
                      <p style="color:black;margin-left: 20px;"><b>Phone No:</b> &nbsp; ${x.clinic.clinicPhoneNo}</p>
                      </div>
                      
                      	<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Website:</b> &nbsp; ${x.clinic.clinicWebsite}</p>
                     </div>
					
					<div class="col-sm-12">
							<button type="submit" style="width: 30%;height:50px;" class="tg-btn contact_now">Edit</button>
						<button type="submit" style="width: 30%;height:50px;margin-left: 160px;" class="tg-btn contact_now">Delete</button>
						
						</div>
				
				</fieldset>
			</form>
			</c:forEach>
		</div>
		</div>
	</div>


