<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <h1><a class="navbar-brand">Game Genie</a></h1>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="index.do">Home<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="addGame.do">Add a Game</a>
	      </li>
	    <form class="form-inline my-2 my-lg-0" action="getGameById.do">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search by Game Id" name="gameId" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	    <form class="form-inline my-2 my-lg-0" action="getGamesByKeyword.do">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search by Keyword" name="keyword" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
</div>