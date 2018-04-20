package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Game;

public interface GameDAO {
	Game create(Game game);
	Game getById(int id);
	List<Game> getByKeyword(String string);
	List<Game> getAll();
	boolean delete(int id);
	Game update(int id, Game game);
}
