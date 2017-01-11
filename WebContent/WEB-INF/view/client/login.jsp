<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:url value="/login" var="loginProcessingUrl"></c:url>
<div style="margin: 0 auto;">
	<div style="margin: auto; width: 50%" class="sc-contact-form">
		<div class="tg-refinesearcharea contact_wrap"
			style="box-shadow: 0 2px 4px 1px rgba(0, 0, 0, 0.25); background: #fff; margin-top: 110px;">
			<div class="tg-heading-border tg-small">
				<h2>User | Login</h2>
			</div>

			<form action="authorize.html" method="post"
				class="form-refinesearch tg-haslayout contact_form">
				<c:if test="${param.error != null }">
					<div class="message_contact theme-notification"></div>
					
						<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null }">
					Reason: <c:out value="${ SPRING_SECURITY_LAST_EXCEPTION.message}"></c:out>
						</c:if>
					
				</c:if>
				<c:if test="${param.logout!=null }">
					<div>You have been logout</div>
				</c:if>
				<div class="row form-group">
					<label class="col-md-12" for="username">Username</label>
					<div class="col-md-6">
						<input type="text" name="username" id="username"
							style="height: 40px" class="form-control" />
					</div>

				</div>
			


				<div class="row form-group">
					<label class="col-md-12" for="password">Password</label>
					<div class="col-md-6">
						<input type="text" id="password" name="password"
							style="height: 40px" class="form-control" />
					</div>
				</div>
				<div class="row col-sm-12">
					<label class="col-md-12" for="remember-me ">Remember Me</label>
					<div class="col-md-6">
						<input type="checkbox" id="remember-me" name="remember-me"
							style="height: 40px" class="form-control" />
					</div>
	
				</div>
				<div class="row col-sm-12">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
					<button type="submit" class="tg-btn contact_now">Login</button>
		
				</div>
		
			</form>
		</div>
		

	</div>
</div>





