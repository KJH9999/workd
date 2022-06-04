package com.spring.ex.service;

import java.util.List;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Repository;


@Repository 
public interface YoutubeService {
	public String getLocalDateTimeToUTCString(String localDateTime);
	public String getUTCToLocalDateTimeString(String UTC);
	public void saveRemoteYoutebeList();
	public JSONArray getYoutubeList(Integer start, Integer bound);
}
