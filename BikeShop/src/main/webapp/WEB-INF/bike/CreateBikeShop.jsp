<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Add Bike</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<a href="home.do" class="btn btn-block btn-primary">HOME</a>
	<a href="AddBikeShop.do" class="btn btn-block btn-success">ADD NEW Bike</a>
	<form action="AddBikeShop.do" modelAttribute="bike" method="POST">
		<table class="table table-striped table-sm table-hover">
			<tr>
				<td><strong>Type :</strong></td>
				<td><input type="text" name="type" size="30"
					placeholder="Ex: Mountain, Gravel, Road" /></td>
			</tr>
			<tr>

				<td><strong>Brand :</strong></td>
				<td><input type="text" name="attachedBrand" size="30"
					placeholder="Ex: Specialized" /></td>
			</tr>
			<tr>

				<td><strong>Tire Size :</strong></td>
				<td><input type="text" name="tireSize" size="30"
					placeholder="Ex: 27.5 3, 700c" /></td>
			</tr>
			<tr>

				<td><strong>Break type :</strong></td>
				<td><input type="text" name="breakType" size="30"
					placeholder="Ex: Road, Gravel, Mountain" /></td>
			</tr>
			<tr>
				<td><strong>Frame Material</strong></td>
				<td><input type="text" name="frameMaterial" size="30"
					placeholder="Ex: Steele, Aluminum, Carbon" /></td>
			</tr>
			<br>
			<tr>
				<td><strong>Street :</strong></td>
				<td><input type="text" name="street"
					value="${bike.address.street }" /></td>
			</tr>
			<tr>
				<td><strong>City :</strong></td>
				<td><input type="text" name="city"
					value="${bike.address.city }" /></td>
			</tr>
			<tr>
				<td><strong>State :</strong></td>
				<td><input type="text" name="state"
					value="${bike.address.state }" /></td>
			</tr>
			<tr>
				<td><strong>Zip :</strong></td>
				<td><input type="text" name="zip"
					value="${bike.address.zip }" /></td>
			</tr>
		</table>
		<input type="submit" value="SUBMIT" class="btn btn-block btn-warning" />
	</form>
</body>
</html>