package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entity.Url;
import com.example.demo.entity.User;

@Repository
public interface UrlRepository extends JpaRepository<Url, Integer>{
	Url findByCode(String code);
	List<Url> findAllByU(User u);
}
