package com.spring.ex.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.YoutubeDAO;
import com.spring.ex.dto.YoutubeDTO;

@Service
public class YoutubeServiceImp implements YoutubeService{

	@Inject
	YoutubeDAO youtubeDAO;
	
	@Override
	public void getYoutubeListByJson() {}
	public void updateYoutubeList(HashMap<String,String> hashMap) {}
}
