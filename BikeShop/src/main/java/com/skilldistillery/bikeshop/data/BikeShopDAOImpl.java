package com.skilldistillery.bikeshop.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.skilldistillery.bikeshop.entities.Bikeshop;

@Component
public class BikeShopDAOImpl implements BikeShopDAO{
//	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("BikeShop");
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Bikeshop> findAll() {
		String jpql = "SELECT b FROM Bikeshop b";
		List<Bikeshop> bikes = em.createQuery(jpql, Bikeshop.class).getResultList();
		return bikes;
	}
	
	@Override
	public Bikeshop create(Bikeshop bikeshop) {
		em.getTransaction().begin();
		em.persist(bikeshop);
		em.flush();
//		em.getTransaction().commit();
		em.clear();
		return bikeshop;
	}
	@Override
	public boolean destroy(int id) {
		Bikeshop bikeshop = em.find(Bikeshop.class, id);
		em.getTransaction().begin();
		em.remove(bikeshop);
//		em.getTransaction().commit();
		em.close();
		return true;
	}
	
	@Override
	public Bikeshop update(int id, Bikeshop bikeshop) {
		em.getTransaction().begin();
		
		Bikeshop managed = em.find(Bikeshop.class, id);
		managed.setBikeShop(bikeshop.getBikeShop());
		
//		em.getTransaction().commit();
		em.close();
		return managed;
	}
	@Override
	public List<Bikeshop> findBikeByFrameMaterial(String frameMaterial) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Bikeshop findBikeByType(String type) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Bikeshop findBikeByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}
	
//	@Override
//	public List<Bikeshop> findBikeShopByKeyword(String kw) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	@Override
	public void deleteBikeShop(String bikeShopId) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public Bikeshop findBikeShopById(int n) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Bikeshop> findBikeShopByKeyword(String kw) {
		// TODO Auto-generated method stub
		return null;
	}
}
