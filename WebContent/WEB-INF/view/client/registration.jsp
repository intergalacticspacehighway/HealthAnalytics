<jsp:include page="header.jsp"></jsp:include>
<style>
box-radius: 10%;
</style>
<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 50px;">
			<div class="tg-heading-border tg-small">
				<h2>User | Registration</h2>
			</div>
		
			<form class="form-refinesearch tg-haslayout contact_form">
				<div class="message_contact theme-notification"></div>
				<fieldset>
					<div class="row form-group">
                      <label class="col-md-12" for="name">Name</span></label>
                          <div class="col-md-6">
                             <input type="text" id="name" style= "height: 40px" placeholder="First" class="form-control"/>
                          </div>
                           <div class="col-md-6">
                             <input type="text" id="lname" style= "height: 40px" placeholder="Last" class="form-control"/>
                          </div>
                     </div>
                   
                     <div  class=" row form-group">
                      <label class="col-md-12" for="email">Email</span></label>
                          <div class="col-md-12">
                             <input type="text" id="email" style= "height: 40px" placeholder="Email"  class="form-control"/>
                          </div>
                   </div>
                    <div class="row form-group"> 
					
                      <label class="col-md-12" for="username">Choose your username</span></label>
                          <div class="col-md-12">
                             <input type="text" id="username" placeholder="Username" style= "height: 40px" class="form-control"/>
                          </div>
                     
                      </div>
					<div class="row form-group">
                      <label class="col-md-12" for="password">Password</span></label>
                          <div class="col-md-6">
                             <input type="text" id="password" placeholder="Password"style= "height: 40px"  class="form-control"/>
                          </div>
                          <div class="col-md-6">
                             <input type="text" id="password" style= "height: 40px" placeholder="Confirm your password"  class="form-control"/>
                          </div>
                     </div>
					<div class="row form-group">
						<label class="col-sm-6">Gender</label>
						<label class="col-sm-6">Location</label>
						<div class="col-sm-6">
							<select class="form-control" style="height: 60px">
								<option selected="selected">Select Gender</option>
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>
				
					<div class="form-group">
						
						<div class="col-sm-6">
							<select class="form-control" style="height: 60px">
								<option selected="selected">Select Country</option>
								<option>India</option>
								<option>USA</option>
							</select>
						</div>
					</div>
						</div>

					<div class="row form-group">
						<label class="col-md-12" for="bdate">Date of Birth</span></label>
						<div class="col-md-12">
							<input type="text" id="bdate" style="height: 40px"
								
								class="form-control mydatepicker"
								placeholder="Enter your birth date" />
						</div>
					</div>
					<div class="row col-sm-12">
							<button type="submit" class="tg-btn contact_now">Create Account</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
<script>

$('.mydatepicker').datepicker();
</script>
