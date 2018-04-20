package com.skilldistillery.jpacrud.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Maker {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Transient
	private List<Game> games;
	
	@Transient
	private List<System> systems;
	
	public Maker() {
		super();
	}

	public Maker(int id, String name, List<Game> games, List<System> systems) {
		super();
		this.id = id;
		this.name = name;
		this.games = games;
		this.systems = systems;
	}

	@Override
	public String toString() {
		return "Maker [id=" + id + ", name=" + name + ", games=" + games + ", systems=" + systems + "]";
	}

	public List<Game> getGames() {
		return games;
	}

	public void setGames(List<Game> games) {
		this.games = games;
	}

	public List<System> getSystems() {
		return systems;
	}

	public void setSystems(List<System> systems) {
		this.systems = systems;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}
	
}
