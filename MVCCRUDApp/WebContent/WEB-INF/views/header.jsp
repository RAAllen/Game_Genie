<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<div class="row">
		<h1>Game Genie</h1>
		<a href="index.do"><button class="btn btn-warning">Home</button></a>
		<a href="addGame.do"><button class="btn btn-warning">Add a Game</button></a>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<form action="getGameById.do">
				<label for="gameId">Search for a game by it's ID: </label> <input
					type="text" name="gameId" />
				<button class="btn btn-warning" type="submit" value="gameId">Search</button>
			</form>
		</div>
		<div class="col-sm-6">
			<form action="getGamesByKeyword.do">
				<label for="keyword">Search for a game by it's
					keyword: </label> <input type="text" name="keyword" />
				<button class="btn btn-warning" type="submit"
					value="keyword">Search</button>
			</form>
		</div>
	</div>
</div>