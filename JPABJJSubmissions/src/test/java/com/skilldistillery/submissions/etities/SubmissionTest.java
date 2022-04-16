package com.skilldistillery.submissions.etities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SubmissionTest {

	private static EntityManagerFactory emf; 
	private EntityManager em;
	private Submission submission;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPABJJSubmissions");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		submission = em.find(Submission.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		submission = null;
	}

	@Test
	void test_submission_entity_mapping() {
		assertNotNull(submission);
		assertEquals("kimura", submission.getName());
	}

}
