<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<title>Game Genie</title>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<c:set var="count" value="0" scope="page" />
		<c:forEach items="${allGames}" var="game">
			<c:if test="${count % 3 == 0}">
				<div class="row">
					<div class="col-sm-4">
						<ul>
							<li><a href="getGameById.do?gameId=${game.id}">${game.name}</a></li>
							<li><a href="getGameById.do?gameId=${game.id}"><img
									src="${game.picture}" alt="An image of ${game.name}"
									height="150" width="150" /></a></li>
						</ul>
					</div>
			</c:if>
			<c:if test="${count % 3 != 0}">
				<div class="col-sm-4">
					<ul>
						<li><a href="getGameById.do?gameId=${game.id}">${game.name}</a></li>
						<li><a href="getGameById.do?gameId=${game.id}"><img
								src="${game.picture}" alt="An image of ${game.name}"
								height="150" width="150" /></a></li>
					</ul>
				</div>
			</c:if>
			<c:if test="${count % 3 == 2}">
				</div>
			</c:if>
	<c:set var="count" value="${count + 1}" scope="page" />
	</c:forEach>
	</div>
</body>
</html>