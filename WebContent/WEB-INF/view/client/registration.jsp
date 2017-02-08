<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
box-radius: 10%;
</style>

<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 110px;">
			<div class="tg-heading-border tg-small">
				<h2>User | Registration</h2>
			</div>
		
			<form:form class="form-refinesearch tg-haslayout contact_form" action="register.html" method="post" modelAttribute="insertUser">
			
				<fieldset>
				 <div class="row form-group"> 
					
                      <label class="col-md-12" for="userType">Select User Type</span></label>
                          <div class="col-md-12">
                            	<select name="userType" id="userType" class="form-control" style="height: 60px">
								<option selected="selected">Select type</option>
								<option value="doctor">Doctor</option>
								<option value="patient">Patient</option>
							</select>
                          </div>
                     
                      </div>
					<div class="row form-group">
                      <label class="col-md-12" for="name">Name</span></label>
                          <div class="col-md-6">
                             <form:input type="text" path="firstName" id="name" style= "height: 40px" placeholder="First" class="form-control"/>
                          </div>
                           <div class="col-md-6">
                             <form:input type="text" id="lname" path="lastName" style= "height: 40px" placeholder="Last" class="form-control"/>
                          </div>
                     </div>
                   
                     <div  class=" row form-group">
                      <label class="col-md-12" for="email">Email</span></label>
                          <div class="col-md-12">
                             <form:input path="email" type="text" id="email" style= "height: 40px" placeholder="Email"  class="form-control"/>
                          </div>
                   </div>
                    <div class="row form-group"> 
					
                      <label class="col-md-12" for="username">Choose your username</span></label>
                          <div class="col-md-12">
                             <input type="text" name ="userName" id="username" placeholder="Username" style= "height: 40px" class="form-control"/>
                          </div>
                     
                      </div>
                      <input type="hidden" name="userprofileImage" id="userprofileImage" value="user.png"/>
					<div class="row form-group">
                      <label class="col-md-12" for="password">Password</span></label>
                          <div class="col-md-6">
                             <input name="password" type="text" id="password" placeholder="Password"style= "height: 40px"  class="form-control"/>
                          </div>
                          <div class="col-md-6">
                             <input type="text" id="password" style= "height: 40px" placeholder="Confirm your password"  class="form-control"/>
                          </div>
                     </div>
					<div class="row form-group">
						<label class="col-sm-6">Gender</label>
						<label class="col-md-6" for="bdate">Date of Birth</span></label>
						
						<div class="col-sm-6">
							<select name="gender" class="form-control" style="height: 60px">
								<option selected="selected">Select Gender</option>
								<option value="male">Male</option>
								<option value="female">Female</option>
							</select>
						</div>
				
				

					
						
						<div class="col-md-6">
							<form:input path="birthDate" type="text" id="bdate" style="height: 40px"
								
								class="form-control mydatepicker"
								placeholder="Enter your birth date" />
						</div>
					</div>
					
					
					<div class="col-sm-12">
							<button type="submit" style="width: 100%" class="tg-btn contact_now">Create Account</button>
						</div>
				
				</fieldset>
			</form:form>
		</div>
		</div>
	</div>


<script>

$('.mydatepicker').datepicker();
</script>
