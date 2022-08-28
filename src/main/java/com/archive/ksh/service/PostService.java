package com.archive.ksh.service;

import java.util.List;

import com.archive.ksh.model.Post;

public interface PostService {

	void postAdd(Post item);

	Post postInfo(int postid);

	List<Post> postList();

	void postModify(Post item);

	void postDelete(int postid);

	

}
