package com.skilldistillery.submissions.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.submissions.etities.Submission;

@Service
@Transactional
public class SubmissionJpaImpl implements SubmissionDAO {
	
	

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Submission findById(int id) {
		
		return em.find(Submission.class, id);
	}

	@Override
	public Submission createSubmission(Submission submission) {
		
		
		System.out.println("adding");
		  em.persist(submission);
		
		  return submission;
		
		
		
	}

	@Override
	public Submission updateSubmission(int id, Submission submission) {
		
		Submission updatedSub = em.find(Submission.class, id);
		
		updatedSub.setName(submission.getName());
		updatedSub.setType(submission.getType());
		updatedSub.setGiRequired(submission.getGiRequired());
		updatedSub.setExecutedFrom(submission.getExecutedFrom());
		updatedSub.setSpecialists(submission.getSpecialists());
		updatedSub.setAka(submission.getAka());
		
		
		
		
		
		return submission;
	}

	@Override
	public Boolean deleteSubmission(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Submission> displayAll() {
		
		String jpql =  "SELECT s FROM Submission s";
		
		return em.createQuery(jpql, Submission.class).getResultList();
	}

	
}
