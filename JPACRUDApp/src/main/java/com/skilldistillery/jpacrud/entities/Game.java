package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Game {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="category")
	private String category;
	
	@Column(name="description")
	private String description;
	
	@Column(name="picture")
	private String picture;
	
	@Column(name="video")
	private String video;
	
	private String maker;
	
	private String system;
	
	public Game() {
		super();
	}
	
	public Game(int id, String name, String category, String maker, String system) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.maker = maker;
		this.system = system;
	}
	
	public Game(int id, String name, String category, String description, String picture, String maker,
			String system) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.description = description;
		this.picture = picture;
		this.maker = maker;
		this.system = system;
	}
	
	@Override
	public String toString() {
		return "Game [id=" + id + ", name=" + name + ", category=" + category + ", description=" + description
				+ ", picture=" + picture + ", video=" + video + ", maker=" + maker + ", system=" + system + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getSystem() {
		return system;
	}

	public void setSystem(String system) {
		this.system = system;
	}

	public int getId() {
		return id;
	}
	
	
	
}
