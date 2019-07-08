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
	<a href="index.jsp" class="btn btn-block btn-primary">HOME</a>
	<a href="#" class="btn btn-block btn-success">SEARCH RESULTS</a>

	<c:choose>
		<c:when test="${! empty bikes}">
			<table class="table">
				<table class="table table-hover table-sm">
					<tr>
						<th scope="col">Type</th>
						<th scope="col">Frame Material</th>
						<!-- <th scope="col">Keyword</th> -->
						<th scope="col">Brand</th>
						<th scope="col">Suspension</th>
						<th scope="col">Tire Size</th>
						<th scope="col">Break Type</th>
					</tr>
					<c:forEach items="${bikes}" var="bikes">
						<tr>
							<td>${bike.type}</td>
							<td>${bike.frameMaterial }</td>
							<td>${bike.brand }</td>
							<td>${bike.suspension }</td>
							<td>${bike.tireSize }</td>
							<td>${bike.breakType }</td>S
								<form action=GetBikeData.do method="GET">
								
									<input type="hidden" value="${bike.type }" name="bikeShop" />
									<input type="hidden" value="${bike.frameMaterial }" name="bikeShop" />
									<input type="hidden" value="${bike.keyword }" name="bikeShop" />
									<!-- <input type="submit" value="Ex. Trek"
										class="btn btn-block btn-warning" /> -->
								</form>
							</td>
						</tr>
					</c:forEach>
				</table>
				</c:when>
				<c:otherwise>
					
					<form action="SearchResults.do" method="GET">
						Enter Keyword: <input type="text" name="keyword" size="25" /> <input
							type="submit" value="SUBMIT" class="btn btn-block btn-success" />
					</form>
					<h2>
						Keyword Not Found<br>Try Again
					</h2>
				</c:otherwise>
	</c:choose>

</body>
</html>