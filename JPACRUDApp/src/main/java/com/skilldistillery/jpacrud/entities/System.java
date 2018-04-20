package com.skilldistillery.jpacrud.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class System {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name")
	private String name;
	
	private String makerName;
	
	@Transient
	private List<Game> games;
	
	public System() {
		super();
	}

	public System(int id, String name, String makerName, List<Game> games) {
		super();
		this.id = id;
		this.name = name;
		this.makerName = makerName;
		this.games = games;
	}

	@Override
	public String toString() {
		return "System [id=" + id + ", name=" + name + ", makerName=" + makerName + ", games=" + games + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMakerName() {
		return makerName;
	}

	public void setMakerName(String makerName) {
		this.makerName = makerName;
	}

	public List<Game> getGames() {
		return games;
	}

	public void setGames(List<Game> games) {
		this.games = games;
	}

	public int getId() {
		return id;
	}
	
}
