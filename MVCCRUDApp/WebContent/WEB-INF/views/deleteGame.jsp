<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<jsp:include page="partials/head.jsp"></jsp:include>

<body>
	<div class="container">
		<jsp:include page="partials/header.jsp"></jsp:include>
		<c:if test="${deleted == true}">
			<h4>The game has been deleted! 😵</h4>
		</c:if>
		<c:if test="${deleted == false}">
			<h4>The delete has failed.....🤔</h4>
		</c:if>
	</div>
	<jsp:include page="partials/foot.jsp"></jsp:include>
</body>
</html>