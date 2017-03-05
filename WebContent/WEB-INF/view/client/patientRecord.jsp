<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<style>
box-radius: 10%;
</style>

<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 110px;">
			<div class="tg-heading-border tg-small" >
				<h2 style="margin-left: 100px;">Records</h2>
			</div>
		
			<form:form class="form-refinesearch tg-haslayout contact_form" action="addpatientRecord.html" method="post" modelAttribute="patientRecord">
			
				<fieldset>
				
					<div class="row form-group">
                     
                          <div class="col-md-6">
                           <label class="col-md-12" for="name">Age</label>
                             <form:input type="text" path="age" id="age" style= "height: 40px;width:150px;" placeholder="Age" class="form-control"/>
                          </div>
                           <div class="col-md-6" style="margin-left: 200px;margin-top: -65px;">
                           <label class="col-md-12" for="name">Sex</label>
                            <div class="col-md-12">
                            <form:select name="sex" path="sex" id="sex" class="form-control" style="height: 40px;padding: 0 0 0 5px;width: 150px;">
								<option selected="selected">Male</option>
								<option>Female</option>
							</form:select>
							</div>
                          </div>
                          <div class="col-md-6" style="margin-top: -65px;margin-left: 430px;">
                           <label class="col-md-12" for="name">Occupation</label>
                             <form:input type="text" path="occupation" id="occupation" style= "height: 40px;width:150px;" placeholder="Occupation" class="form-control"/>
                          </div>
                     </div>
                   
                     <div  class=" row form-group">
                      <label class="col-md-12" for="complaints">Complaints</label>
                          <div class="col-md-12">
                             <form:input path="complaints" type="text" id="tags_3"  class="form-control"/>
                          </div>
                   </div>
                 
                    
                    <div  class=" row form-group">
                      <label class="col-md-12" for="email">Origin/Duration & Progress of Disease</label>
                          <div class="col-md-12">
                             <form:input path="duration" type="text" id="tags_2"  class="form-control" />
                          </div>
                   </div>
                      
                      <div  class=" row form-group">
                      <label class="col-md-12" for="email">Past History</label>
                          <div class="col-md-12">
                             <form:input path="pastHistory" type="text" id="tags_1"  class="form-control" />
                          </div>
                   </div>
                   
					<div  class=" row form-group">
                      <label class="col-md-12" for="email">Addictions/Personal Habits</label><p id="tag" style="color:black;margin-top: -25px;margin-left: 500px;cursor:pointer;"><b>Add Medicines</b></p>
                          <div class="col-md-12">
                             <form:input path="personalHabits" type="text" id="tags_0"  class="form-control"  />
                          </div>
                   </div>
                 	
					<div  class=" row form-group" id="show">
                      <label class="col-md-12" for="email"> Medicines</label>
                          <div class="col-md-12">
                             <form:input path="medicines" type="text" id="tags_4"  class="form-control"  />
                          </div>
                   </div>
                   <div  class=" row form-group">
                      <label class="col-md-12" for="email">Family History</label>
                          <div class="col-md-12">
                             <form:input path="familyHistory" type="text" id="tags_5"  class="form-control" />
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
                          <c:forEach items="${sessionScope.patientList}" var="i">
                           <form:input type="hidden" path="patient.patientId" value="${i.patientId}"/>
                           </c:forEach>
                           <form:input path="currentdate" type="hidden" id="date" value=""/>
                          
					<div class="col-sm-12">
							<button type="submit" style="width: 100%" class="tg-btn contact_now">Add Record</button>
						</div>
				
				</fieldset>
			</form:form>
		</div>
		</div>
	</div>
<script>
function myFunction() {
	
n =  new Date();
y = n.getFullYear();
m = n.getMonth();
d = n.getDate();
h = n.getHours();
min = n.getMinutes();
s  = n.getSeconds();
document.getElementById("date").value = m + "/" + d + "/" + y + " "+ h + ":" + min + ":" + s;

}
</script>

<script>

$('.mydatepicker').datepicker();
</script>
