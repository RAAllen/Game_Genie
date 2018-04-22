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
	
	@RequestMapping(path="index.do", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Game> games = dao.getAll();
		mv.addObject("allGames", games);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	@RequestMapping(path="getGameById.do", method=RequestMethod.GET)
	public ModelAndView getGameById(@RequestParam("gameId") int id) {
		ModelAndView mv = new ModelAndView();
		Game game = dao.getById(id);
		mv.addObject("game", game);
		mv.setViewName("WEB-INF/views/viewGame.jsp");
		return mv;
	}
	
	@RequestMapping(path="getGamesByKeyword.do", method=RequestMethod.GET)
	public ModelAndView getGamesByKeyword(@RequestParam("keyword") String string) {
		ModelAndView mv = new ModelAndView();
		List<Game> games = dao.getByKeyword(string);
		mv.addObject("keywordGames", games);
		mv.setViewName("WEB-INF/views/viewGames.jsp");
		return mv;
	}
	
	@RequestMapping(path="addGame.do", method=RequestMethod.POST)
	public ModelAndView addAGame(@RequestParam("gameToAdd") Game game) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/addGame.jsp");
		return mv;
	}
	
	@RequestMapping(path="deleteGame.do", method=RequestMethod.POST)
	public ModelAndView deleteAGame(RedirectAttributes redir, @RequestParam("gameToDelete") int id) {
		ModelAndView mv = new ModelAndView();
		Boolean deleted = dao.delete(id);
		mv.addObject("deleted", deleted);
		mv.setViewName("WEB-INF/views/deleteGame.jsp");
		return mv;
	}
	
	@RequestMapping(path="updateGame.do", method=RequestMethod.POST)
	public ModelAndView updateAGame(@RequestParam("gameToUpdate") int id) {
		ModelAndView mv = new ModelAndView();
		Game game = dao.getById(id);
		mv.addObject("game", game);
		mv.setViewName("WEB-INF/views/updateGame.jsp");
		return mv;
	}
	
	@RequestMapping(path="completeUpdateGame.do", method=RequestMethod.POST)
	public ModelAndView completeUpdateGame(RedirectAttributes redir, @RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("releaseYear") int releaseYear, @RequestParam("category") String category, @RequestParam("description") String description, @RequestParam("picture") String picture, @RequestParam("video") String video, @RequestParam("maker") String maker) {
		ModelAndView mv = new ModelAndView();
		Game gameToUpdate = new Game(name, category, description, releaseYear, picture, video, maker);
		Game game = dao.update(id, gameToUpdate);
		mv.addObject(game);
		mv.setViewName("WEB-INF/views/viewGame.jsp");
		return mv;
	}

}
