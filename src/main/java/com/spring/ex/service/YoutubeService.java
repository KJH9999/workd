package com.spring.ex.service;

import java.util.List;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Repository;


@Repository 
public interface YoutubeService {
	public int getRemoteYoutubeVideosNum();
	public int getOriginYoutubeVideosNum();
	public void getRemoteAndSaveYoutubeList(int videoNum);
	public JSONArray getYoutubeList(Integer start, Integer bound);
}
