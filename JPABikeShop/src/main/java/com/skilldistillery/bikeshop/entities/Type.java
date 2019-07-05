package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;


public class Type {
	
	public String name;

	@Override
	public String toString() {
		return "Type [name=" + name + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
