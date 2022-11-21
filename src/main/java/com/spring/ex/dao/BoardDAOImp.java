package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.BoardDTO;

@Repository
public class BoardDAOImp implements BoardDAO{

	@Inject
	SqlSession sqlSession;

	@Override
	public void insertBoard(String email, String title, String content, String hit) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("title", title);
		map.put("content", content);
		map.put("hit", hit);

		System.out.println("DAO" + email + title + content + hit);

		sqlSession.insert("board.insertBoard", map);
	}

	@Override
	public List<BoardDTO> boardlist() {
		return sqlSession.selectList("board.boardlist");
	}

	@Override
	public void increaseHit(int idx) {
		sqlSession.update("board.increaseView",idx);
	}

	@Override
	public List<BoardDTO> read(int idx) {
		System.out.println(idx);
		System.out.println(sqlSession.selectList("board.read", idx));
		return sqlSession.selectList("board.read", idx);
	}

	@Override
	public void delete(int idx) {
		sqlSession.delete("board.delete", idx);
	}

	@Override
	public List<BoardDTO> findboard(String email) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		return sqlSession.selectList("board.myboardlist",map);
	}

	@Override
	public void delete(String idx) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("idx", idx);
		sqlSession.delete("board.delete", idx);
		
	}

	@Override
	public void modifyBoard(String idx,String title, String content) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("idx", idx);
		map.put("title", title);
		map.put("content", content);
		sqlSession.update("board.modify", map);
	}

	@Override
	public int count() {
		return sqlSession.selectOne("board.count");
	}

	@Override
	public List<BoardDTO> listPage(int displayPost, int postNum) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		  
		map.put("displayPost", displayPost);
		map.put("postNum", postNum);
		  
		 return sqlSession.selectList("board.listPage", map);
	}

	@Override
	public List<BoardDTO> search(String title) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("title", title);
		
		return sqlSession.selectList("board.search", map);
	}


}
