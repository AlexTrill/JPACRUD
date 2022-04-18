package com.skilldistillery.submissions.data;

import java.util.List;

import com.skilldistillery.submissions.etities.Submission;

public interface SubmissionDAO {
	
	
		
		
		public Submission updateSubmission(int id, Submission submission);
		
		public void deleteSubmission(Submission s);
	
		public Submission createSubmission(Submission submission);

		public List<Submission> displayAll();

		public Submission findById(Integer sid);
		
}
