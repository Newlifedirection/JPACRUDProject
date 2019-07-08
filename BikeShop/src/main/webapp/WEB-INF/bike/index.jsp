<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<a class="navbar-brand" href="#"> BIKESHOP 
		<img src="https://picsum.photos/275/175?random=1"></a>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="bike">Search By Bike Type</span>
			</div>
			<!-- <form action="getBikeData.do" method="GET">
			BikeShopId: <input type="text" name "bsId"/>
			<input type="submit" value="Show Bike"/> -->
			<br>
			<form class="form-inline" action="SearchBikeShop.do">
				<input type="text" name="bike" id="bike" class="form-control"
					placeholder="Ex: Road" aria-label="bike"
					aria-describedby="basic-addon1">
			</form>
			<br>
			<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="bike">Search By Frame Material</span>
			</div>
			<br>
			<form class="form-inline" action="SearchBikeShop.do">

				<input type="text" name="bike" id="bike" class="form-control"
					placeholder="Ex: Carbon" aria-label="bike"
					aria-describedby="basic-addon1">
			</form>
			<br>
			<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="bike">Search By Keyword</span>
			</div>
			<br>
			<form class="form-inline" action="SearchBikeShop.do">
				<input type="text" name="bike" id="bike" class="form-control"
					placeholder="Ex: Specialized" aria-label="bike"
					aria-describedby="basic-addon1">
			</form>
			</div>
		<a href="AddBikeShop.do" class="btn btn-block btn-success" role="button"
			aria-pressed="true">ADD NEW BIKE</a>
			
			<hr>
			<a href="showAllBikes.do">Show All Bikes</a>
			<ul>
				<c:forEach var="bs" items="${BikeShop}">
					<li><a href="getBike.do?bsid=${bs.id}">${bs.brand}</a></li>
				</c:forEach>
			</ul>
</body>
</html>