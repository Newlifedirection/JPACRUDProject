package com.skilldistillery.bikeshop.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.bikeshop.entities.BikeShop;

public class BikeShopDAOImpl implements BikeShopDAO{
	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("BikeShop");
	
	
	
	@Override
	public BikeShop create(BikeShop bikeshop) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(bikeshop);
		em.flush();
//		em.getTransaction().commit();
		em.clear();
		return bikeshop;
	}
	@Override
	public boolean destroy(int id) {
		EntityManager em = emf.createEntityManager();
		BikeShop bikeshop = em.find(BikeShop.class, id);
		em.getTransaction().begin();
		em.remove(bikeshop);
//		em.getTransaction().commit();
		em.close();
		return true;
	}
	
	@Override
	public BikeShop update(int id, BikeShop bikeshop) {
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		
		BikeShop managed = em.find(BikeShop.class, id);
		managed.setBikeShop(bikeshop.getBikeShop());
		
//		em.getTransaction().commit();
		em.close();
		return managed;
	}
	@Override
	public List<BikeShop> findBikeByFrameMaterial(String frameMaterial) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public BikeShop findBikeByType(String type) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public BikeShop findBikeByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<BikeShop> findBikeShopByKeyword(String kw) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void deleteBikeShop(String bikeShopId) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public BikeShop findBikeShopById(int n) {
		// TODO Auto-generated method stub
		return null;
	}
}
