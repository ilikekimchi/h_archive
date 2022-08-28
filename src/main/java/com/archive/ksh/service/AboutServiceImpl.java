package com.archive.ksh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.archive.ksh.dao.AboutDao;
import com.archive.ksh.model.About;

@Service
public class AboutServiceImpl implements AboutService {

	@Autowired
	AboutDao dao;
	
	@Override
	public About getInfo() {
		return dao.getinfo();
	}

	@Override
	public void modify(About item) {
		dao.modify(item);
	}

}
