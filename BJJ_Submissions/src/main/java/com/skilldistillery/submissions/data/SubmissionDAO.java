package com.skilldistillery.submissions.data;

import java.util.List;

import com.skilldistillery.submissions.etities.Submission;

public interface SubmissionDAO {
	
	
		public Submission findById(int id);
		
		public Submission updateSubmission(int id, Submission submission);
		
		public Boolean deleteSubmission(int id);
	
		public Submission createSubmission(Submission submission);

		public List<Submission> displayAll();
		
}
