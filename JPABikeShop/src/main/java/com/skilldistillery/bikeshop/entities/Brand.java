package com.skilldistillery.bikeshop.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Brand {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String phone;
	
	
	@OneToMany(mappedBy="brand")
	private List<Bikeshop> bikeshops;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public List<Bikeshop> getBikeshops() {
		return bikeshops;
	}


	public void setBikeshops(List<Bikeshop> bikeshops) {
		this.bikeshops = bikeshops;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((bikeshops == null) ? 0 : bikeshops.hashCode());
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
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
		Brand other = (Brand) obj;
		if (bikeshops == null) {
			if (other.bikeshops != null)
				return false;
		} else if (!bikeshops.equals(other.bikeshops))
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Brand [id=" + id + ", name=" + name + ", phone=" + phone + "]";
	}


	public Brand(int id, String name, String phone, List<Bikeshop> bikeshops) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.bikeshops = bikeshops;
	}


	public Brand() {
		super();
	}


	


}