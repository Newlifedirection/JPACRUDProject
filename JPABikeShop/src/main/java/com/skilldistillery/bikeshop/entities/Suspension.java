package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;


public class Suspension {
	public String suspension;

	@Override
	public String toString() {
		return "Suspension [suspension=" + suspension + "]";
	}

	public String getSuspension() {
		return suspension;
	}

	public void setSuspension(String suspension) {
		this.suspension = suspension;
	}
}
