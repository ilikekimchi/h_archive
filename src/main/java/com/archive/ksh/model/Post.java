package com.archive.ksh.model;

public class Post {

	private int postid;
	private String title;
	private String content;
	private int count;
	
//	@DateTimeFormat(pattern = "yy.MM.dd")
//	private LocalDate date;
	
	private String date;
		
	public int getPostid() {
		return postid;
	}
	public void setPostid(int postid) {
		this.postid = postid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	
	

}
