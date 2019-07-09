<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bike Shop</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<a href="index.html" class="btn btn-block btn-primary">Home</a>
<%-- 	<c:choose>
 --%><%-- 		<c:when test="${! empty bike}">
			<c:forEach items="${bike}"> --%>
			<h2>${bike.brand}</h2>
				<ul>
					<li><strong>Frame Material:</strong> ${bike.frameMaterial}</li>
					<li><strong>Type:</strong> ${bike.type}</li>
					<%-- <li><strong>Keyword:</strong> ${bike.keyword}</li> --%>

	</ul>

				<%-- 	<c:when test="${! empty bikes }"> --%>
					<!-- <tr> -->
							<form action="GetBikeData.do" method="GET">
								<input type="number" name="id" size="2"/>
									Bike id <input type="submit"
									value="Submit" class="btn btn-block btn-primary" />
							</form>
							<form action="CreateBikeShop.do" method="GET">
								<input type="number" name="type" size="25" placeholder="Create"
									value="${bike.frameMaterial }" /> <input type="submit"
									value="Submit" class="btn btn-block btn-primary" />
							</form>
							<br>
							<form action="UpdateBikeShop.do" method="GET">
								<input type="hidden" value="${bike.id }" name="frame material" />
								<input type="submit" value="Update"
									class="btn btn-block btn-warning" />
							</form>
							<form action="DeleteBikeShop.do" method="POST">
								<input type="hidden" value="${bike.frameMaterial}"
									name="frame material" /> <input type="submit" value="Delete"
									class="btn btn-block btn-danger" />
							</form>
							<%-- <td>${bike.brand }<br></td> --%>
						<!-- </tr> -->
					<%-- </c:when> --%>
		<%-- 	</c:forEach> --%>
	<%-- </c:when>
	<c:otherwise> --%>

		<!-- <div class="alert alert-primary" role="alert">Bike Not Found!
			Did you delete something?</div> -->
	<%-- </c:otherwise>
	</c:choose> --%>

</body>
</html>