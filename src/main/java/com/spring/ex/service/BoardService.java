package com.spring.ex.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.spring.ex.dto.BoardDTO;

@Repository 
public interface BoardService {
	
	//�۾���
	public void insertBoard(Model model);
	//list
	public List<BoardDTO> boardList();
	//��
	public List<BoardDTO> read(int idx);
	//��ȸ�� ����
	void increaseViewcnt(int idx);
	//�Խñ� ����
	public void delete(int idx);

}
