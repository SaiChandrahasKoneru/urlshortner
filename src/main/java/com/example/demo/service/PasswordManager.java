package com.example.demo.service;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class PasswordManager {
	@Bean
	public PasswordEncoder getPasswordEncoder(){
	    return new BCryptPasswordEncoder();
	}
	
	public String encodePass(String s) {
		return getPasswordEncoder().encode(s);
	}
	
	public Boolean compare(String pass,String passdb) {
		return getPasswordEncoder().matches(pass,passdb);
	}

}
