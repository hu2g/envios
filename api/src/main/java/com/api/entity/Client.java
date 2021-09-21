package com.api.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Client {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_customer;
	private String code;
	private String name;
	private String phone;
	private int consumo;
	
	public Client() { }
	
	public Client(int id_customer, String code, String name, String phone, int consumo) {
		this.id_customer = id_customer;
		this.code = code;
		this.name = name;
		this.phone = phone;
		this.consumo = consumo;
	}
	public int getId_customer() {
		return id_customer;
	}
	public String getCode() {
		return code;
	}
	public String getName() {
		return name;
	}
	public String getPhone() {
		return phone;
	}
	public int getConsumo() {
		return consumo;
	}
	
	public void setId_customer(int id_customer) {
		this.id_customer = id_customer;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public void setConsumo(int consumo) {
		this.consumo = consumo;
	}
	
}
