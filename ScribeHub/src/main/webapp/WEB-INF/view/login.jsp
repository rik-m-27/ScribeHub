<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/resources/component/allCss.jsp"%>
</head>
<body style="background-color: #f0f0f0">
	<!-- Start navbar -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>
	<!-- End navbar -->

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Login Page</h3>
						<c:if test="${not empty msg}">
							<p class="fs-5 text-danger">${msg}</p>
							<c:remove var="msg"/>
						</c:if>					
					</div>
					<div class="card-body">
						<form action="loginUser" method="post">
							<div class="mb-3">
								<label>Enter Email</label> <input type="email" name="email"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Password</label> <input type="password"
									name="password" class="form-control">
							</div>

							<button class="btn btn-primary col-md-12">Login</button>

							<div class="card-footer text-center">
								<p class="fs-6">
									don't have an account <a href="${pageContext.request.contextPath}/register"
										class="text-decoration-none">register</a>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- script -->
	<%@include file="/WEB-INF/resources/component/script.jsp"%>
</body>
</html>