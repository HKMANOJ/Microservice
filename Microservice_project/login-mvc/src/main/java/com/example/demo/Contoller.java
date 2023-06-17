package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class Contoller {
	
	@Autowired
	private UserInterface repo;
	
	
	
	@Autowired
	private RestTemplate restTemplate;
	
	@RequestMapping("/")
	public String home()	{
	
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("userName") String userName,@RequestParam("password") String password,
			Model model ) {
		User u=null;
		try {
			
		u=	repo.findByName(userName);
			
		} catch (Exception e) {
			System.out.println("UserNOTFound");
				
		}
	
		if(u!=null) {
			model.addAttribute("UserName", userName);
			return "Wel";
		}
		model.addAttribute("error", "User not found Kindly Register");
		return  "login";
	
	}
	@RequestMapping("/regiser")
	public String Register()	{
	
		return "Register";
	}
	
	@RequestMapping("/setuser")
	public String goTOMicroservices(@RequestParam("userName") String userName,@RequestParam("password1") String password1,
			@RequestParam("password2") String password2,Model model)	{
	
		if(password1.equals(password2)) {
			
			restTemplate.getForObject("http://localhost:8081/register/"+userName+"/"+password1, String.class);
			model.addAttribute("success", "Your Registation is successfull kindly login");
			
		}else {
			model.addAttribute("fail", "password dosn't match");
		}
		return "login";
	
	}
	


}
