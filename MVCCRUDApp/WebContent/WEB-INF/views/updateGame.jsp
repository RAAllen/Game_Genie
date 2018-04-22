<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="head.jsp"></jsp:include>

<body>
	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<form action="updateGame.do">
			<label for="name">Enter a new name for the game: </label> <input
				type="text" name="name" placeholder="${game.name}" />

		</form>
		<label for="update">Update the Game: </label> <input
			class="btn btn-warning" type="submit" value="update">
	</div>
	<jsp:include page="head.jsp"></jsp:include>
</body>
</html>