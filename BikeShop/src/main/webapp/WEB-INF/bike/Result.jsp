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
	<a href="home.do" class="btn btn-block btn-primary">Home</a>
	<h2>${bike.brand.name}</h2>
	<ul>
		<li><strong>Frame Material:</strong> ${bike.frameMaterial}</li>
		<li><strong>Type:</strong> ${bike.type}</li>
		<li><strong>Brand:</strong> ${bike.brand.name }</li>
		<br>
		<li><strong>Street:</strong> ${bike.address.street }</li>
		<li><strong>City:</strong> ${bike.address.city }</li>
		<li><strong>State:</strong> ${bike.address.state }</li>
		<li><stong>Zip:</stong> ${bike.address.zip }</li>
		

	</ul>

	<br>
	<form action="UpdateBikeShop.do" method="GET">
		<input type="hidden" value="${bike.id }" name="id" /> <input
			type="submit" value="Update" class="btn btn-block btn-warning" />
	</form>
	<form action="DeleteBike.do" method="POST">
		<input type="hidden" value="${bike.id}" name="id" /> <input
			type="submit" value="Delete" class="btn btn-block btn-danger" />
	</form>
	
</body>
</html>