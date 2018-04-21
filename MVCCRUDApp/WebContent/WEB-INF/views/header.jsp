<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div>
	<div class="row">
		<h1>Game Genie</h1>
	</div>
	<div class="row">
		<a href="index.do"><button class="btn btn-warning">Home</button></a>
		<a href="addGame.do"><button class="btn btn-warning">Add a Game</button></a>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<form>
				<label for="searchById">Search for a game by it's ID: </label> <input
					type="text" name="searchById" />
				<button class="btn btn-warning" type="submit" value="searchById">Search
					by Id</button>
			</form>
		</div>
		<div class="col-sm-6">
			<form>
				<label for="searchByKeyword">Search for a game by it's
					keyword: </label> <input type="text" name="searchByKeyword" />
				<button class="btn btn-warning" type="submit"
					value="searchByKeyword">Search by Keyword</button>
			</form>
		</div>
	</div>
</div>