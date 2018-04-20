package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		mv.addObject("games", games);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	@RequestMapping(path="getGame.do", method=RequestMethod.GET)
	public ModelAndView getGame(@RequestParam("gameId") int id) {
		ModelAndView mv = new ModelAndView();
		Game game = dao.getById(id);
		mv.addObject("game", game);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}

}
