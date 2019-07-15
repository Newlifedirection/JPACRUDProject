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

class AddressTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	Address a; 

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
		a = em.find(Address.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
//		a = null;
	}

//	@Disabled
//	@Test
//	void test() {
//		fail("Not yet implemented");
//	}

	@Test
	void test_Address_mapping() {
		assertEquals("150 W Colorado Ave", a.getStreet());
	}
	@Test
	void test_Address_mapping_city() {
		assertEquals("Telluride", a.getCity());
	}
	@Test
	void test_Address_mapping_state() {
		assertEquals("CO", a.getState());
	}
	@Test
	void test_Address_mapping_zip() {
		assertEquals("81435", a.getZip());
	}
}
