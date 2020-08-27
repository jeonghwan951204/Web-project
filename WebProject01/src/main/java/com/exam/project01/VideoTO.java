package com.exam.project01;

public class VideoTO {
	private String thumb;
	private String src;
	private String subject;
	private String writer;
	private int hit;
	public String getThumb() {
		return thumb;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setThumb(String thumb) {
		this.thumb = thumb;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
}
