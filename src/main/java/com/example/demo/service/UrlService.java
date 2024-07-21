package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entity.Url;
import com.example.demo.entity.User;
import com.example.demo.repository.UrlRepository;

@Service
public class UrlService {
	@Autowired
	UrlRepository ur;
	
	public Url saveUrl(Url u) {
		return ur.save(u);
	}
	
	public Url getUrl(int id) {
		return ur.findById(id).orElse(null);
	}
	
	public Url getUrlByCode(String code) {
	     return ur.findByCode(code);
	}
	
	public List<Url> getUrlList(User u){
		List<Url> l = (List<Url>) ur.findAllByU(u);
		return l;
	}
}
