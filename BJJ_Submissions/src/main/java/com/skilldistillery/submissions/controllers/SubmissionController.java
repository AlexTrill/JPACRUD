package com.skilldistillery.submissions.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.submissions.data.SubmissionDAO;
import com.skilldistillery.submissions.etities.Submission;

@Controller
public class SubmissionController {

	@Autowired
	private SubmissionDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {

		List<Submission> subs = dao.displayAll();
		model.addAttribute("subs", subs);

		return "index";
	}

	@RequestMapping(path = "getSubById.do")
	public String showSubmission(Integer sid, Model model) {
		Submission subs = dao.findById(sid);
		model.addAttribute("subs", subs);
		return "show";
	}

	@RequestMapping(path = "addSubmission.do", method = RequestMethod.POST)
	public ModelAndView newSubmission(Submission sub) {
		dao.createSubmission(sub);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("success");
		return mv;
	}

	@RequestMapping(path = "createPage.do")
	public String createPage() {
		return "create";
	}
}
