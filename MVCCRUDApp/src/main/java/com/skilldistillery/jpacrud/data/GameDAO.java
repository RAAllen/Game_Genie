package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Game;

public interface GameDAO {
	Game create(Game game);
	Game getById(int id);
	Game getByKeyword(String string);
	List<Game> getAll();
	

}
