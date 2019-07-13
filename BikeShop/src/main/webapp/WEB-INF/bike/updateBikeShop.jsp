<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Brand</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<a href="home.do" class="btn btn-block btn-primary">HOME</a>
	<a href="#" class="btn btn-block btn-warning">UPDATE ${bike.brand.name}</a>
	<h3>Found at ${bike.address.city }</h3>
	<form action="UpdateBikeShop.do" modelAttribute="bike" method="POST">
		<table style="”float: right;"margin-left:10px;”>
			<tr>
				<td><strong>Type :</strong></td>
				<td><input type="text" name="type" value="${bike.type }" /></td>
			</tr>
			<tr>
				<td><strong>Frame Material :</strong></td>
				<td><input type="text" name="frameMaterial"
					value="${bike.frameMaterial }" /></td>
			</tr>
			<select name="BrandId">
			<c:forEach var="b" items="${brands }"> 
				<option value="${b.name }">${b.name }</option>
			</c:forEach>
				
			</select>
			<tr>
				<td><strong>Suspension :</strong></td>
				<td><input type="text" name="suspension"
					value="${bike.suspension }" /></td>
			</tr>
			<tr>
				<td><strong>Tire Size :</strong></td>
				<td><input type="text" name="tireSize"
					value="${bike.tireSize }" /></td>
			</tr>
			<tr>
				<td><strong>Break Type :</strong></td>
				<td><input type="text" name="breakType"
					value="${bike.breakType }" /></td>
			</tr>
			<br>
			<tr>
				<td><strong>Street :</strong></td>
				<td><input type="text" name="address.street"
					value="${bike.address.street }" /></td>
			</tr>
			<tr>
				<td><strong>City :</strong></td>
				<td><input type="text" name="address.city"
					value="${bike.address.city }" /></td>
			</tr>
			<tr>
				<td><strong>State :</strong></td>
				<td><input type="text" name="address.state"
					value="${bike.address.state }" /></td>
			</tr>
			<tr>
				<td><strong>Zip :</strong></td>
				<td><input type="text" name="address.zip"
					value="${bike.address.zip }" /></td>
			</tr>


		</table>
		
		<input type="hidden" value="${bike.address.id }" name="address.id" />
		<input type="hidden" value="${bike.id }" name="id" /> <input
			type="submit" value="SUBMIT" class="btn btn-block btn-success" />
	</form>

</body>
</html>