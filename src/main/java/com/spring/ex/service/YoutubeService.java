package com.spring.ex.service;

import java.util.HashMap;

import org.springframework.stereotype.Repository;


@Repository 
public interface YoutubeService {
	public void getYoutubeListByJson();
	public void updateYoutubeList(HashMap<String,String> hashMap);
}
