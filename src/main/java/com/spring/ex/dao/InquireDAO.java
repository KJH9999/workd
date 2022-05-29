package com.spring.ex.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.BoardDTO;

@Repository
public interface InquireDAO {
	//���ǻ��� �߰�
	public void insertBoard(String email, String question);
	//�� ���ǻ��� ����Ʈ
	public List<BoardDTO> myinqurie(String email);
	//��ü���ǻ��� ����Ʈ
	public List<BoardDTO> allinqurie();
	//�亯�ϱ�
	public void answer(String idx, String answer);
	//�亯�ȵ� ���ǻ���
	public List<BoardDTO> nullinqurie();

}
