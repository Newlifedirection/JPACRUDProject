<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bike Shop</title>
<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> -->
</head>
<body>
	<a href="index.html" class="btn btn-block btn-primary">HOME</a>
	<a href="AddFilm.do" class="btn btn-block btn-success">ADD NEW Bike</a>
	<form action="AddFilm.do" modelAttribute="film" method="POST">
		<table class="table table-striped table-sm table-hover">
			<tr>
				<td><strong>Type :</strong></td>
				<td><input type="text" name="type" size="30"
					placeholder="Ex: Mountain, Gravel, Road" /></td>
			</tr>
			<tr>

				<td><strong>Keyword :</strong></td>
				<td><input type="text" name="keyword" size="30"
					placeholder="Ex: Specialized]" /></td>
			</tr>
			<tr>
				<td><strong>Frame Material</strong></td>
				<td><input type="text" name="frameMaterial" size="30"
					placeholder="Steele, Aluminum, Carbon" /></td>
			</tr>
		</table>
		<input type="submit" value="SUBMIT" class="btn btn-block btn-warning" />
	</form>
</body>
</html>