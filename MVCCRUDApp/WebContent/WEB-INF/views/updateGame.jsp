<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<div class="container">
		<jsp:include page="partials/header.jsp"></jsp:include>
		<form action="completeUpdateGame.do" method="POST">
			<label for="name">Enter a new name for the game: </label> 
			<input type="text" name="name" placeholder="${game.name}"/>
			<label for="releaseYear">Enter a new release year for the game: </label> 
			<input type="text" name="releaseYear" placeholder="${game.releaseYear}"/>
			<label for="maker">Enter a new maker for the game: </label> 
			<input type="text" name="maker" placeholder="${game.maker}"/>
			<label for="category">Enter a new category for the game: </label> 
			<input type="text" name="category" placeholder="${game.category}"/>
			<label for="description">Enter a new description for the game: </label> 
			<input type="text" name="description" placeholder="${game.description}"/>
			<label for="picture">Enter a new url link to a picture for the game: </label> 
			<input type="text" name="picture" placeholder="${game.picture}"/>
			<label for="video">Enter a new url link to a video for the game: </label> 
			<input type="text" name="video" placeholder="${game.video}"/>
		</form>
		<label for="update">Update the Game: </label> <input
			class="btn btn-warning" type="submit" value="update">
	</div>
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>