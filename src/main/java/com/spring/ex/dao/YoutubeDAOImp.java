package com.spring.ex.dao;

import java.util.List;
import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.dto.YoutubeDTO;

@Repository
public class YoutubeDAOImp implements YoutubeDAO {

	@Inject
	SqlSession sqlSession;

	@Override
	public List<YoutubeDTO> youtubeList(Integer start, Integer bound) {
		HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
		
		hashMap.put("start", start);
		hashMap.put("bound", bound);
		return sqlSession.selectList("youtube.selectYoutubeList", hashMap);
	}
	
	@Override
	public void insertYoutubeList(HashMap<String, String> hashMap) {
		sqlSession.insert("youtube.insertYoutubeList", hashMap);
	}
}
