package com.blog.model;

import org.springframework.web.multipart.MultipartFile;

public class Blog {
	private int blogid;
    private String blogtitle;
    private String article;
    private String time;
	private String image;
	private MultipartFile file;
	public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	public String getBlogtitle() {
		return blogtitle;
	}
	public void setBlogtitle(String blogtitle) {
		this.blogtitle = blogtitle;
	}
	public String getArticle() {
		return article;
	}
	public void setArticle(String article) {
		this.article = article;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
