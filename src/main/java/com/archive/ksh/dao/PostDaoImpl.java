package com.archive.ksh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.archive.ksh.model.Post;

@Repository
public class PostDaoImpl implements PostDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public void postAdd(Post item) {
		
		sql.insert("post.add", item);
	}

	@Override
	public Post postInfo(int postid) {
		return sql.selectOne("post.postInfo", postid);
	}

	@Override
	public List<Post> postList() {
		return sql.selectList("post.list");
	}

	@Override
	public void postModify(Post item) {
		sql.update("post.modify", item);		
	}

	@Override
	public void postDelte(int postid) {
		sql.delete("post.delete", postid);
		
	}

	

}
