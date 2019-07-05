<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bike Shop</title>

</head>
<body>
	<a href="index.html" class="btn btn-block btn-primary">Home</a>
	<c:choose>
		<c:when test="${! empty bike}">
			<h2>${bike.brand}</h2>
			<ul>
				</li><img src="https://picsum.photos/120/175?random=1">
				<li><strong>Frame Material:</strong> ${bike.frameMaterial}</li>
				<li><strong>Type:</strong> ${bike.type}</li>
				<li><strong>Keyword:</strong> ${bike.keyword}</li>
				
						<c:when test="${! empty bikes }">
							<c:forEach items="${bikes }" var="bike">
								<tr>
									<td>${bike.brand }<br></td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose></li>
				
			</ul>
		</c:when>
		<c:otherwise>
			<div class="alert alert-primary" role="alert">Bike Not Found!
				Did you delete something?</div>
		</c:otherwise>
	
	<%-- 	<form action="GetFilmData.do" method="GET">
		<input type="number" name="filmId" size="25"
			placeholder="Enter Film ID" value="${film.filmId }" /> <input
			type="submit" value="Submit" class="btn btn-block btn-primary" />
	</form> --%>
	<form action="UpdateBikeShop.do" method="GET">
		<input type="hidden" value="${bike.frame material }" name="frame material" /> <input
			type="submit" value="Update" class="btn btn-block btn-warning" />
	</form>
	<form action="DeleteBikeShop.do" method="POST">
		<input type="hidden" value="${bike.frame material }" name="frame material" /> <input
			type="submit" value="Delete" class="btn btn-block btn-danger" />
	</form>
</body>
</html>