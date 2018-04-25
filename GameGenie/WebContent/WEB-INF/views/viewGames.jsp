<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<jsp:include page="partials/header.jsp"></jsp:include>
	<div class="container">
		<c:if test="${keywordGames != null}">
			<c:set var="count" value="0" scope="page" />
			<c:forEach items="${keywordGames}" var="game">
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
							<li><a href="getGameById.do?gameId=${game.id}"><img src="${game.picture}" alt="An image of ${game.name}" height="150" width="150" /></a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${count % 3 == 2}">
					</div>
				</c:if>
			<c:set var="count" value="${count + 1}" scope="page" />
			</c:forEach>
		</c:if>
		<c:if test="${empty keywordGames}">
			<h4>No games matched your search.....🤔</h4>
		</c:if>
	</div>
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>