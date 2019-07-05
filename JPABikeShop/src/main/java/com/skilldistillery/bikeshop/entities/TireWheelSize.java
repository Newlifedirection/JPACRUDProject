package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;


public class TireWheelSize {
	public String size;

	@Override
	public String toString() {
		return "TireWheelSize [size=" + size + "]";
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
}
