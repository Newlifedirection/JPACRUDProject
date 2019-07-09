<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Bike Shop</title>
</head>
<body>
	<form action="SearchResults.do" method="GET">
		Bike Id: <input type="text" name="type" size="2" /> <input
			type="submit" value="Get Bike" />
	</form>
	<form action="SearchResults.do" method="GET">
		Bike Type: <input type="text" name="type" size="25" /> <input
			type="submit" value="Get Bike" />
	</form>
	<form action="SearchResults.do" method="GET">
		Bike Frame Material: <input type="text" name="frameMaterial" size="25" /> <input
			type="submit" value="Get Bike" />
	</form>
	<form action="SearchResults.do" method="GET">
		Bike Keyword: <input type="text" name="keyword" size="25" /> <input
			type="submit" value="Get Bike" />
	</form>
</body>

</body>
</html>