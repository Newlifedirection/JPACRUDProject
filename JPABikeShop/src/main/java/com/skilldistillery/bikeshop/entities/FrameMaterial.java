package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;


public class FrameMaterial {
	private String material;

	@Override
	public String toString() {
		return "FrameMaterial [material=" + material + "]";
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}
}
