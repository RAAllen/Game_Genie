<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<div class="container">
		<jsp:include page="partials/header.jsp"></jsp:include>
		<c:set var="count" value="0" scope="page" />
		<c:forEach items="${allGames}" var="game">
			<c:if test="${count % 3 == 0}">
				<div class="row">
					<div class="col-sm-4">
						<ul>
							<li><a href="getGameById.do?gameId=${game.id}">${game.name}</a></li>
							<li><a href="getGameById.do?gameId=${game.id}"><img src="${game.picture}" alt="An image of ${game.name}" height="150" width="150"/></a></li>
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
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>