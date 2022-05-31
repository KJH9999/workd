package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.dto.YoutubeDTO;

@Repository
public interface YoutubeDAO {
	public List<YoutubeDTO> youtubeList(Integer start);
	public void insertYoutubeList(HashMap<String, String> hashMap);
}
