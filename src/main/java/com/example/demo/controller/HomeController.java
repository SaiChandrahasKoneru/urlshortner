package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.example.demo.entity.Url;
import com.example.demo.entity.User;
import com.example.demo.service.UrlService;
import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import jakarta.websocket.server.PathParam;

@Controller
public class HomeController {
	
	@Autowired
	UserService us;
	@Autowired
	UrlService urls;	
	
	
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register.jsp";
	}
	
	@PostMapping("/register")
	public RedirectView userRegister(@PathParam(value = "email") String email,@PathParam(value = "username") String username,
									 @PathParam(value = "password") String password,@PathParam(value = "confirm") String confirm, RedirectAttributes r) {
		User u = new User();
		u.setEmail(email);
		u.setUsername(username);
		u.setPassword(password);
		us.saveUser(u);
		return new RedirectView("/register");
		
	}
	
	@GetMapping("/login")
	public String login() {
		return "login.jsp";
	}
	
	@PostMapping("/login")
	public RedirectView userLogin(@PathParam(value = "email") String email,@PathParam(value = "password") String password,HttpSession hs) {
		User u = us.getUser(email);
		hs.setAttribute("userobj", u);
		if(us.passwordValidate(password, u.getPassword()))
			return new RedirectView("/generate");
		return new RedirectView("/register");
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		
		return "dashboard.jsp";
	}
	
	@GetMapping("/generate")
	public String generate(Model m,HttpSession hs) {
		User usr = (User) hs.getAttribute("userobj");
		if(usr==null)
			return "redirect:/login";

		List<Url> l = urls.getUrlList(usr);
		m.addAttribute("urllist",l);
		return "generate.jsp";
	}
	
	@PostMapping("/generate")
	public RedirectView generateCode(@PathParam(value = "link") String link,@PathParam(value = "code") String code, HttpSession hs,RedirectAttributes r) {
		User usr = (User) hs.getAttribute("userobj");
		if(usr==null)
			return new RedirectView("/login");

		//r.addFlashAttribute("urllist",l);
		Url u = new Url();
		u.setCode(code);
		u.setLink(link);
		u.setU(usr);
		urls.saveUrl(u);
		return new RedirectView("/generate");
		
	}
	
	@GetMapping("/{code}")
	public RedirectView redirect(@PathVariable String code) {
		Url u = urls.getUrlByCode(code);
		if(u!=null) {
			String open = u.getLink();
		return new RedirectView(open);
		}
		return new RedirectView("/index");
	}
}
