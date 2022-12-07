package com.website.dto;

import java.util.ArrayList;

public class Board {
	private int no;
	private String title;
	private String content;
	private String author;
	private String resdate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public ArrayList<Board> board_list(){
		ArrayList boardList = null;
		return boardList;
	}
	public void board_write(Board board){
		
	}
	public Board board_read(){
		Board board = null;
		return board;
	}
	public void board_modify(Board board){
		
	}
	public void board_del(int no){
		
	}
	
}
