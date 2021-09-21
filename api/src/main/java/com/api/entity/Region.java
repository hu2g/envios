package com.api.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Region {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_region;
	private String name;
	private double tarifa;
	
	public Region() { }
	
	public Region(int id_region, String name, double tarifa) {
		this.id_region = id_region;
		this.name = name;
		this.tarifa = tarifa;
	}
	
	public int getId_region() {
		return id_region;
	}
	public String getName() {
		return name;
	}
	public double getTarifa() {
		return tarifa;
	}
	
	public void setId_region(int id_region) {
		this.id_region = id_region;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setTarifa(double tarifa) {
		this.tarifa = tarifa;
	}
}
