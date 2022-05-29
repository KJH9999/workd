package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.BoardDTO;

@Repository
public interface BoardDAO {
	//�Խñ� �߰�
	public void insertBoard(String email, String title, String content, String hit);
	//list
	public List<BoardDTO> boardlist();
	//��ȸ�� ����
	public void increaseHit(int idx);
	//�󼼳���
	public List<BoardDTO> read(int idx);
	//�Խñۻ���
	public void delete(int idx);
	
}
