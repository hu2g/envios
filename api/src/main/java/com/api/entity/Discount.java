package com.api.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Discount {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_discount;
	private double value;
	private int min_level;
	private int max_level;
	
	public Discount() { }
	
	public Discount(int id_discount, double value, int min_level, int max_level) {
		this.id_discount = id_discount;
		this.value = value;
		this.min_level = min_level;
		this.max_level = max_level;
	}
	
	public int getId_discount() {
		return id_discount;
	}
	public double getValue() {
		return value;
	}
	public int getMax_level() {
		return max_level;
	}
	public int getMin_level() {
		return min_level;
	}
	
	public void setId_discount(int id_discount) {
		this.id_discount = id_discount;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public void setMin_level(int min_level) {
		this.min_level = min_level;
	}
	public void setMax_level(int max_level) {
		this.max_level = max_level;
	}
	
}
