package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserInterface extends JpaRepository<User, Integer> {


	User findByName(String userName);

}
