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
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-header text-center">
						<h3>Add Your Notes</h3>
						<c:if test="${not empty msg}">
							<p class="fs-5 fw-bold text-success">${msg}</p>
							<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="saveNotes" method="post">
							<div class="mb-3">
								<label>Enter Title</label> <input type="text" name="title"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="6" cols="" class="form-control" name="description"></textarea>
							</div>

							<div class="text-center">
								<button class="btn btn-primary">Save</button>
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