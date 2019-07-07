package com.skilldistillery.bikeshop.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class BikeShopTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Bikeshop bs;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BikeShop");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		bs = em.find(Bikeshop.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		bs = null;
	}

	@Test
	void test() {
//		BikeShop bs = em.find(BikeShop.class, 1);
//		assertNotNull(bs);
		assertEquals(1, bs.getId());
//		fail("Not yet implemented");
	}

}
