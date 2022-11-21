package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.BoardDTO;

@Repository
public interface BoardDAO {
	//게시글 추가
	public void insertBoard(String email, String title, String content, String hit);
	//list
	public List<BoardDTO> boardlist();
	//조회수 증가
	public void increaseHit(int idx);
	//상세내용
	public List<BoardDTO> read(int idx);
	//게시글삭제
	public void delete(int idx);
	public List<BoardDTO> findboard(String email);
	public void delete(String idx);
	//게시글수정
	public void modifyBoard(String idx,String title,String content);
	public int count();
	public List<BoardDTO> listPage(int displayPost, int postNum);
	//검색
	public List<BoardDTO> search(String title);
}
