package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

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
		assertEquals("Little Red Riding Hood", game.getName());
		assertEquals("Futurehouse", game.getMaker());
		assertEquals("Learning", game.getCategory());
		assertEquals("An interactive learning game that tells the story of little red riding hood and the big bad wolf.", game.getDescription());
		assertEquals(1983, game.getReleaseYear());
		assertEquals("https://www.youtube.com/watch?v=VmJcVW5_Rq0", game.getVideo());
		assertEquals("http://www.atarimania.com/8bit/screens/bedtime_stories_little_red_riding_hood.gif", game.getPicture());
	}

}
