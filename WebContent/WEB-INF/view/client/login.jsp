<jsp:include page="header.jsp"></jsp:include>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script>
$("#loginHeader").hide();
</script>
<div class="abcd">
		
		<div class="contact">

			<div class="right-w3">
				<h2 style="color:#5292e7;text-transform: capitalize">Health</h2>
				<h2 style="margin-left: -250px;text-transform: capitalize;">Analytics</h2>
                
			</div>
		<c:if test="${not empty error}">
			<span style="color:#5292e7; margin-left: 150px" class="error">${error}</span>
		</c:if>
		<c:if test="${not empty msg}">
			<span style="color:#5292e7; margin-left: 150px" class="msg">${msg}</span>
		</c:if>

		<form action="j_spring_security_check" method="post" name="form">
			
			<input type="hidden" value="login" name="flag"/>

				<div class="left">
					<div class="name">
						<i class="fa fa-user" aria-hidden="true"></i>
						<input type="text" name="username" class="username" placeholder="Your Username" required="">
					</div>
					<div class="password">
						<i class="fa fa-envelope" aria-hidden="true"></i>
						<input type="password" name="password" class="password" placeholder="Your password" required="">
					</div><br>
					<div class="group">
						<input id="check" name="remember-me" type="checkbox" class="check" checked="">
						<label for="check"><span class="icon"></span> <font style="color:#5292e7">Keep me
							Signed in</font></label> 
							<a href="" style="padding-left:80px;color:#5292e7">Forgot Password?</a>
					</div><br>
					<div class="col-sm-12">
						<button type="submit" style="width: 100%"
							class="tg-btn contact_now">Sign in</button>
					</div>
					<a href="registration.html" style="padding-left:80px;color:#5292e7">Not a member yet? Sign up now!</a>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />	
			</form>
			
		</div>
		<!---728x90--->
		
		<!---728x90--->
	</div>

	<script>
		
			$(".username").focus();
		
	
	</script>
	</body>
	</html>
	
	 