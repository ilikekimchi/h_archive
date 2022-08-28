package com.archive.ksh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.archive.ksh.model.Post;
import com.archive.ksh.service.PostService;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	PostService service;
	
	final String path = "post/";
		
	@GetMapping("/view")
	Post PostInfo(@RequestBody int postid) throws Exception {
		Post item = service.postInfo(postid);
				
		return item;
	}
	
	@GetMapping("/list")
	String postList(Model model) {	// admin - list page
		List<Post> list = service.postList();
		model.addAttribute("postList", list);
		return path + "list";
	}

	
	@PostMapping("/add")
	String postAdd(Post item) {	// admin - post add
		service.postAdd(item);
		return "redirect:list";
	}
	
	@GetMapping("/modify")
	String postModify(int postid, Model model) {	// admin - modify page 
		Post item = service.postInfo(postid);
		model.addAttribute("postInfo", item);
		return path + "modify";
	}
	
	@PostMapping("/modify") 
	String postModify(Post item) {	// admin - modify request
		service.postModify(item);
		return "redirect:."; 
	}
	
	@GetMapping("/delete")
	String postDelete(int postid) {	// admin - post delete request
		service.postDelete(postid);
		
		return "redirect:list";
	}
	
	
}
