package com.spring.ex.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.spring.ex.dto.UserDTO;

@Repository 
public interface UserService {

	//list�̱�
	public List<UserDTO> userlist();
	// ȸ�� ����
	public void insertUser(Model model);
	//�α���
	public int loginUser(Model model);
	//�α׾ƿ�X
	//�̸�ã��
	public List<UserDTO> findname(String email);
	//�������
	public void updatePw(Model model);
	//��������
	public void updateOther(Model model);
	
	
	
}
