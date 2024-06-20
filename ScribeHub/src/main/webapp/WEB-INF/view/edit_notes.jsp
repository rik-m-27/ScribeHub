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
						<h3>Edit Your Notes</h3>
					</div>
					<div class="card-body">
					
						<form action="updateNotes" method="post">
							<div class="mb-3">
								<label>Enter Title</label> <input type="text" name="title"
									class="form-control" value="${note.title}">
							</div>

							<div class="mb-3">
								<label>Enter Description</label>
								<textarea rows="6" cols="" class="form-control"
									name="description">${note.description}</textarea>
							</div>
							<input type="hidden" name="id" value="${note.id}">
							<button class="btn btn-primary mt-4">Update</button>
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