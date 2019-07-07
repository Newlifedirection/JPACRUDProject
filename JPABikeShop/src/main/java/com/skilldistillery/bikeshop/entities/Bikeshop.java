package com.skilldistillery.bikeshop.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity 
public class Bikeshop {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String brand;
	private String type;
	@Column(name="frame_material")
	private String frameMaterial;
	private String suspension;
	@Column(name="tire_size")
	private String tireSize;
	@Column(name="break_type")
	private String breakType;
	public int getId() {
		return id;
	}
	public Bikeshop() {
		super();
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFrameMaterial() {
		return frameMaterial;
	}
	public void setFrameMaterial(String frameMaterial) {
		this.frameMaterial = frameMaterial;
	}
	public String getSuspension() {
		return suspension;
	}
	public void setSuspension(String suspension) {
		this.suspension = suspension;
	}
	public String getTireSize() {
		return tireSize;
	}
	public void setTireSize(String tireSize) {
		this.tireSize = tireSize;
	}
	public String getBreakType() {
		return breakType;
	}
	public void setBreakType(String breakType) {
		this.breakType = breakType;
	}
	@Override
	public String toString() {
		return "BikeShop [id=" + id + ", brand=" + brand + ", type=" + type + ", frameMaterial=" + frameMaterial
				+ ", suspension=" + suspension + ", tireSize=" + tireSize + ", breakType=" + breakType + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((brand == null) ? 0 : brand.hashCode());
		result = prime * result + ((breakType == null) ? 0 : breakType.hashCode());
		result = prime * result + ((frameMaterial == null) ? 0 : frameMaterial.hashCode());
		result = prime * result + id;
		result = prime * result + ((suspension == null) ? 0 : suspension.hashCode());
		result = prime * result + ((tireSize == null) ? 0 : tireSize.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Bikeshop other = (Bikeshop) obj;
		if (brand == null) {
			if (other.brand != null)
				return false;
		} else if (!brand.equals(other.brand))
			return false;
		if (breakType == null) {
			if (other.breakType != null)
				return false;
		} else if (!breakType.equals(other.breakType))
			return false;
		if (frameMaterial == null) {
			if (other.frameMaterial != null)
				return false;
		} else if (!frameMaterial.equals(other.frameMaterial))
			return false;
		if (id != other.id)
			return false;
		if (suspension == null) {
			if (other.suspension != null)
				return false;
		} else if (!suspension.equals(other.suspension))
			return false;
		if (tireSize == null) {
			if (other.tireSize != null)
				return false;
		} else if (!tireSize.equals(other.tireSize))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}
	public Bikeshop(int id, String brand, String type, String frameMaterial, String suspension, String tireSize,
			String breakType) {
		super();
		this.id = id;
		this.brand = brand;
		this.type = type;
		this.frameMaterial = frameMaterial;
		this.suspension = suspension;
		this.tireSize = tireSize;
		this.breakType = breakType;
	}
	public Object getBikeShop() {
		// TODO Auto-generated method stub
		return null;
	}
	public void setBikeShop(Object bikeShop) {
		// TODO Auto-generated method stub
		
	}
	
}
