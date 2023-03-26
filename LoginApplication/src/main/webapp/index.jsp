
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="fragments/header.jsp"%>

<c:if test="${userData != null}">
    <c:redirect url="/dashboard" />
</c:if>

<div class="limiter">	
	<div class="container-login100">
			<div class="wrap-login100">
					<div class="container">
						<span class="<%=request.getAttribute("error-msg") != null ? "error-message" : ""%>">
                		<%=request.getAttribute("error-msg") != null ? request.getAttribute("error-msg") : ""%>
           				</span>
					</div>
				<div class="login100-pic js-tilt" data-tilt>
					<img src="https://i.ibb.co/tJJNQPY/img-01.png" alt="IMG">
				</div>
		
				<form class="login100-form validate-form" action="login" method="post">
					<span class="login100-form-title">
						Member Login
					</span>
	

					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							Login
						</button>
					</div>

				</form>		
	
			</div>
				</div>	
			
	</div>
	
<%@include file="fragments/footer.jsp"%>