package com.api.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Country {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_country;
	private String name;
	private int region;
	
	public Country() { }
	
	public Country(int id_country, String name, int region) {
		this.id_country = id_country;
		this.name = name;
		this.region = region;
	}
	
	public int getId_country() {
		return id_country;
	}
	public String getName() {
		return name;
	}
	public int getRegion() {
		return region;
	}
	
	public void setId_country(int id_country) {
		this.id_country = id_country;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
