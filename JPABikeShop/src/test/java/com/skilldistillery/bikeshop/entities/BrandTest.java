package com.skilldistillery.bikeshop.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

class BrandTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	Brand b;
	

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
		b = em.find(Brand.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

//	@Disabled
//	@Test
//	void test() {
//		fail("Not yet implemented");
//	}

	@Test
	void test_Brand_mapping() {
		assertEquals("Giant", b.getName());
	}
	@Test
	void test_Brand_mapping_phone() {
		assertEquals("7191234567", b.getPhone());
	}
}
