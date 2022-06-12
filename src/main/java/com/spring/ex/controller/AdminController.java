package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dto.BoardDTO;
import com.spring.ex.service.BoardService;
import com.spring.ex.service.InquireService;
import com.spring.ex.service.UserService;

@Controller
public class AdminController {
	
	@Inject
	BoardService boardService;
	@Inject
	UserService userService;
	@Inject
	InquireService inquireService;

	
	@RequestMapping("adminleft2")
	public String adminleft2(Model model) {
		System.out.println("adminleft2");
		return "admin/adminleft2";
	}
	
	@RequestMapping("adminleft")
	public String adminleft(Model model) {
		System.out.println("adminleft");
		return "admin/adminleft";
	}
	
	@RequestMapping("adminmain")
	public String adminmain(HttpServletRequest request, Model model) {
		return "admin/adminmain";
	}
	
	@RequestMapping("admin")
	public String admin(Model model) {
		System.out.println("admin()");
		return "admin/admin";
	}
	
	
	@RequestMapping("userA")
	public String userA(Model model) {
		System.out.println("userA()");
		return "admin/user/userA";
	}
	
	//占쏙옙킹
	@RequestMapping("rankA")
	public String rankA(Model model) {
		System.out.println("rankA()");
		return "admin/user/rank/rankA";
	}
	
	@RequestMapping("showrank")
	public String showrank(Model model) {
		System.out.println("showrank()");
		return "admin/user/rank/showrank";
	}
	
	@RequestMapping("inputrank")
	public String inputrank(Model model) {
		System.out.println("inputrank()");
		return "admin/user/rank/inputrank";
	}

	
	//占쏙옙占싶곤옙占쏙옙(占쏙옙占,환占쏙옙,占썹도,占쏙옙占쏙옙占쏙옙占)
	@RequestMapping("incomeA")
	public String incomeA(Model model) {
		System.out.println("incomeA()");
		return "admin/income/incomeA";
	}

	@RequestMapping("boardA")
	public String boardA(Model model) {
		System.out.println("admin()");
		return "admin/board/boardA";
	}
	//占쏙옙占실삼옙占쏙옙
	@RequestMapping("inquireA")
	public String inquireA(Model model) {
		System.out.println("inquireA()");
		return "admin/board/inquire/inquireA";
	}
	
	@RequestMapping("allinquire")
	public String allinquire(Model model) {
		System.out.println("allinquire()");
		List<BoardDTO> allinquire = inquireService.allinquire();
		model.addAttribute("allinquire", allinquire);
		return "admin/board/inquire/allinquire";
	}
	
	@RequestMapping("nullinquire")
	public String nullinquire(Model model) {
		System.out.println("nullinquire()");
		List<BoardDTO> nullinquire = inquireService.nullinquire();
		model.addAttribute("nullinquire", nullinquire);
		return "admin/board/inquire/nullinquire";
	}
	
	@RequestMapping("answer.do")
	public String answer(@RequestParam String question, Model model) {
		System.out.println("answer.do()");
		return "admin/board/inquire/answer";
	}
	
	@RequestMapping("answerOk")
	public String answer(HttpServletRequest request, Model model) {
		System.out.println("answerOk()");
		model.addAttribute("request", request);
		inquireService.answer(model);
		return "admin/board/inquire/inquireA";
	}
	
	
	
	

}
