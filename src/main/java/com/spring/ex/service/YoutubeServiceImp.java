package com.spring.ex.service;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import java.util.HashMap;

import javax.inject.Inject;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.YoutubeDAO;
import com.spring.ex.dto.YoutubeDTO;

@Service
public class YoutubeServiceImp implements YoutubeService{

	@Inject
	YoutubeDAO youtubeDAO;
	
	private Integer remoteYoutubeVideoNum = null;
	private String youtubeApiKey = "AIzaSyDFqBSxfLDX7azMUmORrhMjFQlBg-9cXcI";
	
	@Override
	public int getRemoteYoutubeVideosNum() {
		String baseUrl = "https://www.googleapis.com/youtube/v3/search";
		String getVideosNumberByArgs = "?key=" + youtubeApiKey + "&part=snippet&channelId=UC3hRpIQ4x5niJDwjajQSVPg&maxResults=";
		String getVideosNumber = baseUrl + getVideosNumberByArgs + "0";
		try {
			URL url = new URL(getVideosNumber);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			conn.connect();

			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;
			StringBuffer content = new StringBuffer();
			while ((inputLine = in.readLine()) != null) {
				content.append(inputLine);
				System.out.println(content);
			}
			in.close();
			
			String jsonString = content.toString();
			Pattern pattern = Pattern.compile("\"totalResults\": ([^d$,]+)");
			Matcher matcher = pattern.matcher(jsonString);
			if (matcher.find()) {
				remoteYoutubeVideoNum = Integer.parseInt(matcher.group(1));
			} else {
				remoteYoutubeVideoNum = 0;
			}
		} catch (IOException e) {
			e.printStackTrace();
		};
		return remoteYoutubeVideoNum;
	}
	@Override
	public JSONArray getYoutubeList(Integer start, Integer bound) {
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
		
		return jsonArray;
	}
	@Override
	public void updateYoutubeList(HashMap<String,String> hashMap) {}
}
