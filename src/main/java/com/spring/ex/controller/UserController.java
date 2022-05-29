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
import com.spring.ex.service.InquireService;
import com.spring.ex.service.UserService;

@Controller
public class UserController {

	@Inject
	BoardService boardService;
	@Inject
	UserService userService;
	@Inject
	InquireService inquireService;
	
	@RequestMapping("login")
	public String login(Model model) {
		return "User/login";
	}

	// 로그인 세션기능 추가
	@RequestMapping("loginOk")
	public String loginOk(HttpServletRequest request, Model model) {

		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		
		List<UserDTO> userlist = userService.findname(email);
		
		model.addAttribute("request", request);
		model.addAttribute("userlist", userlist);

		int ck = userService.loginUser(model);
		System.out.println(ck);
		if (ck != 0) {
			System.out.println("ok");
			session.setAttribute("email", email);
			System.out.println("세션설정O");
			return "User/loginOkbeta";
		} else {
			System.out.println("no");
			return "home";
		}

	}

	@RequestMapping("join")
	public String join(Model model) {
		return "join";
	}


}
