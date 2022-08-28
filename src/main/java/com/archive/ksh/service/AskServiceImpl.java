package com.archive.ksh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.archive.ksh.dao.AskDao;
import com.archive.ksh.model.Ask;


@Service
public class AskServiceImpl implements AskService {

	@Autowired
	AskDao dao;

	@Override
	public List<Ask> userAskList() {
		return dao.userAskList();
	}
	
	@Override
	public void questionAdd(Ask item) {
		dao.questionAdd(item);		
	}

	@Override
	public List<Ask> unansweredList() {
		return dao.unansweredList();
	}
	
	@Override
	public List<Ask> answerList() {
		return dao.answerList();
	}

	@Override
	public void answerAdd(Ask item) {
		dao.answerAdd(item);
	}

	@Override
	public void questionDelete(int askid) {
		dao.questionDelete(askid);
		
	}

	@Override
	public void answerDelete(int askid) {
		dao.answerDelete(askid);
		
	}


}
