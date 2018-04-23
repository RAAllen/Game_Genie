package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.GameDAO;
import com.skilldistillery.jpacrud.entities.Game;

@Controller
public class MVCController {
	
	@Autowired
	private GameDAO dao;
	
	// get index with all games
	@RequestMapping(path="index.do", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Game> games = dao.getAll();
		mv.addObject("allGames", games);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	// get a single game by id
	@RequestMapping(path="getGameById.do", method=RequestMethod.GET)
	public ModelAndView getGameById(@RequestParam("gameId") int id) {
		ModelAndView mv = new ModelAndView();
		Game game = dao.getById(id);
		mv.addObject("game", game);
		mv.setViewName("WEB-INF/views/viewGame.jsp");
		return mv;
	}
	
	// get a list of games matching a keyword
	@RequestMapping(path="getGamesByKeyword.do", method=RequestMethod.GET)
	public ModelAndView getGamesByKeyword(@RequestParam("keyword") String string) {
		ModelAndView mv = new ModelAndView();
		List<Game> games = dao.getByKeyword(string);
		mv.addObject("keywordGames", games);
		mv.setViewName("WEB-INF/views/viewGames.jsp");
		return mv;
	}
	
	// go to the page with a form to add a game
	@RequestMapping(path="addGame.do", method=RequestMethod.GET)
	public ModelAndView addAGame() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/addGame.jsp");
		return mv;
	}
	
	// actually create a game and add it to the database - the commented out lines are related to attempting to get the redirect actually working
	@RequestMapping(path="addGameToDB.do", method=RequestMethod.POST)
	public ModelAndView addAGameToDB(RedirectAttributes redir, Game game) {
		ModelAndView mv = new ModelAndView();
		Game gameToAdd = dao.create(game);
//		dao.create(game);
//		redir.addFlashAttribute("game", game);
		mv.addObject(gameToAdd);
//		mv.setViewName("redirect:getResult.do");
		mv.setViewName("WEB-INF/views/viewGame.jsp");
		return mv;
	}
	
	// not working
	@RequestMapping(path="getResult.do", method=RequestMethod.GET)
	public ModelAndView getAddedGameResult(@RequestParam("game") Game game) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/result.jsp");
		return mv;
	}
	
	// delete a game from the database
	@RequestMapping(path="deleteGame.do", method=RequestMethod.POST)
	public ModelAndView deleteAGame(RedirectAttributes redir, @RequestParam("gameToDelete") int id) {
		ModelAndView mv = new ModelAndView();
		Boolean deleted = dao.delete(id);
		mv.addObject("deleted", deleted);
		mv.setViewName("WEB-INF/views/deleteGame.jsp");
		return mv;
	}
	
	// go to the form to update a game
	@RequestMapping(path="updateGame.do", method=RequestMethod.GET)
	public ModelAndView updateAGame(@RequestParam("gameToUpdate") Integer  id) {
		ModelAndView mv = new ModelAndView();
		Game game = dao.getById(id);
		mv.addObject("game", game);
		mv.setViewName("WEB-INF/views/updateGame.jsp");
		return mv;
	}
	
	// actually update the game in the database
	@RequestMapping(path="completeUpdateGame.do", method=RequestMethod.POST)
	public ModelAndView completeUpdateGame(RedirectAttributes redir, @RequestParam("gameToUpdate") Integer id, Game game) {
		ModelAndView mv = new ModelAndView();
		Game updatedGame = dao.update(id, game);
		mv.addObject(updatedGame);
		mv.setViewName("WEB-INF/views/viewGame.jsp");
		return mv;
	}

}
