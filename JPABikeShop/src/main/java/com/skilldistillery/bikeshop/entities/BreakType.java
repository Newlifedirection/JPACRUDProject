package com.skilldistillery.bikeshop.entities;

import javax.persistence.Entity;


public class BreakType {
	private String breakType;

	@Override
	public String toString() {
		return "BreakType [breakType=" + breakType + "]";
	}

	public String getBreakType() {
		return breakType;
	}

	public void setBreakType(String breakType) {
		this.breakType = breakType;
	}
}
