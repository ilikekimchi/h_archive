package com.archive.ksh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.archive.ksh.dao.PostDao;
import com.archive.ksh.model.Post;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	PostDao dao;
	
	@Override
	public void postAdd(Post item) {
		
		dao.postAdd(item);
	}

	@Override
	public Post postInfo(int postid) {
		return dao.postInfo(postid);
	}

	@Override
	public List<Post> postList() {
		return dao.postList();
	}

	@Override
	public void postModify(Post item) {
		dao.postModify(item);		
	}

	@Override
	public void postDelete(int postid) {
		dao.postDelte(postid);
		
	}

	

	
	
}
