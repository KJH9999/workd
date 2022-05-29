package com.spring.ex.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.spring.ex.dto.BoardDTO;

@Repository 
public interface InquireService {
	//���ǻ��� �߰�
	public void insertInquire(Model model);
	//���� ���ǻ��� ����Ʈ
	public List<BoardDTO> myinquire(String email);
	//��ü ���ǻ��� ����Ʈ(admin)
	public List<BoardDTO> allinquire();
	//�亯�ϱ�
	public void answer(Model model);
	//�亯�ȵ� ���ǻ���(admin)
	public List<BoardDTO> nullinquire();

}
