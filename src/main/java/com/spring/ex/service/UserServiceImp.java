package com.spring.ex.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;
import com.spring.ex.dto.UserDTO;

@Service
public class UserServiceImp implements UserService{

	@Inject
	UserDAO userDAO;
	
	@Override
	public List<UserDTO> userlist() {
		return userDAO.userlist();
	}
	
	@Override
	public void insertUser(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String gender = request.getParameter("gender");
		String birth_date = request.getParameter("birth_date");
		
		System.out.println("S"+email+pw+name+number+gender+birth_date);
		
		userDAO.insertUser(email,pw,name,number,gender,birth_date);
	}

	@Override
	public int loginUser(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		System.out.println("SER: "+email+pw);
		
		return userDAO.loginUser(email,pw);
	}

	@Override
	public List<UserDTO> findname(String email) {
		return userDAO.findname(email);
	}

	@Override
	public void updatePw(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
	   
	    System.out.println("s : " + email + " "+ pw);

		userDAO.updatePw(email,pw);
	}

	@Override
	public void updateOther(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		
		System.out.println("s : " + email + " "+ name + " "+ num);
		  
		userDAO.updateOther(email,name,num);
		
	}


		

}
