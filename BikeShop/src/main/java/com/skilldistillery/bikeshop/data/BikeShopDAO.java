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
	public Bikeshop findBikeShopById(int n);
	public List<Bikeshop> findBikeByFrameMaterial(String frameMaterial);
	
	public List<Bikeshop> findBikeByType(String kw);
	public List<Bikeshop> findBikeShopByKeyword(String kw);
	public List<Bikeshop> findAll();
	
	public Address findAddress();
	public Brand findBrand(String b);
	
	public Address createAddress(String street, String city, String state, String zip);
	public Address creaAddress(Address address);
	public List<Brand> findAllBrands();
	public Address update(Address a);
		
	

}
