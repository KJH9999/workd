package com.spring.ex.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.RegistDTO;


@Repository
public interface RegistDAO {
	public void insert(String email, String name);
	//����ϱ�
	public void regist(String email, String slct, String pay);
	//������
	public void start(String email);
	//������
	public void end(String email);
	//�����ϼ�
	public List<RegistDTO> remainingday(String email);

}
