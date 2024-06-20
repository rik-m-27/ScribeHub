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
<body>
	<!-- Start navbar -->
	<%@include file="/WEB-INF/resources/component/navbar.jsp"%>
	<!-- End navbar -->

	<div class="container-fluid p-2">
		<h4 class="text-center">View All Notes</h4>

		<c:if test="${not empty msg}">
			<p class="fs-5 fw-bold text-success text-center">${msg}</p>
			<c:remove var="msg" />
		</c:if>

		<div class="row">

			<c:forEach items="${notes}" var="note">

				<div class="col-md-10 offset-md-1 mt-2">
					<div class="card">
						<div class="card-body">
							<div class="text-center">
								<img alt="" src="<c:url value="/resources/img/nts2.png"/>"
									width="50px" height="50px">
							</div>
							<p>${note.title}</p>
							<p>${note.description}</p>
							<p>Publish Date : ${note.date}</p>
							<div class="text-center">
								<a href="editNotes?id=${note.id}" class="btn btn-primary btn-sm">Edit</a> <a
									href="deleteNotes?id=${note.id}" class="btn btn-danger btn-sm">Delete</a>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>

		</div>
	</div>


	<!-- script -->
	<%@include file="/WEB-INF/resources/component/script.jsp"%>
</body>
</html>