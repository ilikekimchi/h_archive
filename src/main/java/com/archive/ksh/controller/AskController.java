package com.archive.ksh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.archive.ksh.model.Ask;
import com.archive.ksh.service.AskService;

@Controller
@RequestMapping("/ask")
public class AskController {
	
	@Autowired
	AskService service;
	
	final String path = "ask/";
	
	@GetMapping("")	
	String askList(Model model) {	// user - list page 
		List<Ask> list = service.userAskList();
		model.addAttribute("askList", list);
		return path + "ask";
	}
	
	@PostMapping("/question")
	String questionAdd(Ask ask) {	// user - question add
		service.questionAdd(ask);
		return "redirect:/ask"; 
	}
		
	@GetMapping("/list1")
	String unansweredList(Model model) {	//	admin - list page 
		List<Ask> list = service.unansweredList();
		model.addAttribute("askList", list);
		return path + "list1";
	}
	
	@GetMapping("/list2")
	String answerList(Model model) {	//	admin - list page 
		List<Ask> list = service.answerList();
		model.addAttribute("askList", list);
		return path + "list2";
	}
	
	@PostMapping("/list/ans_add")
	String answer(Ask item) {	// admin - answer add
	
		service.answerAdd(item);
		return path + "list1"; // page reload (js:location.reload())
	}
	
	@GetMapping("{askid}/question_delete")	// change DeleteMapping
	String questionDelete(@PathVariable int askid) {	// admin - user question delete
		service.questionDelete(askid);
		return path + "list2"; // page reload (js:location.reload())
	}
	
	@GetMapping("{askid}/answer_delte")	// change DeleteMapping
	String answerDelete(@PathVariable int askid) {	// admin - answer delete
		service.answerDelete(askid);
		return path + "list2"; // page reload (js:location.reload())
	}
	
}
