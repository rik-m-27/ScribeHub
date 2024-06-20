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

	<div class="container-fluid p-0 m-0">
		<img alt="notes_img" src="<c:url value="/resources/img/nts.jpg"/>"
			width="100%" height="800px">
	</div>



	<!-- script -->
	<%@include file="/WEB-INF/resources/component/script.jsp"%>
</body>
</html>