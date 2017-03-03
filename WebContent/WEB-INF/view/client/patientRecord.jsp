<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
box-radius: 10%;
</style>

<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 110px;">
			<div class="tg-heading-border tg-small" >
				<h2 style="margin-left: 100px;">Records</h2>
			</div>
		
			<form class="form-refinesearch tg-haslayout contact_form" action="register.html" method="post">
			
				<fieldset>
				
					<div class="row form-group">
                     
                          <div class="col-md-6">
                           <label class="col-md-12" for="name">Age</label>
                             <input type="text" name="age" id="age" style= "height: 40px;width:150px;" placeholder="Age" class="form-control"/>
                          </div>
                           <div class="col-md-6" style="margin-left: 200px;margin-top: -65px;">
                           <label class="col-md-12" for="name">Sex</label>
                            <div class="col-md-12">
                            <select name="sex" id="sex" class="form-control" style="height: 40px;padding: 0 0 0 5px;width: 150px;">
								<option selected="selected">Male</option>
								<option>Female</option>
							</select>
							</div>
                          </div>
                          <div class="col-md-6" style="margin-top: -65px;margin-left: 430px;">
                           <label class="col-md-12" for="name">Occupation</label>
                             <input type="text" name="oocupation" id="occupation" style= "height: 40px;width:150px;" placeholder="Occupation" class="form-control"/>
                          </div>
                     </div>
                   
                     <div  class=" row form-group">
                      <label class="col-md-12" for="complaints">Complaints</label>
                          <div class="col-md-12">
                             <input name="complaints" type="text" id="tags_3"  class="form-control"/>
                          </div>
                   </div>
                  <script>

</script>
                    
                    <div  class=" row form-group">
                      <label class="col-md-12" for="email">Origin/Duration & Progress of Disease</label>
                          <div class="col-md-12">
                             <input name="duration" type="text" id="tags_2"  class="form-control" />
                          </div>
                   </div>
                      
                      <div  class=" row form-group">
                      <label class="col-md-12" for="email">Past History</label>
                          <div class="col-md-12">
                             <input name="email" type="text" id="tags_1"  class="form-control" />
                          </div>
                   </div>
                   
					<div  class=" row form-group">
                      <label class="col-md-12" for="email">Addictions/Personal Habits</label><p id="tag" style="color:black;margin-top: -25px;margin-left: 500px;cursor:pointer;"><b>Add Medicines</b></p>
                          <div class="col-md-12">
                             <input name="email" type="text" id="tags_0"  class="form-control"  />
                          </div>
                   </div>
                 	
					<div  class=" row form-group" id="show">
                      <label class="col-md-12" for="email"> Medicines</label>
                          <div class="col-md-12">
                             <input name="email" type="text" id="tags_4"  class="form-control"  />
                          </div>
                   </div>
                   <div  class=" row form-group">
                      <label class="col-md-12" for="email">Family History</label>
                          <div class="col-md-12">
                             <input name="email" type="text" id="tags_5"  class="form-control" />
                          </div>
                   </div>
                   <div class="row form-group"> 
					
                      <label class="col-md-12" for="userType">Reports :-</label>
                         <div class="col-md-12">
                           
								<b style="margin-left: 30px;">Complete Blood Count:</b>
								<input type="file" style="margin-top: -20px;margin-left: 230px;"/> 
								<br>
								<b style="margin-left: 30px;">Renal Function Test:</b>
								<input type="file" style="margin-top: -20px;margin-left: 230px;"/>
								<br>
								<b style="margin-left: 30px;">Lival Function Test:</b>
								<input type="file" style="margin-top: -20px;margin-left: 230px;"/>
								<br>
								<b style="margin-left: 30px;">Urine:</b>
								<input type="file" style="margin-top: -20px;margin-left: 230px;"/>						
						
							</div>
                          </div>
                           
					<div class="col-sm-12">
							<button type="submit" style="width: 100%" class="tg-btn contact_now">Add Record</button>
						</div>
				
				</fieldset>
			</form>
		</div>
		</div>
	</div>


<script>

$('.mydatepicker').datepicker();
</script>
