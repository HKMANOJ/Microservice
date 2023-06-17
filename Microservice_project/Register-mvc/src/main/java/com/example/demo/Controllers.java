package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class Controllers {
	
	@Autowired
	private UserInterface repo;
	
	
	
	@RequestMapping("/register/{userName}/{password}")
	public String Register(@PathVariable("userName") String userName,@PathVariable("password") String password) {
		System.out.println("===Register microservice from login microservice start");
		User u=new User();
		u.setId(1);
		u.setName(userName);
		u.setPassword(password);
		repo.save(u);
		System.out.println("===Register microservice from login microservice end");
		return "Registered";
	}


}
