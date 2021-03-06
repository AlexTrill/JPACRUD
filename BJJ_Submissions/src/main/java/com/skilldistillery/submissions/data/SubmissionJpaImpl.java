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
	public Submission findById(Integer sid) {
		return em.find(Submission.class, sid);

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
		updatedSub.setTutorial(submission.getTutorial());
		updatedSub.setImage(submission.getImage());
		
		
		
		
		
		return submission;
	}

	
	@Override
	public List<Submission> displayAll() {
		
		String jpql =  "SELECT s FROM Submission s";
		
		return em.createQuery(jpql, Submission.class).getResultList();
	}

	@Override
	public void deleteSubmission(Submission s) {

		System.out.println("deleting");
		
		em.remove(s);
		em.flush();
	}

	

	
}
