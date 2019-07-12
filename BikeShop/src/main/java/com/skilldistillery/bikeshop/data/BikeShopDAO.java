package com.skilldistillery.bikeshop.data;

import java.lang.Thread.State;
import java.util.List;

import com.skilldistillery.bikeshop.entities.Address;
import com.skilldistillery.bikeshop.entities.Bikeshop;
import com.skilldistillery.bikeshop.entities.Brand;

public interface BikeShopDAO {
	
	
	public Bikeshop create(Bikeshop bikeshop);
	public Bikeshop update(Bikeshop bs);
	public boolean destroy(int id);
	public int id(int id);
	public List<Bikeshop> findBikeByFrameMaterial(String frameMaterial);
	public Bikeshop findBikeShopById(int n);
	public String createPhone(String string);
	
	List<Bikeshop> findBikeByType(String kw);
	List<Bikeshop> findBikeShopByKeyword(String kw);
	List<Bikeshop> findAll();
	
	public Address findAddress();
	public Brand findBrand(String b);
	public String findPhone(String string);
	
	public Address createAddress(String street, String city, String state, String zip);
	

}
