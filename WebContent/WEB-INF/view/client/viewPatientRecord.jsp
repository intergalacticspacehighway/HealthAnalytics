<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<style>
box-radius: 10%;
</style>

<div style="margin: 0 auto; ">
	<div style="margin: auto; width: 50%"  class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap" style="box-shadow: 0 2px 4px 1px rgba(0,0,0,0.25); background:#fff; margin-top: 150px; width:75%;margin-left: 85px;">
			<c:forEach items="${sessionScope.patientrecordList}" var="x">
			
		
			<form class="form-refinesearch tg-haslayout contact_form" action="register.html" method="post">
			
				<fieldset>
				 
					<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>age:</b> &nbsp; ${x.age}</p>
                     </div>
                   
                     <div  class=" row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Sex:</b> &nbsp; ${x.sex}</p>
                   </div>
                    <div class="row form-group">  
					
                      <p style="color:black;margin-left: 20px;"><b>Occupation:</b> &nbsp; ${x.occupation}</p>
                      </div>
                      
                      	<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Complaints:</b> &nbsp; ${x.complaints}</p>
                     </div>
					
					<div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Origin/Duration & Progress of Disease:</b> &nbsp; ${x.duration}</p>
                     </div>
                     
                     <div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Past History:</b> &nbsp; ${x.pastHistory}</p>
                     </div>
                     
                     <div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Addictions/Personal Habits:</b> &nbsp; ${x.personalHabits}</p>
                     </div>
                     <c:if test="${not empty x.medicines}">
                     <div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Medicines:</b> &nbsp; ${x.medicines}</p>
                     </div>
                     </c:if>
                     <div class="row form-group">
                      <p style="color:black;margin-left: 20px;"><b>Family History:</b> &nbsp; ${x.familyHistory}</p>
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


