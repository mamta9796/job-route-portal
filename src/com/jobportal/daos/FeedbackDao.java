package com.jobportal.daos;

import java.util.List;

import com.jobportal.models.Job;
import com.jobportal.models.feedback;

public interface FeedbackDao {
	public boolean feedback(feedback feedbackObj);
	public List<feedback> getFeedback(); 
}
