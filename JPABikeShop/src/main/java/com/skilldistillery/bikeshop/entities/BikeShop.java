package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class BikeShop {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	public Integer getId() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String toString() {
		return "BikeShop [id=" + id + "]";
	}
}
