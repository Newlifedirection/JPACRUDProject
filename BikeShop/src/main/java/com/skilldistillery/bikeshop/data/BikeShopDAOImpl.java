package com.skilldistillery.bikeshop.data;

import java.lang.Thread.State;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.bikeshop.entities.Address;
import com.skilldistillery.bikeshop.entities.Bikeshop;
@Transactional
@Service
public abstract class BikeShopDAOImpl implements BikeShopDAO{
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
		em.persist(bikeshop);
		em.flush();
		return bikeshop;
	}
	@Override
	public boolean destroy(int id) {
		Bikeshop bikeshop = em.find(Bikeshop.class, id);
		em.remove(bikeshop);
		return true;
	}
	
	@Override
	public Bikeshop update(Bikeshop bs) {
		
		Bikeshop managed = em.find(Bikeshop.class, bs.getId());
		managed.setBrand(bs.getBrand());
		managed.setBreakType(bs.getBreakType());
		managed.setFrameMaterial(bs.getFrameMaterial());
		managed.setSuspension(bs.getSuspension());
		managed.setTireSize(bs.getTireSize());
		managed.setType(bs.getType());
		em.persist(managed);
		
		return managed;
	}
	@Override
	public List<Bikeshop> findBikeByFrameMaterial(String frameMaterial) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Bikeshop> findBikeByType(String brand) {
		String jpql = "SELECT b FROM Bikeshop b";
		List<Bikeshop> bikes = em.createQuery(jpql, Bikeshop.class).getResultList();
		return bikes;
	}
	
	@Override
	public int id(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public Bikeshop findBikeShopById(int n) {
		String jpql = "SELECT b FROM Bikeshop b WHERE b.id = :n";
		Bikeshop bike = em.createQuery(jpql, Bikeshop.class).setParameter("n",  n).getSingleResult();
		return bike;
	}

	@Override
	public List<Bikeshop> findBikeShopByKeyword(String kw) {
//		String jpql = "SELECT id, type, frameMaterial, brand, suspension, tireSize, breakType FROM Bikeshop WHERE brand LIKE :kw ";
		String jpql = "SELECT b FROM Bikeshop b WHERE b.brand LIKE :kw ";
		List<Bikeshop> bikes = em.createQuery(jpql, Bikeshop.class).setParameter("kw", "%" + kw + "%").getResultList();
		return bikes;
	}

	@Override
	public Address createAddress(String street, String city, String state, String zip) {
		// TODO Auto-generated method stub
		return null;
	}


}
