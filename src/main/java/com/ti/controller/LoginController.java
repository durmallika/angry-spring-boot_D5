package com.ti.controller;

import com.ti.dao.ProfileRepository;
import com.ti.dao.SignupEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Controller
public class LoginController {
	
	@Autowired
	private ProfileRepository profileRepository;
	
	@GetMapping("/callback")
	public String callback() {
		 return "callback";  //WEB-INF/pages/login.jsp
	}
	
	@GetMapping("/obj")
	public String showObj() {
		 return "jobj";  //WEB-INF/pages/login.jsp
	}
	
	@GetMapping("/foo")
	public String show() {
		 return "foo";  //WEB-INF/pages/login.jsp
	}
	
	@GetMapping("/auth")
	public String showLoginPage() {
		 return "login";  //WEB-INF/pages/login.jsp
	}
	
	//<form action="auth" method="POST">
	@PostMapping("/auth")
	public String postLogin(HttpServletRequest req) {
		
		String uname=req.getParameter("uname");
		String ppass=req.getParameter("ppass");
		
		Optional<SignupEntity> optional =profileRepository.findByUsernameAndPassword(uname, ppass);
		
		if(optional.isPresent()) {
			req.setAttribute("profile", optional.get());
			 return "home";
		}else {
			req.setAttribute("cpapa", "Hey! your username and password are not matched!!");
			return "login";  //WEB-INF/pages/login.jsp	
		}
		 
	}

}
