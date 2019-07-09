package com.skilldistillery.bikeshop.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.skilldistillery.bikeshop.entities.Bikeshop;
@Transactional
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
//		em.getTransaction().begin();
		em.persist(bikeshop);
		em.flush();
//		em.getTransaction().commit();
//		em.clear();
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
//		managed.setBikeShop(bikeshop.getBikeShop());
		em.getTransaction().commit();
		String jpql = "SELECT b FROM Bikeshop b WHERE b.brand LIKE :id ";
		List<Bikeshop> bikes = em.createQuery(jpql, Bikeshop.class).setParameter("id", "%" + id + "%").getResultList();
		em.close();
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
	public void deleteBikeShop(String bikeShopId) {
		String jpql = "SELECT b FROM Bikeshop b WERE id = bikeShopId";
		return;
	}
	@Override
	public int id(int id) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public Bikeshop findBikeShopById(int n) {
		String jpql = "SELECT b FROM Bikeshop b WHERE b.Id =n";
		Bikeshop bike = em.createQuery(jpql, Bikeshop.class).setParameter("n", "%" + n + "%").getSingleResult();
		return bike;
	}

	@Override
	public List<Bikeshop> findBikeShopByKeyword(String kw) {
//		String jpql = "SELECT id, type, frameMaterial, brand, suspension, tireSize, breakType FROM Bikeshop WHERE brand LIKE :kw ";
		String jpql = "SELECT b FROM Bikeshop b WHERE b.brand LIKE :kw ";
		List<Bikeshop> bikes = em.createQuery(jpql, Bikeshop.class).setParameter("kw", "%" + kw + "%").getResultList();
		return bikes;
	}

}
