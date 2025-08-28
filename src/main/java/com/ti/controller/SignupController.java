package com.ti.controller;

import com.ti.dao.ProfileRepository;
import com.ti.dao.SignupEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SignupController {
	
	@Autowired
	private ProfileRepository profileRepository;
	
	@GetMapping({"/","showAllSignups"})
	public String showAllData(HttpServletRequest req) {
			List<SignupEntity> signupEntities =profileRepository.findAll();
			req.setAttribute("ahahData", signupEntities);
			 return "reviewSignup";  //WEB-INF/pages/reviewSignup.jsp
	}
	
	
	@GetMapping("deleteRecord")
	public String deleteData(HttpServletRequest req) {
		   String username=req.getParameter("uname");
		   profileRepository.deleteByUsername(username);
			return "redirect:/";
	}
	
	@GetMapping("/msignip")
	public String showSignup() {
		 return "signup";  //WEB-INF/pages/signup
	}
	
	@PostMapping("/signup")
	public String postData(@ModelAttribute SignupEntity eSignupEntity) {
		profileRepository.save(eSignupEntity);
		 return "redirect:/";  //WEB-INF/pages/reviewSignup.jsp
	}
	

}
