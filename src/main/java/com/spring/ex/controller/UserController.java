package com.spring.ex.controller;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.dto.BoardDTO;
import com.spring.ex.dto.RankingDTO;
import com.spring.ex.dto.RegistDTO;
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
		List<RankingDTO> benchlist = rankingService.benchlist();
		List<RankingDTO> deadlist = rankingService.deadlist();
		List<RankingDTO> squatlist = rankingService.squatlist();
		List<RankingDTO> totallist = rankingService.totallist();
		model.addAttribute("benchlist", benchlist);
		model.addAttribute("deadlist", deadlist);
		model.addAttribute("squatlist", squatlist);
		model.addAttribute("totallist", totallist);
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
			return "home";
		} else {
			model.addAttribute("isLoginFail", true);
			return login(model);
		}
	}

	@RequestMapping("registration")
	public String registration(Model model) {
		return "registration";
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

	@RequestMapping(value = "emailCk1", method = { RequestMethod.GET })
	public String ex01(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		System.out.println("ckck");
		return "emailCk_beta";
	}

	@RequestMapping(value = "emailCk", method = { RequestMethod.GET })
	@ResponseBody
	public int idcheck(HttpServletRequest req, HttpServletResponse resp, HttpSession session, String email) {
		int result = userService.emailChk(req.getParameter("email"));
		System.out.println(result);
		return result;
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
		return "redirect:inquire?email=" + request.getParameter("email");
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

	@RequestMapping(value = "contentView.do", method = RequestMethod.GET)
	public String contentview(@RequestParam int idx, Model model) {
		System.out.println("contentView");
		System.out.println("C :" + idx);
		boardService.increaseViewcnt(idx);

		List<BoardDTO> boardlist = boardService.read(idx);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("requset", idx);

		return "contentView";
	}

	@RequestMapping("regist")
	public String regist() {
		return "User/regist";
	}

	@RequestMapping("registOk")
	public String registOk(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		registService.regist(model);
		registService.start(model);
		registService.end(model);
		return "home";
	}

	@RequestMapping("myinformation")
	public String myinformation(HttpServletRequest request, Model model) {
		String email = request.getParameter("email");
		List<UserDTO> userlist = userService.findname(email);
		List<RegistDTO> registlist = registService.findregist(email);
		List<BoardDTO> boardlist = boardService.findboard(email);
		model.addAttribute("userlist", userlist);
		model.addAttribute("registlist", registlist);
		model.addAttribute("boardlist", boardlist);

		return "User/myinformation";
		// 작업수행

	}

	@RequestMapping("event")
	public String event() {
		return "event";
	}

	@RequestMapping("delBoard")
	public String delBoard(HttpServletRequest request, Model model) {
		String idx = request.getParameter("idx");
		boardService.delete(idx);

		String email = request.getParameter("email");
		List<UserDTO> userlist = userService.findname(email);
		List<RegistDTO> registlist = registService.findregist(email);
		List<BoardDTO> boardlist = boardService.findboard(email);
		model.addAttribute("userlist", userlist);
		model.addAttribute("registlist", registlist);
		model.addAttribute("boardlist", boardlist);
		return myinformation(request, model);
	}

	@RequestMapping(value = "modifyBoard.do", method = RequestMethod.GET)
	public String modifyBoard(@RequestParam int idx, Model model) {
		System.out.println("modifyBoard");
		System.out.println("C :" + idx);
		boardService.increaseViewcnt(idx);

		List<BoardDTO> boardlist = boardService.read(idx);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("requset", idx);

		return "User/modifyBoard";
	}

	@RequestMapping("modifyBoardOk")
	public String modifyBoardOk(HttpServletRequest request, Model model) {
		String email = request.getParameter("email");

		model.addAttribute("request", request);
		boardService.modifyBoard(model);
		List<UserDTO> userlist = userService.findname(email);
		List<RegistDTO> registlist = registService.findregist(email);
		List<BoardDTO> boardlist = boardService.findboard(email);
		model.addAttribute("userlist", userlist);
		model.addAttribute("registlist", registlist);
		model.addAttribute("boardlist", boardlist);
		return myinformation(request, model);
	}

	@RequestMapping("modifyUser")
	public String modifyUser(HttpServletRequest request, Model model) {
		String email = request.getParameter("email");
		System.out.println(email + "  MU");
		List<UserDTO> userlist = userService.findname(email);
		model.addAttribute("userlist", userlist);
		
		return "User/modifyUser";
	}
	
	@RequestMapping("modifyUserOk")
	public String modifyUserOk(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		String email = request.getParameter("email");
		userService.modifyUser(model);
		List<UserDTO> userlist = userService.findname(email);
		List<RegistDTO> registlist = registService.findregist(email);
		List<BoardDTO> boardlist = boardService.findboard(email);
		model.addAttribute("userlist", userlist);
		model.addAttribute("registlist", registlist);
		model.addAttribute("boardlist", boardlist);
		return myinformation(request, model);
	}
	
	@RequestMapping("listPage")
	public String listPage(Model model, @RequestParam("num") int num) throws Exception {
		int count = boardService.count();
		System.out.println(count + "  C");
		int postNum = 20;
		int pageNum = (int) Math.ceil((double) count / postNum);
		System.out.println(pageNum + "  C P ");
		int displayPost = (num - 1) * postNum;
		System.out.println(displayPost + "  C D ");

		List<BoardDTO> boardlist = boardService.listPage(displayPost, postNum);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("pageNum", pageNum);

		return "listPage";
	}
	
	@RequestMapping("search")
	public String search(HttpServletRequest request, Model model) {
		System.out.println("CON");
		String title = request.getParameter("title");
		List<BoardDTO> boardlist = boardService.search(title);
		model.addAttribute("boardlist", boardlist);
		return "board";
	}
	
	
}
