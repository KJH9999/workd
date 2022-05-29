package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dto.UserDTO;
import com.spring.ex.service.BoardService;
import com.spring.ex.service.UserService;

@Controller
public class UserController {

	@Inject
	UserService userService;
	
	@RequestMapping("userlist")
	public String userlist(Model model) {
		System.out.println("UserService = " + userService);
		List<UserDTO> userlist = userService.userlist();
		model.addAttribute("userlist", userlist);
		return "user_list";
	}

	@RequestMapping("home")
	public String homew(Model model) {
		return "home";
	}

	@RequestMapping("login")
	public String login(Model model) {
		return "login";
	}

	// 로그인 세션기능 추가
	@RequestMapping("loginOk")
	public String loginOk(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		System.out.println("login()");
		String email = request.getParameter("email");
		System.out.println("loginOK: "+ email);
		
		List<UserDTO> userlist = userService.findname(email);
		
		model.addAttribute("request", request);
		model.addAttribute("userlist", userlist);

		int ck = userService.loginUser(model);
		System.out.println(ck);
		if (ck != 0) {
			System.out.println("ok");
			session.setAttribute("email", email);
			System.out.println("세션설정O");
			return "loginok";
		} else {
			System.out.println("no");
			return "home";
		}

	}

	@RequestMapping("join")
	public String join(Model model) {
		return "join";
	}

	@RequestMapping("joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		System.out.println("write()");
		model.addAttribute("request", request);
		userService.insertUser(model);
		return "home";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session, Model model) {
		System.out.println("logout()");
		session.invalidate();
		return "home";
	}
	
	@RequestMapping("update")
	public String update(HttpSession session, Model model) {
		return "update";
	}
	
	@RequestMapping("update_pw")
	public String update_pw(HttpSession session, Model model) {
		return "update_pw";
	}
	
	@RequestMapping("update_other")
	public String update_other(HttpSession session, Model model) {
		return "update_other";
	}
	
	@RequestMapping("updatePwOk")
	public String update_pwOk(HttpServletRequest request, Model model) {				
		HttpSession session = request.getSession();
		System.out.println("update_pwOk()");
		model.addAttribute("request", request);
		userService.updatePw(model); 
		session.invalidate();
		return "home";
	}
	
	@RequestMapping("updateOtherOk")
	public String update_otherOK(HttpServletRequest request, Model model) {
		System.out.println("updateOtherOk()");
		model.addAttribute("request", request);
		userService.updateOther(model);
		return "loginok";	
	}


}
