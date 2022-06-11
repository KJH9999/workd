package com.spring.ex.controller;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dto.BoardDTO;
import com.spring.ex.dto.UserDTO;
import com.spring.ex.service.BoardService;
import com.spring.ex.service.InquireService;
import com.spring.ex.service.RankingService;
import com.spring.ex.service.RegistService;
import com.spring.ex.service.UserService;
import com.spring.ex.service.YoutubeService;

@Controller
public class UserController {

	@Inject
	BoardService boardService;
	@Inject
	UserService userService;
	@Inject
	InquireService inquireService;
	@Inject
	YoutubeService youtubeService;
	@Inject
	RankingService rankingService;
	@Inject
	RegistService registService;

	private LocalDateTime youtubeRefDateTime = LocalDateTime.now();

	@RequestMapping("home")
	public String home(Model model) {
		return "home";
	}

	@RequestMapping("login")
	public String login(Model model) {
		return "User/login";
	}

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
			session.setAttribute("email", email);
			System.out.println("占쎄쉭占쎈�∽옙苑뺧옙�젟O");
			return "home";
		} else {
			model.addAttribute("isLoginFail", true);
			return login(model);
		}
	}

	@RequestMapping("logout")
	public String logout(Model model) {
		return "User/logout";
	}

	@RequestMapping("join")
	public String join(Model model) {
		return "User/join";
	}

	@RequestMapping("joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		userService.insertUser(model);
		rankingService.insert(model);
		registService.insert(model);
		return "home";
	}

	@RequestMapping("inquire")
	public String inquire(HttpServletRequest request, Model model) {
		List<BoardDTO> myinquire = inquireService.myinquire(request.getParameter("email"));
		model.addAttribute("myinquire", myinquire);
		return "User/inquire";
	}

	@RequestMapping("writeinquireOk")
	public String writeinquireOk(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		inquireService.insertInquire(model);
		return "redirect:inquire?email="+request.getParameter("email");
	}

	@RequestMapping("boardWrite")
	public String boardWrite() {
		return "User/boardWrite";
	}

	@RequestMapping("writeOk")
	public String writeOk(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		boardService.insertBoard(model);
		return board(request, model);
	}

	@RequestMapping("board")
	public String board(HttpServletRequest request, Model model) {
		List<BoardDTO> boardlist = boardService.boardList();
		model.addAttribute("request", request);
		model.addAttribute("boardlist", boardlist);

		return "board";
	}

	@ResponseBody
	@RequestMapping(value = "getYoutubeList", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String getYoutubeList(HttpServletRequest request) {
		LocalDateTime currentDateTime = LocalDateTime.now();
		Duration duration = Duration.between(youtubeRefDateTime, currentDateTime);

		if (duration.getSeconds() > 24 * 60 * 60)
			youtubeService.saveRemoteYoutebeList();

		Integer start = Integer.parseInt(request.getParameter("start"));
		Integer bound = Integer.parseInt(request.getParameter("bound"));

		return youtubeService.getYoutubeList(start, bound).toJSONString();
	}
	
	@RequestMapping(value = "contentView.do", method=RequestMethod.GET)
	public String contentview(@RequestParam int idx, Model model) {
		System.out.println("contentView");
		System.out.println("C :" + idx);
		//조회수
		boardService.increaseViewcnt(idx);

		List<BoardDTO> boardlist = boardService.read(idx);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("requset", idx);
		
		return "contentView";
	}
	
	
}
