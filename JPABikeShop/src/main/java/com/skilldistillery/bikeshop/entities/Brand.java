package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;


public class Brand {
	private String brand;

	@Override
	public String toString() {
		return "Brand [name=" + brand + "]";
	}

	public String getName() {
		return brand;
	}

	public void setName(String brand) {
		this.brand = brand;
	}
}
