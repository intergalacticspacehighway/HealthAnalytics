<jsp:include page="header.jsp"></jsp:include>
<script src="resources/client/js/jquery.min.js"></script>
  <script src="resources/client/js/bootstrap.min.js"></script>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


			<div class="tg-dashboard tg-haslayout"><br><br><br><br><br><br><br>
<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 tg-expectwidth col-md-offset-4">
						<c:forEach items="${sessionScope.doctorlist}" var="x">
						<div class="row">
							<div class="tg-support">
								<div class="tg-heading-border tg-small">
									<h3>Account Settings</h3>
								</div>
								<ul class="tg-doccontactinfo">
									<li>
									<div class="form-group row">
									<label for="example-text-input" class="col-2 col-form-label"><b>Username:</b> &nbsp; ${x.registration.login.username}</label>
										 <div class="popover-markup pull-right" > 
    <a href="javascript:;" class="trigger" >Edit</a> 
    <div class="head hide">Username</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.registration.login.username}" style="height: 10px;" name="username">
        </div>
       <button type="submit" class="btn btn-default btn-block">
        
           Save Changes
        </button></a>
        
    </div>
</div>   
										</div>
										</li>
										<li>
										<div class="form-group row">
										<label for="example-text-input" class="col-2 col-form-label"><b>Email:</b> &nbsp; ${x.registration.email}</label>
										<div class="popover-markup pull-right"> 
    <a href="javascript:;" class="trigger">Edit</a> 
    <div class="head hide">Email</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.registration.email}" style="height: 10px;" name="email">
        </div>
        <button type="submit" class="btn btn-default btn-block">
            Save Changes
        </button>
    </div>
</div>     
										</div>
										</li>
										<li>
									<div class="form-group row">
									<label for="example-text-input" class="col-2 col-form-label"><b>Password:</b> &nbsp; ${x.registration.login.password}</label>
										 <div class="popover-markup pull-right" > 
    <a href="javascript:;" class="trigger" >Edit</a> 
    <div class="head hide">Password</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.registration.login.password}" style="height: 10px;" name="password">
        </div>
        <button type="submit" class="btn btn-default btn-block">
            Save Changes
        </button>
    </div>
</div>       
										</div>
										</li>
										<li>
									<div class="form-group row">
									<label for="example-text-input" class="col-2 col-form-label"><b>Your Degree:</b> &nbsp; 
                      <c:if test="${empty x.doctorDegree}">
                      <font>No Degree</font>
                       </c:if>
                      <c:if test="${not empty x.doctorDegree}">
                      <font>${x.doctorDegree}</font>
                      </c:if></label>
										 <div class="popover-markup pull-right" > 
    <a href="javascript:;" class="trigger">Edit</a> 
    <div class="head hide">Degree</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.doctorDegree}" style="height: 10px;" name="degree">
        </div>
        <button type="submit" class="btn btn-default btn-block">
            Save Changes
        </button>
    </div>
</div>            
										</div>
										</li>
										<li>
									<div class="form-group row">
									<label for="example-text-input" class="col-2 col-form-label"><b>Your Experience:</b> &nbsp; <c:if test="${empty x.doctorExperience}">
                      <font>No Experience</font>
                       </c:if>
                      <c:if test="${not empty x.doctorExperience}">
                      <font>${x.doctorExperience}</font>
                     
                      </c:if></label>
										  <div class="popover-markup pull-right" > 
    <a href="javascript:;" class="trigger" >Edit</a> 
    <div class="head hide">Experience</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.doctorExperience}"  style="height: 10px;" name="experience">
        </div>
        <button type="submit" class="btn btn-default btn-block">
            Save Changes
        </button>
    </div>
</div>              
										</div>
										</li>
										<li>
									<div class="form-group row">
									<label for="example-text-input" class="col-2 col-form-label"><b>Awards and Recognitions:</b> &nbsp; ${x.doctorAward}</label>
										  <div class="popover-markup pull-right"> 
    <a href="javascript:;" class="trigger">Edit</a> 
    <div class="head hide">Awards and Recognitions</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.doctorAward}" style="height: 10px;" name="email" placeholder="Awards and Recognitions(year)">
        </div>
        <button type="submit" class="btn btn-default btn-block">
            Save Changes
        </button>
    </div>
</div>                 
										</div>
										</li>
										<li>
									<div class="form-group row">
									<label for="example-text-input" class="col-2 col-form-label"><b>Education:</b> &nbsp; ${x.doctorAward}</label>
										  <div class="popover-markup pull-right"> 
    <a href="javascript:;" class="trigger">Edit</a> 
    <div class="head hide">Education</div>
    <div class="content hide">
        <div class="form-group">
            <input 
                type="text" 
                class="form-control" 
                value="${x.doctorEducation}" style="height: 10px;" name="email">
        </div>
        <button type="submit" class="btn btn-default btn-block">
            Save Changes
        </button>
    </div>
</div>                 
										</div>
										</li>
									</ul>
									<input type="hidden" name="doctorid" value="${x.doctorId}"/>
							
						</div>	
						</div>
					</c:forEach>
					</div>
</div>

<script>

$('.popover-markup>.trigger').popover({
    html: true,
    placement: 'left',
    title: function () {
        return $(this).parent().find('.head').html();
    },
    content: function () {
        return $(this).parent().find('.content').html();
    }
});

</script>
