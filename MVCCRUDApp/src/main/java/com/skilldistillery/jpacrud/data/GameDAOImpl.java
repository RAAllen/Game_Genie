package com.skilldistillery.jpacrud.data;

import java.util.ArrayList;
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
		try {
			em.persist(game);
			em.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return game;
	}

	@Override
	public Game getById(int id) {
		return em.find(Game.class, id);
	}

	@Override
	public List<Game> getByKeyword(String string) {
		List<Game> games = new ArrayList<>();
		String jpql = "SELECT g FROM Game g WHERE g.name LIKE :keyword OR g.description LIKE :keyword";
		games = em.createQuery(jpql, Game.class).setParameter("keyword", string).getResultList();
		return games;
	}

	@Override
	public List<Game> getAll() {
		List<Game> games = new ArrayList<>();
		try {
			String jpql = "SELECT g FROM Game g";
			games = em.createQuery(jpql, Game.class).getResultList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return games;
	}

	@Override
	public boolean delete(int id) {
		boolean deleted = false;
		try {
			Game game = em.find(Game.class, id);
			em.remove(game);
			deleted = true;
		} catch (Exception e) {
			System.out.println("The delete failed.");
		}
		return deleted;
	}

	@Override
	public Game update(int id, Game game) {
		Game gameToUpdate;
		try {
			gameToUpdate = em.find(Game.class, id);
			gameToUpdate.setName(game.getName());
			gameToUpdate.setCategory(game.getCategory());
			gameToUpdate.setDescription(game.getDescription());
			gameToUpdate.setReleaseYear(game.getReleaseYear());
			gameToUpdate.setPicture(game.getPicture());
			gameToUpdate.setVideo(game.getVideo());
			gameToUpdate.setMaker(game.getMaker());
			return gameToUpdate;
		} catch (Exception e) {
			System.out.println("An error occurred while attempting to update. The original game has not been altered.");
			return game;
		}
	}

}
