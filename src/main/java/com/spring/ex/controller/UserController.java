package com.spring.ex.controller;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.time.Duration;
import java.time.LocalDateTime;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ex.dto.UserDTO;
import com.spring.ex.service.BoardService;
import com.spring.ex.service.InquireService;
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
	
	private LocalDateTime youtubeRefDateTime = LocalDateTime.now();

	@RequestMapping("login")
	public String login(Model model) {
		return "User/login";
	}

	// �α��� ���Ǳ�� �߰�
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
			System.out.println("���Ǽ���O");
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

	@ResponseBody
	@RequestMapping("getYoutubeList")
	public String getYoutubeList(HttpServletRequest request) {
		LocalDateTime currentDateTime = LocalDateTime.now();
		Duration duration = Duration.between(youtubeRefDateTime, currentDateTime);
		
		if(duration.between(youtubeRefDateTime, currentDateTime).getSeconds() >= 600) {
			int remoteVideoNum = youtubeService.getRemoteYoutubeVideosNum();
			// 현재 DB에 들어있는 동영상 갯수와 Remote서버에 있는 동영상 개수가 같다면 패스,
			// 같지 않다면 리모트 서버에서 동영상 불러오기
		}
		
		Integer start = Integer.parseInt(request.getParameter("start"));
		Integer bound = Integer.parseInt(request.getParameter("bound"));

		return youtubeService.getYoutubeList(start, bound).toString();
	}
}
