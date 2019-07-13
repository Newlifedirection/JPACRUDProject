package com.skilldistillery.bikeshop.data;

import java.lang.Thread.State;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.bikeshop.entities.Address;
import com.skilldistillery.bikeshop.entities.Bikeshop;
import com.skilldistillery.bikeshop.entities.Brand;
@Transactional
@Service
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
		Brand brands = em.find(Brand.class, bs.getBrand().getId());
		System.out.println(bs.getAddress().getId());
		Address managedAddress = em.find(Address.class, bs.getAddress().getId());
		managedAddress.setStreet(bs.getAddress().getStreet());
		managedAddress.setCity(bs.getAddress().getCity());
		managedAddress.setState(bs.getAddress().getState());
		managedAddress.setZip(bs.getAddress().getZip());
		em.persist(managedAddress);
		managed.setAddress(managedAddress);
		managed.setBrand(brands);
		managed.setBreakType(bs.getBreakType());
		managed.setFrameMaterial(bs.getFrameMaterial());
		managed.setSuspension(bs.getSuspension());
		managed.setTireSize(bs.getTireSize());
		
		em.persist(managed);
		
		return managed;
	}
	
	@Override
	public Address update(Address a) {
		Address managed1 = em.find(Address.class, a.getId());
		
		managed1.setStreet(a.getStreet());
		managed1.setCity(a.getCity());
		managed1.setState(a.getState());
		managed1.setZip(a.getZip());
		em.persist(managed1);
		
		return managed1;
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


	@Override
	public Address findAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Brand findBrand(String b) {
		String jpql = "SELECT b FROM Brand b WHERE b.name = :input";
		Brand brand = em.createQuery(jpql, Brand.class).setParameter("input", b).getSingleResult();
		return brand;
	}

	@Override
	public List<Brand> findAllBrands() {
		String jpql = "SELECT b FROM Brand b";
		List<Brand> brands = em.createQuery(jpql, Brand.class).getResultList();
		return brands;
	}



}
