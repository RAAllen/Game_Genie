<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<jsp:include page="partials/header.jsp"></jsp:include>
	<div class="container">
		<c:if test="${game != null}">
			<h4>The game was created! 😁</h4>
		</c:if>
		<c:if test="${game == null}">
			<h4>The game was not added.....🤔</h4>
		</c:if>
	</div>
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>