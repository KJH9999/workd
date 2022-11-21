package com.spring.ex.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.spring.ex.dto.BoardDTO;

@Repository 
public interface BoardService {
	
	//글쓰기
	public void insertBoard(Model model);
	//list
	public List<BoardDTO> boardList();
	//상세
	public List<BoardDTO> read(int idx);
	//조회수 증가
	void increaseViewcnt(int idx);
	//게시글 삭제
	public void delete(int idx);
	public void delete(String idx);
	public List<BoardDTO> findboard(String email);
	//수정하기
	public void modifyBoard(Model model);
	//페이징
	public int count() throws Exception; 
	public List<BoardDTO> listPage(int displayPost, int postNum) throws Exception;
	//검색
	public List<BoardDTO> search(String title);



}
