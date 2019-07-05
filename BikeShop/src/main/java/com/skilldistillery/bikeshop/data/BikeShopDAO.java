package com.skilldistillery.bikeshop.data;

import java.util.List;

import com.skilldistillery.bikeshop.entities.BikeShop;

public interface BikeShopDAO {
	
	public BikeShop create(BikeShop bikeshop);
	public BikeShop update(int id, BikeShop bikeshop);
	public boolean destroy(int id);
	public List<BikeShop> findBikeByFrameMaterial(String frameMaterial);
	public BikeShop findBikeByType(String type);
	public BikeShop findBikeByKeyword(String keyword);
	public BikeShop findBikeShopById(int n);
	public void deleteBikeShop(String bikeShopId);
	List<BikeShop> findBikeShopByKeyword(String kw);

}
