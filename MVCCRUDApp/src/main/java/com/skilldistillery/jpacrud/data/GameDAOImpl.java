package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.Game;

@Transactional
@Component
public class GameDAOImpl implements GameDAO{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Game create(Game game) {
		
		return null;
	}

	@Override
	public Game getById(int id) {
		return em.find(Game.class, id);
	}

	@Override
	public Game getByKeyword(String string) {

		return null;
	}

	@Override
	public List<Game> getAll() {

		return null;
	}

}
