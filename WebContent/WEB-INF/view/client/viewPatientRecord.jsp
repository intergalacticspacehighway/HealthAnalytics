<jsp:include page="header.jsp"></jsp:include>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<div class="border-0 col-md-6 col-md-offset-3" style="background-color: whitesmoke"><br><br><br><br><br>
	<div style="margin: auto; width: 70%"  class="sc-contact-form">
	
	<c:forEach items="${sessionScope.patientrecordList}" var="x">
	
		<div class="form-group row">
  <label for="example-text-input" class="col-2 col-form-label"><b>age:</b>  &nbsp; ${x.age}</label>
  
</div>
<div class="form-group row">
  <label for="example-search-input" class="col-2 col-form-label"><b>Sex:</b> &nbsp; ${x.sex}</label>
</div>
<div class="form-group row">
  <label for="example-email-input" class="col-2 col-form-label"><b>Occupation:</b> &nbsp; ${x.occupation}</label>
 
</div>
<div class="form-group row">
  <label for="example-url-input" class="col-2 col-form-label"><b>Complaints:</b> &nbsp; ${x.complaints}</label>
  
</div>
<div class="form-group row">
  <label for="example-tel-input" class="col-2 col-form-label"><b>Origin/Duration & Progress of Disease:</b> &nbsp; ${x.duration}</label>
 
</div>
<div class="form-group row">
  <label for="example-password-input" class="col-2 col-form-label"><b>Past History:</b> &nbsp; ${x.pastHistory}</label>
  
</div>
<div class="form-group row">
  <label for="example-number-input" class="col-2 col-form-label"><b>Addictions/Personal Habits:</b> &nbsp; ${x.personalHabits}</label>
  
</div>
<c:if test="${not empty x.medicines}">
<div class="form-group row">
  
  <label for="example-datetime-local-input" class="col-2 col-form-label"><b>Medicines:</b> &nbsp; ${x.medicines}</label>
  
</div>
</c:if>
<div class="form-group row">
  <label for="example-date-input" class="col-2 col-form-label"><b>Family History:</b> &nbsp; ${x.familyHistory}</label>
  
</div>
<div class="form-group row">
  <label for="example-month-input" class="col-2 col-form-label"><b>Complete Blood Count:</b> &nbsp; <a href="downloadFile.html?cbcfile=${x.completebloodcount}">Complete Blood Count.pdf</a></label>
  
</div>
<div class="form-group row">
  <label for="example-week-input" class="col-2 col-form-label"><b>Renal Function Test:</b> &nbsp;  <a href="downloadFile.html?rftfile=${x.renalfunctiontest}">Renal Function Test.pdf</a></label>
 
</div>
<div class="form-group row">
  <label for="example-time-input" class="col-2 col-form-label"><b>Liver Function Test:</b> &nbsp; <a href="downloadFile.html?lftfile=${x.liverfunctiontest}">Liver Function Test.pdf</a></label>
  
</div>
<div class="form-group row">
  <label for="example-color-input" class="col-2 col-form-label"><b>Urine:</b> &nbsp;  <a href="downloadFile.html?urinefile=${x.urine}">Urine.pdf</a></label>
 
</div>
<div class="col-sm-12">
							<button type="submit" style="width: 100%;height:45px;" class="btn btn-primary">Edit</button><br>
						
						
						</div>
						<div class="col-sm-12">
						<button type="submit" style="width: 100%;height:45px;margin-top: 5%" class="btn btn-primary">Delete</button>
						</div>
					
</c:forEach>
		</div>
	</div>


