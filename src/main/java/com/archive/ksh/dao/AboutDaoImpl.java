package com.archive.ksh.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.archive.ksh.model.About;

@Repository
public class AboutDaoImpl implements AboutDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public About getinfo() {
		return sql.selectOne("about.info");
	}

	@Override
	public Object modify(About item) {
		return sql.update("about.modify", item);
	}

}
