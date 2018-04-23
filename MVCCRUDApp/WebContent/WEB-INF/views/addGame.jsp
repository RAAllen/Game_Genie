<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<div class="container">
		<jsp:include page="partials/header.jsp"></jsp:include>
		<form action="addGameToDB.do" method="POST">
			<label for="name">Enter a name for the game: </label> 
			<input type="text" name="name" placeholder="Super Mario Bros. 3"/>
			<label for="releaseYear">Enter a release year for the game: </label> 
			<input type="text" name="releaseYear" placeholder="1990"/>
			<label for="maker">Enter a new maker for the game: </label> 
			<input type="text" name="maker" placeholder="${game.maker}"/>
			<label for="category">Enter a category for the game: </label> 
			<input type="text" name="category" placeholder="Side-Scroll Adventure"/>
			<label for="description">Enter a description for the game: </label> 
			<input type="text" name="description" placeholder="A multiplayer game that takes place in the Mushroom Kingdom. You are in pursuit of the evil King Koopa who has kidnapped Princess Toadstool."/>
			<label for="picture">Enter a url link to a picture for the game: </label> 
			<input type="text" name="picture" placeholder="https://ih1.redbubble.net/image.245132386.1935/flat,1000x1000,075,f.u1.jpg"/>
			<label for="video">Enter a url link to a video for the game: </label> 
			<input type="text" name="video" placeholder="https://www.youtube.com/watch?v=tmnMq2Hw72w"/>
			<label for="add">Add the Game: </label> <input class="btn btn-warning" type="submit" value="add">
		</form>
	</div>
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>