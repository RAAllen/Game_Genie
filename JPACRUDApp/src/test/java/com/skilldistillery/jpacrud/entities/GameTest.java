package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;


class GameTest {
	private EntityManagerFactory emf;
	private EntityManager em;
	private Game game;

	@BeforeEach
	void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
		game = em.find(Game.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		emf.close();
		game = null;
	}

	@Test
	@DisplayName("Test Game entity mappings")
	void test_game_entity_mappings() {

	}

}
