<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<a href="/" class="btn btn-block btn-primary">HOME</a>
	<a href="#" class="btn btn-block btn-success">SEARCH RESULTS</a>

	<c:choose>
		<c:when test="${! empty bikes}">

			<table class="table">
				<table class="table table-hover table-sm">
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Type</th>
						<th scope="col">Frame Material</th>
						<th scope="col">Brand</th>
						<th scope="col">Suspension</th>
						<th scope="col">Tire Size</th>
						<th scope="col">Break Type</th>
						
						<th scope="col">Street</th>
						<th scope="col">City</th>
						<th scope="col">State</th>
						<th scope="col">zip</th>
					</tr>
					<c:forEach items="${bikes}" var="bike">
						<tr>
							<td>${bike.id}</td>
							<td>${bike.type}</td>
							<td>${bike.frameMaterial }</td>
							<td>${bike.brand.name }</td>
							<td>${bike.suspension }</td>
							<td>${bike.tireSize }</td>
							<td>${bike.breakType }</td>
							
							<td>${bike.address.street }</td>
							<td>${bike.address.city }</td>
							<td>${bike.address.state }</td>
							<td>${bike.address.zip }</td>
						</tr>
					</c:forEach>
				</table>
				</c:when>

				<c:when test="${! empty bike}">
					<tr>
						<td>${bike.type}</td>
						<td>${bike.frameMaterial }</td>
						<td>${bike.brand }</td>
						<td>${bike.suspension }</td>
						<td>${bike.tireSize }</td>
						<td>${bike.breakType }</td>
						
							<td>${bike.address.street }</td>
							<td>${bike.address.city }</td>
							<td>${bike.address.state }</td>
							<td>${bike.address.zip }</td>
					</tr>
				</c:when>
				<c:otherwise>
					<h2>
						Search Not Found<br>Try Again
					</h2>
				</c:otherwise>
				</c:choose>
			</table>
</body>
</html>