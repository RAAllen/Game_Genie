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
	
	@Column(name="release_year")
	private int releaseYear;
	
	@Column(name="picture")
	private String picture;
	
	@Column(name="video")
	private String video;
	
	@Column(name="maker")
	private String maker;
	
	public Game() {
		super();
	}
	
	public Game(String name, String category, String description, int releaseYear, String picture, String video,
			String maker) {
		super();
		this.name = name;
		this.category = category;
		this.description = description;
		this.releaseYear = releaseYear;
		this.picture = picture;
		this.video = video;
		this.maker = maker;
	}
	
	public Game(int id, String name, String category, String description, int releaseYear, String picture, String video,
			String maker) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.description = description;
		this.releaseYear = releaseYear;
		this.picture = picture;
		this.video = video;
		this.maker = maker;
	}

	@Override
	public String toString() {
		return "Game [id=" + id + ", name=" + name + ", category=" + category + ", description=" + description
				+ ", releaseYear=" + releaseYear + ", picture=" + picture + ", video=" + video + ", maker=" + maker
				+ ", system=" + "]";
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
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

	public int getId() {
		return id;
	}
	
	
	
}
