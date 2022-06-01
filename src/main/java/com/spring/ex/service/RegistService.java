package com.spring.ex.service;


import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.spring.ex.dto.RegistDTO;



@Repository 
public interface RegistService {
	public void insert(Model model);
	//����ϱ�
	public void regist(Model model);
	//������
	public void start(Model model);
	//������
	public void end(Model model);
	//�����ϼ�
	public List<RegistDTO> remainingday(String email);
	
	
}
