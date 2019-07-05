<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bike Shop</title>
</head>
<body>
<form action="getBike.do" method="GET">
  BikeShop ID: <input type="text" name="bsid" />
  <input type="submit" value="Show Bike" />
</form>
  <hr>
  <ul>
  	<c:forEach var="bs" items="${BikeShop}">
  		<li> <a href="getBike.do?bsid=${bs.id}">${bs.brand}</a> </li>
  	</c:forEach>
  </ul>
</body>
</html>