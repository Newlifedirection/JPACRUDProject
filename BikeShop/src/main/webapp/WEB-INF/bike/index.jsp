<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>BikeShop</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>
<body>
		
		<a class="navbar-brand" href="#"> BIKESHOP <img
			src="https://picsum.photos/275/175?random=1"></a> <br>
			<br>
			<form action="GetBikeData.do" method="GET">
				Enter Bike id: <input type="number" name="id" size="2" /> <input
					type="submit" value="Submit" class="btn btn-success" />
				<br>
			</form>

			<a href="AddBikeShop.do" class="btn btn-success" role="button" aria-pressed="true">Add New Bike</a>


			<hr>
			<a href="showAllBikes.do">Show All Bikes</a>
</body>
</html>