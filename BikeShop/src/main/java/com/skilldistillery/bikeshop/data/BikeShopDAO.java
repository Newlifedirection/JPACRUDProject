package com.skilldistillery.bikeshop.data;

import java.util.List;

import com.skilldistillery.bikeshop.entities.Bikeshop;

public interface BikeShopDAO {
	
	public Bikeshop create(Bikeshop bikeshop);
	public Bikeshop update(int id, Bikeshop bikeshop);
	public boolean destroy(int id);
	
	public List<Bikeshop> findBikeByFrameMaterial(String frameMaterial);
//	public Bikeshop findBikeByType(String type);
//	public Bikeshop findBikeByKeyword(String keyword);
	public Bikeshop findBikeShopById(int n);
	
	public void deleteBikeShop(String bikeShopId);
	List<Bikeshop> findBikeByType(String kw);
	List<Bikeshop> findBikeShopByKeyword(String kw);
	List<Bikeshop> findAll();

}
