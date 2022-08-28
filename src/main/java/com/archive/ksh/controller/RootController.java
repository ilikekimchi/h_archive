package com.archive.ksh.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.archive.ksh.model.Post;
import com.archive.ksh.service.PostService;


@Controller
public class RootController {

	@Autowired
	PostService service;

	@RequestMapping("/")
	String main(Model model) {
		List<Post> list = service.postList();
		
		model.addAttribute("postList", list);
		return "/main";
	}

	@RequestMapping("/admin")
	String accessList() {

		return "/admin";
	}

}
