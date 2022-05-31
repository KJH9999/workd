package com.spring.ex.service;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.YoutubeDAO;
import com.spring.ex.dto.YoutubeDTO;

@Service
public class YoutubeServiceImp implements YoutubeService{

	@Inject
	YoutubeDAO youtubeDAO;
	
	@Override
	public String getYoutubeList(Integer start, Integer bound) {
		JSONArray jsonArray = new JSONArray();
		List<YoutubeDTO> youtubeList = youtubeDAO.youtubeList(start, bound);
		
		for(YoutubeDTO youtubeInfo : youtubeList) {
			HashMap<String, String> saveYoutubeInfo = new HashMap<String, String>();
			
			saveYoutubeInfo.put("title", youtubeInfo.getTitle());
			saveYoutubeInfo.put("videoUrl", youtubeInfo.getVideoUrl());
			saveYoutubeInfo.put("thumnailUrl", youtubeInfo.getThumnailUrl());
			saveYoutubeInfo.put("description", youtubeInfo.getDescription());
			saveYoutubeInfo.put("publishedAt", youtubeInfo.getPublishedAt());
			jsonArray.add(saveYoutubeInfo);
		}
		
		return jsonArray.toString();
	}
	
	public void updateYoutubeList(HashMap<String,String> hashMap) {}
}
