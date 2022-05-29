package com.spring.ex.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.ex.dto.BoardDTO;
import com.spring.ex.service.BoardService;

@Controller
public class BoardController {
	@Inject
	BoardService boardService;
	 
	@RequestMapping("board")
	public String board(HttpServletRequest request, Model model) {
		System.out.println("board()");
		List<BoardDTO> boardlist = boardService.boardList();
		model.addAttribute("request", request);
		model.addAttribute("boardlist", boardlist);
		
		return "board";
	}

	@RequestMapping("writeview")
	public String board(Model model) {
		System.out.println("write_board()");
		return "writeview";
	}
	
	@RequestMapping("writeOk")
	public String joinOk(HttpServletRequest request, Model model) {
		System.out.println("writeOk");
		model.addAttribute("request", request);
		boardService.insertBoard(model);
		return "board";
	}
	
	@RequestMapping(value = "contentView.do", method=RequestMethod.GET)
	public String contentview(@RequestParam int idx, Model model) {
		System.out.println("contentView");
		System.out.println("C :" + idx);
		//��ȸ��
		boardService.increaseViewcnt(idx);

		List<BoardDTO> boardlist = boardService.read(idx);
		model.addAttribute("boardlist", boardlist);
		model.addAttribute("requset", idx);
		
		return "model";
	}
	
	//���� ������ �� �۸� ���� �����ϵ��� ���濹�� (�����ڸ��밡��)
	@RequestMapping("delete.do")
	public String delete(@RequestParam int idx) {
		System.out.println("delete");
		boardService.delete(idx);
		return "home";
	}
	
	
	//������� �����
}
