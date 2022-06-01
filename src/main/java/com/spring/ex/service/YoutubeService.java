package com.spring.ex.service;

import java.util.HashMap;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Repository;


@Repository 
public interface YoutubeService {
	public int getRemoteYoutubeVideosNum();
	public JSONArray getYoutubeList(Integer start, Integer bound);
	public void updateYoutubeList(HashMap<String,String> hashMap);
}
