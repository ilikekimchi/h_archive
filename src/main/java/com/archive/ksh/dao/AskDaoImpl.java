package com.archive.ksh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.archive.ksh.model.Ask;

@Repository
public class AskDaoImpl implements AskDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Ask> userAskList() {
		return sql.selectList("ask.listUser");
	}
	
	@Override
	public void questionAdd(Ask item) {
		sql.insert("ask.questionAdd", item);
	}
	
	@Override
	public List<Ask> unansweredList() {
		return sql.selectList("ask.unansweredList");
	}
	
	@Override
	public List<Ask> answerList() {
		return sql.selectList("ask.answerList");
	}

	@Override
	public void answerAdd(Ask item) {
		sql.update("ask.answerAdd", item);
	}

	@Override
	public void questionDelete(int askid) {
		sql.delete("ask.questionDelete", askid);
	}

	@Override
	public void answerDelete(int askid) {
		sql.delete("ask.answerDelete", askid);
		
	}

}
