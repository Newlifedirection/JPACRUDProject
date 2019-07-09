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

	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="#"> BIKESHOP <img
			src="https://picsum.photos/275/175?random=1"></a>
			<br>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="bike">Update Bike</span>
			</div>
			<br>
			<form class="form-inline" action="SearchBikeShop.do">
				<!-- <input type="text" name="bike" id="bike" class="form-control"
					placeholder="Ex: Road" aria-label="bike"
					aria-describedby="basic-addon1"> -->
				<form action="SearchResults.do" method="GET">
					Enter Id: <input type="text" name="id" size="2" /> <input
						type="submit" value="SUBMIT" class="btn btn-block btn-success" />
				</form>
			<div class="input-group-prepend">
				<span class="input-group-text" id="bike">Search By Bike Id</span>
			</div>
			<br>
			<form class="form-inline" action="SearchBikeShop.do">
				<!-- <input type="text" name="bike" id="bike" class="form-control"
					placeholder="Ex: Road" aria-label="bike"
					aria-describedby="basic-addon1"> -->
				<form action="SearchResults.do" method="GET">
					Enter Id: <input type="text" name="id" size="2" /> <input
						type="submit" value="SUBMIT" class="btn btn-block btn-success" />
				</form>
				<br>
			</form>



			<div class="input-group-prepend">
				<span class="input-group-text" id="bike">Search By Bike Brand</span>
			</div>
			<br>
			<form class="form-inline" action="SearchBikeShop.do">
				<!-- <input type="text" name="bike" id="bike" class="form-control"
					placeholder="Ex: Road" aria-label="bike"
					aria-describedby="basic-addon1"> -->
			</form>
			<br>
			<div class="input-group">
				<form action="SearchResults.do" method="GET">
					Enter Frame Material: <input type="text" name="keyword" size="10" />
					<input type="submit" value="SUBMIT" class="btn btn-block btn-success" />
					<br>
				</form>
				<br>
				<form class="form-inline" action="SearchBikeShop.do">

					<!-- <input type="text" name="bike" id="bike" class="form-control"
						placeholder="Ex: Carbon" aria-label="bike"
						aria-describedby="basic-addon1"> -->
				</form>
				<br>
				<!-- <div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text" id="bike">Search By Brand</span>
					</div> -->
				<br>

				<form action="SearchResults.do" method="GET">
					Enter Brand: <input type="text" name="keyword" size="25" /> <input
						type="submit" value="SUBMIT" class="btn btn-block btn-success" />
						<br>
				</form>
				<br>
			</div>
			<a href="AddBikeShop.do" class="btn btn-block btn-success"
				role="button" aria-pressed="true">ADD NEW BIKE</a>
			<a href="AddBikeShop.do" class="btn btn-block btn-success"
				role="button" aria-pressed="true">Delete</a>

			<hr>
			<a href="showAllBikes.do">Show All Bikes</a>
			<ul>
				<c:forEach var="bs" items="${BikeShop}">
					<li><a href="getBike.do?bsid=${bs.id}">${bs.brand}</a></li>
					<li><a href="deleteBike.do?bsid=${bs.id}">${bs.brand}</a></li>
				</c:forEach>
			</ul>
</body>
</html>