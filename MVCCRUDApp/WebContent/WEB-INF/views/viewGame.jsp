<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<jsp:include page="partials/header.jsp"></jsp:include>
	<div class="container">
		<c:if test="${game != null}">
		<div class="row">
			<ul>
				<li><h4>${game.name}</h4></li>
				<li>Made in ${game.releaseYear} by ${game.maker}</li>
				<li>${game.description}</li>
				<li><img src="${game.picture}" alt="An image of ${game.name}" height="150" width="150" /></li>
				<li><a href="${game.video}" target="_blank">Watch it being played</a></li>
			</ul>
		</div>
		<div class="row">
			<div class="col">
				<form action="deleteGame.do" method="POST">
					<label for="delete">Delete the Game: </label> 
					<input type="hidden" name="gameToDelete" value="${game.id}"> 
					<input class="btn btn-warning" type="submit" value="delete">
				</form>
			</div>
			<div class="col">
				<form action="updateGame.do" method="GET">
					<label for="update">Update the Game:</label> 
					<input type="hidden" name="gameToUpdate" value="${game.id}"> 
					<input class="btn btn-warning" type="submit" value="update">
				</form>
			</div>
		</div>
		</c:if>
		<c:if test="${game == null}">
		<h4>The game was not found.....🤔</h4>
		</c:if>
	</div>
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>