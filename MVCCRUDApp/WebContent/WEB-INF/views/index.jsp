<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
	<label for="searchById">Search for a game by it's ID: </label>
	<input type="text" name="searchById"/>
	<button class="btn btn-warning" type="submit" value="searchById">Search by Id</button>
	<label for="searchByKeyword">Search for a game by it's keyword: </label>
	<input type="text" name="searchByKeyword"/>
	<button class="btn btn-warning" type="submit" value="searchByKeyword">Search by Keyword</button>
	</form>
	<ul>
		<c:forEach items="${games}" var="game">
			<li><a href="getGame.do?gameId=${game.id}">${game.name}</a></li>
			<li><a href="getGame.do?gameId=${game.id}">${game.picture}</a></li>
		</c:forEach>
	</ul>
</body>
</html>