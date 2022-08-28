package com.archive.ksh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.archive.ksh.model.About;
import com.archive.ksh.service.AboutService;

@Controller
@RequestMapping("/about")
public class AboutController {
	
	@Autowired
	AboutService service;
	
	final String path = "about/";
	
	@GetMapping("")
	String getPage(Model model) {
		About item = service.getInfo();
		model.addAttribute("info", item);
		return path + "about";
	}
	
	@GetMapping("/modify")
	String getAboutModify(Model model) {
		About item = service.getInfo();
		model.addAttribute("info", item);		
		return path + "modify";
	}
	
	@PostMapping("/modify")
	String postAboutModify(About item) {
		service.modify(item);
		return "redirect:."; // page reload or back
	}
	
	
}
