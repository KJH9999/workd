package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;


@Repository 
public interface YoutubeService {
	public String getYoutubeList(Integer start, Integer bound);
	public void updateYoutubeList(HashMap<String,String> hashMap);
}
