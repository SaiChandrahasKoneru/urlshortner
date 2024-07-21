package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import com.example.demo.entity.User;
//import com.example.demo.repository.UserRepository;
import com.example.demo.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	UserRepository ur;
	@Autowired
	PasswordManager pm;
	public User saveUser(User u) {
		if(u==null)
			return null;
		u.setPassword(pm.encodePass(u.getPassword()));
		return ur.save(u);
	}
	
	public Boolean passwordValidate(String pass,String passdb) {
		return pm.compare(pass, passdb);
	}
	
	public User getUser(String email) {
		return ur.findById(email).orElse(null);
	}
}
